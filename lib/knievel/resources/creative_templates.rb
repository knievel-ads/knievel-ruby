# frozen_string_literal: true

require_relative "base"

module Knievel
  module Resources
    class CreativeTemplates < Base
      def list_method
        :list_creative_templates
      end

      def api_class
        Knievel::CreativeTemplatesApi
      end
    end
  end
end
