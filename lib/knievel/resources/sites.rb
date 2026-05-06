# frozen_string_literal: true

require_relative "base"

module Knievel
  module Resources
    class Sites < Base
      def list_method
        :list_sites
      end

      def api_class
        Knievel::SitesApi
      end
    end
  end
end
