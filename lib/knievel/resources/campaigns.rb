# frozen_string_literal: true

require_relative "base"

module Knievel
  module Resources
    class Campaigns < Base
      def list_method
        :list_campaigns
      end

      def api_class
        Knievel::CampaignsApi
      end
    end
  end
end
