# Knievel::TaxonomyApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ad_type**](TaxonomyApi.md#get_ad_type) | **GET** /v1/projects/{project_id}/ad-types/{id} |  |
| [**get_channel**](TaxonomyApi.md#get_channel) | **GET** /v1/projects/{project_id}/channels/{id} |  |
| [**get_priority**](TaxonomyApi.md#get_priority) | **GET** /v1/projects/{project_id}/priorities/{id} |  |
| [**list_ad_types**](TaxonomyApi.md#list_ad_types) | **GET** /v1/projects/{project_id}/ad-types |  |
| [**list_channels**](TaxonomyApi.md#list_channels) | **GET** /v1/projects/{project_id}/channels |  |
| [**list_priorities**](TaxonomyApi.md#list_priorities) | **GET** /v1/projects/{project_id}/priorities |  |


## get_ad_type

> <AdType> get_ad_type(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::TaxonomyApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_ad_type(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->get_ad_type: #{e}"
end
```

#### Using the get_ad_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdType>, Integer, Hash)> get_ad_type_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_ad_type_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdType>
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->get_ad_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**AdType**](AdType.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## get_channel

> <Channel> get_channel(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::TaxonomyApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_channel(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->get_channel: #{e}"
end
```

#### Using the get_channel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Channel>, Integer, Hash)> get_channel_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_channel_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Channel>
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->get_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Channel**](Channel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## get_priority

> <Priority> get_priority(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::TaxonomyApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_priority(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->get_priority: #{e}"
end
```

#### Using the get_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Priority>, Integer, Hash)> get_priority_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_priority_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Priority>
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->get_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Priority**](Priority.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_ad_types

> <AdTypeList> list_ad_types(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::TaxonomyApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_ad_types(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->list_ad_types: #{e}"
end
```

#### Using the list_ad_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdTypeList>, Integer, Hash)> list_ad_types_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_ad_types_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdTypeList>
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->list_ad_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**AdTypeList**](AdTypeList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_channels

> <ChannelList> list_channels(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::TaxonomyApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_channels(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->list_channels: #{e}"
end
```

#### Using the list_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChannelList>, Integer, Hash)> list_channels_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_channels_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChannelList>
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->list_channels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**ChannelList**](ChannelList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_priorities

> <PriorityList> list_priorities(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::TaxonomyApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_priorities(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->list_priorities: #{e}"
end
```

#### Using the list_priorities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PriorityList>, Integer, Hash)> list_priorities_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_priorities_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PriorityList>
rescue Knievel::ApiError => e
  puts "Error when calling TaxonomyApi->list_priorities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**PriorityList**](PriorityList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8

