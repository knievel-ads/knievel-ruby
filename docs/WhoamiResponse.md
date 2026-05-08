# Knievel::WhoamiResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | **String** | &#x60;org&#x60; or &#x60;project&#x60;. |  |
| **org_id** | **String** |  |  |
| **project_id** | **String** | Present only when &#x60;scope &#x3D;&#x3D; \&quot;project\&quot;&#x60;. | [optional] |
| **role** | **String** | One of &#x60;org-owner&#x60;, &#x60;org-admin&#x60;, &#x60;admin&#x60;, &#x60;editor&#x60;, &#x60;reader&#x60;. |  |
| **token_type** | **String** | &#x60;opaque&#x60; for &#x60;kvl_*&#x60; bearers; &#x60;jwt&#x60; for OIDC bearers. |  |
| **actor_id** | **String** | Opaque actor identifier; matches &#x60;audit_log.actor&#x60;. |  |

## Example

```ruby
require 'knievel'

instance = Knievel::WhoamiResponse.new(
  scope: null,
  org_id: null,
  project_id: null,
  role: null,
  token_type: null,
  actor_id: null
)
```

