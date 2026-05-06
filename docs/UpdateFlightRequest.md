# Knievel::UpdateFlightRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **priority_id** | **Integer** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **site_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **zone_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **ad_types** | **Array&lt;Integer&gt;** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::UpdateFlightRequest.new(
  name: null,
  priority_id: null,
  start_date: null,
  end_date: null,
  site_ids: null,
  zone_ids: null,
  ad_types: null,
  is_active: null
)
```

