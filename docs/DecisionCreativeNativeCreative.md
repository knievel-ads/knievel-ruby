# Knievel::DecisionCreativeNativeCreative

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | **String** | The referenced template&#39;s name; the caller renders &#x60;values&#x60; client-side using its own components. | [optional] |
| **values** | **Object** |  |  |
| **click_through_url** | **String** |  | [optional] |
| **type** | **String** |  |  |

## Example

```ruby
require 'knievel'

instance = Knievel::DecisionCreativeNativeCreative.new(
  template: null,
  values: null,
  click_through_url: null,
  type: native
)
```

