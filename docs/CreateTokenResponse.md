# Knievel::CreateTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **secret** | **String** | Plaintext secret. **Returned exactly once** — knievel stores only the argon2id hash. Lost secrets cannot be recovered. |  |
| **name** | **String** |  |  |
| **scope** | **String** |  |  |
| **role** | **String** |  |  |
| **created_at** | **String** |  |  |

## Example

```ruby
require 'knievel'

instance = Knievel::CreateTokenResponse.new(
  id: null,
  secret: null,
  name: null,
  scope: null,
  role: null,
  created_at: null
)
```

