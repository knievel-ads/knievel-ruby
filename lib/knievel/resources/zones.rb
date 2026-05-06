# frozen_string_literal: true

require_relative "base"

module Knievel
  module Resources
    class Zones < Base
      def list_method
        :list_zones
      end

      def api_class
        Knievel::ZonesApi
      end
    end
  end
end
