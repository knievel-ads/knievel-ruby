# Knievel::AdLibraryApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ad_library_item**](AdLibraryApi.md#create_ad_library_item) | **POST** /v1/orgs/{org_id}/ad-library/items |  |
| [**get_ad_library_item**](AdLibraryApi.md#get_ad_library_item) | **GET** /v1/orgs/{org_id}/ad-library/items/{item_id} |  |
| [**list_ad_library_items**](AdLibraryApi.md#list_ad_library_items) | **GET** /v1/orgs/{org_id}/ad-library/items |  |
| [**update_ad_library_item**](AdLibraryApi.md#update_ad_library_item) | **PATCH** /v1/orgs/{org_id}/ad-library/items/{item_id} |  |


## create_ad_library_item

> <AdLibraryItem> create_ad_library_item(org_id, create_ad_library_item_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdLibraryApi.new
org_id = 'org_id_example' # String | 
create_ad_library_item_request = Knievel::CreateAdLibraryItemRequest.new({name: 'name_example', kind: 'kind_example'}) # CreateAdLibraryItemRequest | 

begin
  
  result = api_instance.create_ad_library_item(org_id, create_ad_library_item_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdLibraryApi->create_ad_library_item: #{e}"
end
```

#### Using the create_ad_library_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdLibraryItem>, Integer, Hash)> create_ad_library_item_with_http_info(org_id, create_ad_library_item_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_ad_library_item_with_http_info(org_id, create_ad_library_item_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdLibraryItem>
rescue Knievel::ApiError => e
  puts "Error when calling AdLibraryApi->create_ad_library_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **create_ad_library_item_request** | [**CreateAdLibraryItemRequest**](CreateAdLibraryItemRequest.md) |  |  |

### Return type

[**AdLibraryItem**](AdLibraryItem.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## get_ad_library_item

> <AdLibraryItem> get_ad_library_item(org_id, item_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdLibraryApi.new
org_id = 'org_id_example' # String | 
item_id = 'item_id_example' # String | 

begin
  
  result = api_instance.get_ad_library_item(org_id, item_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdLibraryApi->get_ad_library_item: #{e}"
end
```

#### Using the get_ad_library_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdLibraryItem>, Integer, Hash)> get_ad_library_item_with_http_info(org_id, item_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_ad_library_item_with_http_info(org_id, item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdLibraryItem>
rescue Knievel::ApiError => e
  puts "Error when calling AdLibraryApi->get_ad_library_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **item_id** | **String** |  |  |

### Return type

[**AdLibraryItem**](AdLibraryItem.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_ad_library_items

> <AdLibraryItemList> list_ad_library_items(org_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdLibraryApi.new
org_id = 'org_id_example' # String | 

begin
  
  result = api_instance.list_ad_library_items(org_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdLibraryApi->list_ad_library_items: #{e}"
end
```

#### Using the list_ad_library_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdLibraryItemList>, Integer, Hash)> list_ad_library_items_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_ad_library_items_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdLibraryItemList>
rescue Knievel::ApiError => e
  puts "Error when calling AdLibraryApi->list_ad_library_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdLibraryItemList**](AdLibraryItemList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## update_ad_library_item

> <AdLibraryItem> update_ad_library_item(org_id, item_id, update_ad_library_item_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdLibraryApi.new
org_id = 'org_id_example' # String | 
item_id = 'item_id_example' # String | 
update_ad_library_item_request = Knievel::UpdateAdLibraryItemRequest.new # UpdateAdLibraryItemRequest | 

begin
  
  result = api_instance.update_ad_library_item(org_id, item_id, update_ad_library_item_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdLibraryApi->update_ad_library_item: #{e}"
end
```

#### Using the update_ad_library_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdLibraryItem>, Integer, Hash)> update_ad_library_item_with_http_info(org_id, item_id, update_ad_library_item_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_ad_library_item_with_http_info(org_id, item_id, update_ad_library_item_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdLibraryItem>
rescue Knievel::ApiError => e
  puts "Error when calling AdLibraryApi->update_ad_library_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **item_id** | **String** |  |  |
| **update_ad_library_item_request** | [**UpdateAdLibraryItemRequest**](UpdateAdLibraryItemRequest.md) |  |  |

### Return type

[**AdLibraryItem**](AdLibraryItem.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8

