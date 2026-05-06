# Knievel::BatchUpsertFlightRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  |  |
| **campaign_id** | **Integer** |  |  |
| **name** | **String** |  |  |
| **priority_id** | **Integer** |  |  |
| **start_date** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **site_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **zone_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **ad_types** | **Array&lt;Integer&gt;** |  |  |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::BatchUpsertFlightRow.new(
  external_id: null,
  campaign_id: null,
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

