# Knievel::DecisionCreativeTemplatedCreative

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | **String** | The referenced template&#39;s name. | [optional] |
| **values** | **Object** | Echoed so callers can re-render or inspect. |  |
| **body** | **String** | The template&#39;s Liquid source rendered against &#x60;values&#x60; plus the injected decision context (signed URLs, placement id, snapshot version) at decision time. |  |
| **click_through_url** | **String** |  | [optional] |
| **type** | **String** |  |  |

## Example

```ruby
require 'knievel'

instance = Knievel::DecisionCreativeTemplatedCreative.new(
  template: null,
  values: null,
  body: null,
  click_through_url: null,
  type: templated
)
```

