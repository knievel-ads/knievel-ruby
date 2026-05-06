# Knievel::BatchUpsertSiteRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  |  |
| **channel_id** | **Integer** |  | [optional] |
| **name** | **String** |  |  |
| **url** | **String** |  |  |
| **aliases** | **Array&lt;String&gt;** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::BatchUpsertSiteRow.new(
  external_id: null,
  channel_id: null,
  name: null,
  url: null,
  aliases: null,
  is_active: null
)
```

