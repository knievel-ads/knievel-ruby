# Knievel::DecisionPlacement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **site_id** | **Integer** |  | [optional] |
| **site_url** | **String** |  | [optional] |
| **site_external_id** | **String** |  | [optional] |
| **zone_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **ad_types** | **Array&lt;Integer&gt;** |  |  |
| **count** | **Integer** |  | [optional] |
| **force** | [**ForceOverride**](ForceOverride.md) |  | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::DecisionPlacement.new(
  id: null,
  site_id: null,
  site_url: null,
  site_external_id: null,
  zone_ids: null,
  ad_types: null,
  count: null,
  force: null
)
```

