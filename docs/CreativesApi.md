# Knievel::CreativesApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_creative**](CreativesApi.md#create_creative) | **POST** /v1/projects/{project_id}/creatives |  |
| [**get_creative**](CreativesApi.md#get_creative) | **GET** /v1/projects/{project_id}/creatives/{id} |  |
| [**list_creatives**](CreativesApi.md#list_creatives) | **GET** /v1/projects/{project_id}/creatives |  |
| [**upload_creative_image**](CreativesApi.md#upload_creative_image) | **POST** /v1/projects/{project_id}/creatives/{id}/image | Multipart image upload (Phase 3.32). Validates the body against the &#x60;image_upload&#x60; core (size + magic bytes + MIME allow-list), writes through the configured &#x60;ImageStore&#x60;, and updates the creative row&#39;s &#x60;image_url&#x60; in the same transaction. Min role: editor (matches &#x60;createCreative&#x60;). |


## create_creative

> <Creative> create_creative(project_id, create_creative_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CreativesApi.new
project_id = 'project_id_example' # String | 
create_creative_request = Knievel::CreateCreativeRequest.new({advertiser_id: 3.56, kind: 'kind_example'}) # CreateCreativeRequest | 

begin
  
  result = api_instance.create_creative(project_id, create_creative_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CreativesApi->create_creative: #{e}"
end
```

#### Using the create_creative_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Creative>, Integer, Hash)> create_creative_with_http_info(project_id, create_creative_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_creative_with_http_info(project_id, create_creative_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Creative>
rescue Knievel::ApiError => e
  puts "Error when calling CreativesApi->create_creative_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_creative_request** | [**CreateCreativeRequest**](CreateCreativeRequest.md) |  |  |

### Return type

[**Creative**](Creative.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## get_creative

> <Creative> get_creative(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CreativesApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_creative(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CreativesApi->get_creative: #{e}"
end
```

#### Using the get_creative_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Creative>, Integer, Hash)> get_creative_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_creative_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Creative>
rescue Knievel::ApiError => e
  puts "Error when calling CreativesApi->get_creative_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Creative**](Creative.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_creatives

> <CreativeList> list_creatives(project_id, opts)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CreativesApi.new
project_id = 'project_id_example' # String | 
opts = {
  limit: 789, # Integer | 
  cursor: 'cursor_example' # String | 
}

begin
  
  result = api_instance.list_creatives(project_id, opts)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CreativesApi->list_creatives: #{e}"
end
```

#### Using the list_creatives_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreativeList>, Integer, Hash)> list_creatives_with_http_info(project_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.list_creatives_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreativeList>
rescue Knievel::ApiError => e
  puts "Error when calling CreativesApi->list_creatives_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional] |
| **cursor** | **String** |  | [optional] |

### Return type

[**CreativeList**](CreativeList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## upload_creative_image

> <Creative> upload_creative_image(project_id, id, file)

Multipart image upload (Phase 3.32). Validates the body against the `image_upload` core (size + magic bytes + MIME allow-list), writes through the configured `ImageStore`, and updates the creative row's `image_url` in the same transaction. Min role: editor (matches `createCreative`).

### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CreativesApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
file = File.new('/path/to/some/file') # File | 

begin
  # Multipart image upload (Phase 3.32). Validates the body against the `image_upload` core (size + magic bytes + MIME allow-list), writes through the configured `ImageStore`, and updates the creative row's `image_url` in the same transaction. Min role: editor (matches `createCreative`).
  result = api_instance.upload_creative_image(project_id, id, file)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CreativesApi->upload_creative_image: #{e}"
end
```

#### Using the upload_creative_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Creative>, Integer, Hash)> upload_creative_image_with_http_info(project_id, id, file)

```ruby
begin
  # Multipart image upload (Phase 3.32). Validates the body against the `image_upload` core (size + magic bytes + MIME allow-list), writes through the configured `ImageStore`, and updates the creative row's `image_url` in the same transaction. Min role: editor (matches `createCreative`).
  data, status_code, headers = api_instance.upload_creative_image_with_http_info(project_id, id, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Creative>
rescue Knievel::ApiError => e
  puts "Error when calling CreativesApi->upload_creative_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **file** | **File** |  |  |

### Return type

[**Creative**](Creative.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json; charset=utf-8

