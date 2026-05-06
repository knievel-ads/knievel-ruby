# frozen_string_literal: true

require_relative "base"

module Knievel
  module Resources
    class Ads < Base
      def list_method
        :list_ads
      end

      def api_class
        Knievel::AdsApi
      end
    end
  end
end
