# Knievel::BatchUpsertAdRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  |  |
| **flight_id** | **Integer** |  |  |
| **creative_id** | **Integer** |  |  |
| **weight** | **Integer** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::BatchUpsertAdRow.new(
  external_id: null,
  flight_id: null,
  creative_id: null,
  weight: null,
  is_active: null
)
```

