# Knievel::VersionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knievel** | **String** |  |  |
| **schema** | **String** |  |  |
| **git_sha** | **String** |  |  |
| **build_timestamp** | **String** |  |  |
| **auth** | [**AuthBlock**](AuthBlock.md) |  |  |

## Example

```ruby
require 'knievel'

instance = Knievel::VersionResponse.new(
  knievel: null,
  schema: null,
  git_sha: null,
  build_timestamp: null,
  auth: null
)
```

