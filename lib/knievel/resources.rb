# frozen_string_literal: true

# Hand-written `Enumerable` wrappers over the generated `*Api`
# classes. See `REQUIREMENTS.md` § 8 item 3 and `Knievel::Client`
# for the typical entry point. Each subclass is one paginated
# resource; cursor walks are uniform across all of them via
# `Knievel::Resources::Base`.

require_relative "resources/base"
require_relative "resources/advertisers"
require_relative "resources/campaigns"
require_relative "resources/flights"
require_relative "resources/ads"
require_relative "resources/creatives"
require_relative "resources/creative_templates"
require_relative "resources/sites"
require_relative "resources/zones"
