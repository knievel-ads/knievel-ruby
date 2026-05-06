# Knievel::CreateCreativeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  | [optional] |
| **advertiser_id** | **Integer** |  |  |
| **name** | **String** |  | [optional] |
| **kind** | **String** | \&quot;image\&quot;, \&quot;html\&quot;, or \&quot;native\&quot;. |  |
| **image_url** | **String** |  | [optional] |
| **width** | **Integer** |  | [optional] |
| **height** | **Integer** |  | [optional] |
| **alt** | **String** |  | [optional] |
| **body** | **String** |  | [optional] |
| **template_id** | **Integer** |  | [optional] |
| **values** | **Object** |  | [optional] |
| **click_through_url** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::CreateCreativeRequest.new(
  external_id: null,
  advertiser_id: null,
  name: null,
  kind: null,
  image_url: null,
  width: null,
  height: null,
  alt: null,
  body: null,
  template_id: null,
  values: null,
  click_through_url: null,
  is_active: null
)
```

