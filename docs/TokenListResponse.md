# Knievel::TokenListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;TokenSummary&gt;**](TokenSummary.md) |  |  |
| **next_cursor** | **String** | Cursor pagination lands when first paginated endpoint genuinely needs it; until then this is always null. | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::TokenListResponse.new(
  items: null,
  next_cursor: null
)
```

