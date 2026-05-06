# frozen_string_literal: true

require "knievel"

module Knievel
  module Resources
    # Base class for hand-written list-endpoint wrappers that
    # turn a paginated `list_*` API method into an `Enumerable`.
    #
    # Subclasses declare `list_method` (the snake_case method
    # on the generated `*Api` class) and `api_class` (the
    # generated class itself); this base handles the cursor
    # walk and limit defaulting.
    #
    # See `REQUIREMENTS.md` § 8 item 3 ("idiomatic Ruby use
    # including each, each_page, lazy, first(n), and
    # short-circuiting iteration — all without the caller
    # writing pagination loops") and `API.md` § "Pagination"
    # (limit defaults 50, max 500; cursor is opaque, only
    # valid for the endpoint that minted it).
    #
    # The default `each_page` walks the maximum 500-row page
    # size to minimize HTTP round-trips. Callers that want
    # smaller pages (e.g. low-latency progress reporting) can
    # override via `page_size:` on the subclass constructor.
    class Base
      include Enumerable

      # Server cap. Larger values fail with `400 invalid_limit`.
      MAX_PAGE_SIZE = 500

      # Subclasses override:
      #   def list_method = :list_<resource>
      #   def api_class   = Knievel::<Resource>Api
      def list_method
        raise NotImplementedError
      end

      def api_class
        raise NotImplementedError
      end

      # `api_client` is a `Knievel::ApiClient` (the generated
      # transport, holds the base URL + auth). `project_id` is
      # the path scope. `**filters` are forwarded to the
      # generated `list_*` method as `opts` — once the server
      # implements query-param filtering (e.g. `external_id=`)
      # those keys flow through unchanged.
      def initialize(api_client, project_id, page_size: MAX_PAGE_SIZE, **filters)
        if page_size < 1 || page_size > MAX_PAGE_SIZE
          raise ArgumentError, "page_size must be between 1 and #{MAX_PAGE_SIZE}"
        end
        @api_client = api_client
        @project_id = project_id
        @page_size = page_size
        @filters = filters
      end

      # `Enumerable` plumbing — yields rows one at a time
      # across the entire cursor walk. Returns an `Enumerator`
      # when called without a block (so `lazy`, `first(n)`,
      # `take_while`, etc. work).
      def each(&block)
        return enum_for(:each) unless block_given?

        each_page do |page_items|
          page_items.each(&block)
        end
      end

      # Yields one array per page. Useful for batch-style
      # processing where per-row work has setup overhead worth
      # amortizing. Returns an `Enumerator` without a block.
      def each_page
        return enum_for(:each_page) unless block_given?

        cursor = nil
        api = api_class.new(@api_client)
        loop do
          opts = @filters.merge(limit: @page_size)
          opts[:cursor] = cursor unless cursor.nil?
          response = api.public_send(list_method, @project_id, opts)
          yield response.items
          cursor = response.next_cursor
          break if cursor.nil?
        end
      end
    end
  end
end
