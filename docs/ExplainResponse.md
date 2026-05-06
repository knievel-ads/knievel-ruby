# Knievel::ExplainResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_version** | **Integer** |  |  |
| **decisions** | **Hash&lt;String, Array&lt;DecisionAd&gt;&gt;** |  |  |
| **explanation** | [**Hash&lt;String, ExplainPlacement&gt;**](ExplainPlacement.md) |  |  |

## Example

```ruby
require 'knievel'

instance = Knievel::ExplainResponse.new(
  snapshot_version: null,
  decisions: null,
  explanation: null
)
```

