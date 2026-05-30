# Knievel::DecisionAd

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **Integer** |  |  |
| **creative_id** | **Integer** |  |  |
| **flight_id** | **Integer** |  |  |
| **campaign_id** | **Integer** |  |  |
| **advertiser_id** | **Integer** |  |  |
| **priority_id** | **Integer** |  |  |
| **site_id** | **Integer** |  |  |
| **click_url** | **String** |  |  |
| **impression_url** | **String** |  |  |
| **creative** | [**DecisionCreative**](DecisionCreative.md) | The selected ad&#39;s creative, typed by &#x60;kind&#x60; (&#x60;API.md&#x60; § 1 &#x60;oneOf&#x60;). &#x60;null&#x60; when the ad has no creative attached or the snapshot hasn&#39;t loaded it yet. For &#x60;templated&#x60; creatives the &#x60;body&#x60; is rendered server-side at decision time; the other kinds carry their stored fields verbatim. | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::DecisionAd.new(
  ad_id: null,
  creative_id: null,
  flight_id: null,
  campaign_id: null,
  advertiser_id: null,
  priority_id: null,
  site_id: null,
  click_url: null,
  impression_url: null,
  creative: null
)
```

