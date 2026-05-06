# Knievel::CreateZoneRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  | [optional] |
| **site_id** | **Integer** |  |  |
| **name** | **String** |  |  |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::CreateZoneRequest.new(
  external_id: null,
  site_id: null,
  name: null,
  is_active: null
)
```

