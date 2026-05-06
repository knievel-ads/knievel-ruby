# frozen_string_literal: true

require "uri"
require "knievel"
require_relative "resources"

module Knievel
  # Convenience facade around the generated transport
  # (`Knievel::ApiClient` + `Knievel::Configuration`) and the
  # hand-written `Knievel::Resources::*` wrappers.
  #
  # Typical usage:
  #
  #   client = Knievel::Client.new(
  #     host: "https://api.knievel-ads.example",
  #     access_token: ENV.fetch("KNIEVEL_TOKEN"),
  #   )
  #
  #   client.advertisers("pj_abc").each { |adv| puts adv.name }
  #   client.advertisers("pj_abc").first(10)
  #   client.advertisers("pj_abc").lazy.select(&:is_active).first(20)
  #   client.advertisers("pj_abc").each_page { |page| process(page) }
  #
  # Pass `page_size:` to a resource accessor to override the
  # default 500-row page size:
  #
  #   client.advertisers("pj_abc", page_size: 50).each { ... }
  class Client
    # `host` is the API base URL — accepts either a full URL
    # (`https://api.knievel-ads.example`,
    # `http://localhost:8080`) or a bare hostname. The
    # generated `Configuration#host=` setter strips the scheme
    # silently, so we parse the URL ourselves to keep the
    # scheme/port the caller intended. Falls back to the
    # spec-stamped default (`http://localhost:8080`) when
    # omitted — handy for local dev against compose.
    #
    # `access_token` is the bearer token. The `Configuration`
    # block is a convenience for callers that need to twiddle
    # other settings (timeouts, custom headers, etc.) before
    # the underlying `ApiClient` materializes.
    def initialize(host: nil, access_token: nil)
      @config = Knievel::Configuration.new
      apply_host(host) if host
      @config.access_token = access_token if access_token
      yield @config if block_given?
      @api_client = Knievel::ApiClient.new(@config)
    end

    private def apply_host(host)
      uri = URI.parse(host)
      if uri.scheme && uri.host
        @config.scheme = uri.scheme
        @config.host = uri.port && uri.port != uri.default_port ? "#{uri.host}:#{uri.port}" : uri.host
      else
        # Bare hostname (no scheme). Trust the configured default
        # scheme and let `Configuration#host=` do its sanitization.
        @config.host = host
      end
    end

    public

    # Underlying generated transport. Reach for this when you
    # need the non-paginated endpoints (single `get_*`,
    # `create_*`, `update_*`) — the hand-written wrappers only
    # cover list operations.
    attr_reader :api_client

    def advertisers(project_id, **opts)
      Resources::Advertisers.new(@api_client, project_id, **opts)
    end

    def campaigns(project_id, **opts)
      Resources::Campaigns.new(@api_client, project_id, **opts)
    end

    def flights(project_id, **opts)
      Resources::Flights.new(@api_client, project_id, **opts)
    end

    def ads(project_id, **opts)
      Resources::Ads.new(@api_client, project_id, **opts)
    end

    def creatives(project_id, **opts)
      Resources::Creatives.new(@api_client, project_id, **opts)
    end

    def creative_templates(project_id, **opts)
      Resources::CreativeTemplates.new(@api_client, project_id, **opts)
    end

    def sites(project_id, **opts)
      Resources::Sites.new(@api_client, project_id, **opts)
    end

    def zones(project_id, **opts)
      Resources::Zones.new(@api_client, project_id, **opts)
    end
  end
end
