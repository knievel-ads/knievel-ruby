# frozen_string_literal: true

require_relative "base"

module Knievel
  module Resources
    class Advertisers < Base
      def list_method
        :list_advertisers
      end

      def api_class
        Knievel::AdvertisersApi
      end
    end
  end
end
