# Knievel::CreateCreativeTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **schema** | **Object** | Arbitrary JSON Schema document; not parsed by knievel. |  |
| **template** | **String** | Optional renderer source (today: Liquid). When present, &#x60;template_engine&#x60; MUST also be present and equal to &#x60;\&quot;liquid\&quot;&#x60;. Parsed at write time; malformed source returns &#x60;422 / template_parse_error&#x60;. Templates without a source are input-validation-only — only &#x60;native&#x60; creatives can reference them. | [optional] |
| **template_engine** | **String** |  | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::CreateCreativeTemplateRequest.new(
  external_id: null,
  name: null,
  schema: null,
  template: null,
  template_engine: null
)
```

