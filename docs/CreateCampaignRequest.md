# Knievel::CreateCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  | [optional] |
| **advertiser_id** | **Integer** |  |  |
| **name** | **String** |  |  |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::CreateCampaignRequest.new(
  external_id: null,
  advertiser_id: null,
  name: null,
  is_active: null
)
```

