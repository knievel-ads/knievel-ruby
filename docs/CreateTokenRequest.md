# Knievel::CreateTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **scope** | **String** | \&quot;org\&quot; or \&quot;project\&quot;. |  |
| **project_id** | **String** | Required iff &#x60;scope &#x3D;&#x3D; \&quot;project\&quot;&#x60;. | [optional] |
| **role** | **String** | &#x60;reader&#x60;, &#x60;editor&#x60;, &#x60;admin&#x60;, &#x60;org-admin&#x60;, &#x60;org-owner&#x60;. |  |
| **expires_at** | **String** |  | [optional] |
| **ip_allowlist** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::CreateTokenRequest.new(
  name: null,
  scope: null,
  project_id: null,
  role: null,
  expires_at: null,
  ip_allowlist: null
)
```

