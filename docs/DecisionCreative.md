# Knievel::DecisionCreative

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **image_url** | **String** |  | [optional] |
| **width** | **Integer** |  | [optional] |
| **height** | **Integer** |  | [optional] |
| **alt** | **String** |  | [optional] |
| **click_through_url** | **String** |  | [optional] |
| **body** | **String** | The template&#39;s Liquid source rendered against &#x60;values&#x60; plus the injected decision context (signed URLs, placement id, snapshot version) at decision time. |  |
| **template** | **String** | The referenced template&#39;s name. | [optional] |
| **values** | **Object** | Echoed so callers can re-render or inspect. |  |

## Example

```ruby
require 'knievel'

instance = Knievel::DecisionCreative.new(
  type: image,
  image_url: null,
  width: null,
  height: null,
  alt: null,
  click_through_url: null,
  body: null,
  template: null,
  values: null
)
```

