# Knievel::ProjectResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **external_id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **is_active** | **Boolean** |  |  |
| **etag** | **String** |  |  |
| **created_at** | **String** | RFC 3339 UTC, formatted by Postgres via &#x60;to_jsonb&#x60;. |  |
| **updated_at** | **String** |  |  |

## Example

```ruby
require 'knievel'

instance = Knievel::ProjectResponse.new(
  id: null,
  external_id: null,
  name: null,
  is_active: null,
  etag: null,
  created_at: null,
  updated_at: null
)
```

