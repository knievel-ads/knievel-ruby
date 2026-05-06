# frozen_string_literal: true

require "spec_helper"
require "ostruct"
require "knievel/client"

# Exercises the wrapper contract via the Advertisers resource —
# representative of all eight `Knievel::Resources::*` classes
# (they share `Resources::Base`, so per-class divergence is
# only the constants).

RSpec.describe Knievel::Resources::Advertisers do
  let(:api_client) { instance_double(Knievel::ApiClient) }
  let(:api) { instance_double(Knievel::AdvertisersApi) }
  let(:project_id) { "pj_abc" }

  before do
    allow(Knievel::AdvertisersApi).to receive(:new).with(api_client).and_return(api)
  end

  def page(item_ids, next_cursor:)
    items = item_ids.map { |id| OpenStruct.new(id: id, name: "adv-#{id}") }
    OpenStruct.new(items: items, next_cursor: next_cursor)
  end

  describe "#each" do
    it "walks every page and yields rows in order until next_cursor is nil" do
      expect(api).to receive(:list_advertisers)
        .with(project_id, { limit: 500 })
        .and_return(page([1, 2, 3], next_cursor: "c1"))
      expect(api).to receive(:list_advertisers)
        .with(project_id, { limit: 500, cursor: "c1" })
        .and_return(page([4, 5], next_cursor: "c2"))
      expect(api).to receive(:list_advertisers)
        .with(project_id, { limit: 500, cursor: "c2" })
        .and_return(page([6], next_cursor: nil))

      collected = described_class.new(api_client, project_id).map(&:id)
      expect(collected).to eq([1, 2, 3, 4, 5, 6])
    end

    it "honors a non-default page_size on the underlying limit param" do
      expect(api).to receive(:list_advertisers)
        .with(project_id, { limit: 50 })
        .and_return(page([1], next_cursor: nil))

      described_class.new(api_client, project_id, page_size: 50).to_a
    end

    it "passes filter kwargs through to the generated API call" do
      expect(api).to receive(:list_advertisers)
        .with(project_id, { external_id: "acme", limit: 500 })
        .and_return(page([1], next_cursor: nil))

      described_class.new(api_client, project_id, external_id: "acme").to_a
    end

    it "returns an Enumerator without a block" do
      enumerator = described_class.new(api_client, project_id).each
      expect(enumerator).to be_a(Enumerator)
    end
  end

  describe "Enumerable laziness" do
    it "stops fetching pages once `first(n)` is satisfied" do
      expect(api).to receive(:list_advertisers)
        .once
        .with(project_id, { limit: 500 })
        .and_return(page([1, 2, 3], next_cursor: "should-not-be-followed"))

      result = described_class.new(api_client, project_id).lazy.first(2)
      expect(result.map(&:id)).to eq([1, 2])
    end

    it "supports short-circuiting `take_while` over the lazy walk" do
      expect(api).to receive(:list_advertisers)
        .once
        .with(project_id, { limit: 500 })
        .and_return(page([1, 2, 3, 4], next_cursor: "should-not-be-followed"))

      result = described_class.new(api_client, project_id).lazy.take_while { |a| a.id < 3 }.to_a
      expect(result.map(&:id)).to eq([1, 2])
    end
  end

  describe "#each_page" do
    it "yields one array per cursor hop" do
      expect(api).to receive(:list_advertisers)
        .with(project_id, { limit: 500 })
        .and_return(page([1, 2], next_cursor: "c1"))
      expect(api).to receive(:list_advertisers)
        .with(project_id, { limit: 500, cursor: "c1" })
        .and_return(page([3], next_cursor: nil))

      pages = []
      described_class.new(api_client, project_id).each_page { |p| pages << p.map(&:id) }
      expect(pages).to eq([[1, 2], [3]])
    end
  end

  describe "page_size validation" do
    it "rejects page_size < 1" do
      expect {
        described_class.new(api_client, project_id, page_size: 0)
      }.to raise_error(ArgumentError, /between 1 and 500/)
    end

    it "rejects page_size > 500" do
      expect {
        described_class.new(api_client, project_id, page_size: 501)
      }.to raise_error(ArgumentError, /between 1 and 500/)
    end

    it "accepts page_size at the boundary" do
      expect {
        described_class.new(api_client, project_id, page_size: 500)
      }.not_to raise_error
      expect {
        described_class.new(api_client, project_id, page_size: 1)
      }.not_to raise_error
    end
  end
end
