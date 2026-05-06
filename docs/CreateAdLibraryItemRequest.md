# Knievel::CreateAdLibraryItemRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **kind** | **String** |  |  |
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

instance = Knievel::CreateAdLibraryItemRequest.new(
  external_id: null,
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

