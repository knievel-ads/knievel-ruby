# Knievel::ExplainPlacement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **priority_tier** | **Integer** |  | [optional] |
| **selected_ad_id** | **Integer** |  | [optional] |
| **candidates** | [**Array&lt;ExplainCandidate&gt;**](ExplainCandidate.md) |  |  |

## Example

```ruby
require 'knievel'

instance = Knievel::ExplainPlacement.new(
  priority_tier: null,
  selected_ad_id: null,
  candidates: null
)
```

