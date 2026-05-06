# frozen_string_literal: true

require "spec_helper"
require "ostruct"
require "knievel/client"

RSpec.describe Knievel::Client do
  describe "#initialize" do
    it "splits a full URL into scheme/host on the underlying Configuration" do
      client = described_class.new(host: "https://example.test", access_token: "kvl_xyz")
      expect(client.api_client.config.scheme).to eq("https")
      expect(client.api_client.config.host).to eq("example.test")
      expect(client.api_client.config.access_token).to eq("kvl_xyz")
    end

    it "preserves a non-default port on the host" do
      client = described_class.new(host: "http://localhost:8080")
      expect(client.api_client.config.scheme).to eq("http")
      expect(client.api_client.config.host).to eq("localhost:8080")
    end

    it "accepts a bare hostname (no scheme) and trusts the configured default scheme" do
      client = described_class.new(host: "example.test")
      expect(client.api_client.config.host).to eq("example.test")
    end

    it "yields the configuration block for advanced tweaks" do
      client = described_class.new(host: "https://example.test") do |config|
        config.access_token = "kvl_via_block"
      end
      expect(client.api_client.config.access_token).to eq("kvl_via_block")
    end

    it "leaves the configuration default host alone when host: omitted" do
      default = Knievel::Configuration.new.host
      client = described_class.new(access_token: "kvl_xyz")
      expect(client.api_client.config.host).to eq(default)
    end
  end

  describe "resource accessors" do
    let(:client) { described_class.new(access_token: "kvl_xyz") }

    {
      advertisers: Knievel::Resources::Advertisers,
      campaigns: Knievel::Resources::Campaigns,
      flights: Knievel::Resources::Flights,
      ads: Knievel::Resources::Ads,
      creatives: Knievel::Resources::Creatives,
      creative_templates: Knievel::Resources::CreativeTemplates,
      sites: Knievel::Resources::Sites,
      zones: Knievel::Resources::Zones,
    }.each do |method, klass|
      it "##{method} returns a #{klass.name.split('::').last} bound to the project" do
        resource = client.public_send(method, "pj_abc")
        expect(resource).to be_a(klass)
        expect(resource).to be_a(Enumerable)
      end
    end

    it "forwards page_size + filter kwargs to the resource constructor" do
      resource = client.advertisers("pj_abc", page_size: 25, external_id: "acme")
      # Stub out the api_class so calling #to_a doesn't try real HTTP.
      api = instance_double(Knievel::AdvertisersApi)
      allow(Knievel::AdvertisersApi).to receive(:new).and_return(api)
      expect(api).to receive(:list_advertisers)
        .with("pj_abc", { external_id: "acme", limit: 25 })
        .and_return(OpenStruct.new(items: [], next_cursor: nil))
      resource.to_a
    end
  end
end
