# frozen_string_literal: true

require_relative "base"

module Knievel
  module Resources
    class Creatives < Base
      def list_method
        :list_creatives
      end

      def api_class
        Knievel::CreativesApi
      end
    end
  end
end
