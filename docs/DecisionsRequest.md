# Knievel::DecisionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**DecisionContext**](DecisionContext.md) |  | [optional] |
| **placements** | [**Array&lt;DecisionPlacement&gt;**](DecisionPlacement.md) |  |  |
| **block** | [**DecisionBlock**](DecisionBlock.md) |  | [optional] |
| **force_reason** | **String** | Optional reason string captured in audit_log when &#x60;force.*&#x60; is honored (3.19 explainer-side audit pairs with this). | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::DecisionsRequest.new(
  context: null,
  placements: null,
  block: null,
  force_reason: null
)
```

