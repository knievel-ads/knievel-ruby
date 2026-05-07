# frozen_string_literal: true

require_relative "base"
require_relative "upsertable"

module Knievel
  module Resources
    class Advertisers < Base
      include Upsertable

      def list_method
        :list_advertisers
      end

      def api_class
        Knievel::AdvertisersApi
      end

      def batch_upsert_method
        :batch_upsert_advertisers
      end

      def batch_upsert_request_class
        Knievel::BatchUpsertAdvertisersRequest
      end

      def batch_upsert_row_class
        Knievel::BatchUpsertAdvertiserRow
      end
    end
  end
end
