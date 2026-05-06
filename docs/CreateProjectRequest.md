# Knievel::CreateProjectRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | Caller-assigned external id, unique within the org. | [optional] |
| **name** | **String** |  |  |

## Example

```ruby
require 'knievel'

instance = Knievel::CreateProjectRequest.new(
  external_id: null,
  name: null
)
```

