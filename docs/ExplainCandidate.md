# Knievel::ExplainCandidate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **Integer** |  |  |
| **creative_id** | **Integer** |  |  |
| **flight_id** | **Integer** |  |  |
| **campaign_id** | **Integer** |  |  |
| **advertiser_id** | **Integer** |  |  |
| **weight** | **Integer** |  |  |
| **evaluation** | [**Array&lt;ExplainEvaluation&gt;**](ExplainEvaluation.md) |  |  |

## Example

```ruby
require 'knievel'

instance = Knievel::ExplainCandidate.new(
  ad_id: null,
  creative_id: null,
  flight_id: null,
  campaign_id: null,
  advertiser_id: null,
  weight: null,
  evaluation: null
)
```

