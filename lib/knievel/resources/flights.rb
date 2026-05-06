# frozen_string_literal: true

require_relative "base"

module Knievel
  module Resources
    class Flights < Base
      def list_method
        :list_flights
      end

      def api_class
        Knievel::FlightsApi
      end
    end
  end
end
