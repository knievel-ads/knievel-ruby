# Knievel::AdsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_upsert_ads**](AdsApi.md#batch_upsert_ads) | **POST** /v1/projects/{project_id}/ads:batchUpsert |  |
| [**create_ad**](AdsApi.md#create_ad) | **POST** /v1/projects/{project_id}/ads |  |
| [**get_ad**](AdsApi.md#get_ad) | **GET** /v1/projects/{project_id}/ads/{id} |  |
| [**list_ads**](AdsApi.md#list_ads) | **GET** /v1/projects/{project_id}/ads |  |
| [**update_ad**](AdsApi.md#update_ad) | **PATCH** /v1/projects/{project_id}/ads/{id} |  |


## batch_upsert_ads

> <BatchUpsertAdsResult> batch_upsert_ads(project_id, batch_upsert_ads_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdsApi.new
project_id = 'project_id_example' # String | 
batch_upsert_ads_request = Knievel::BatchUpsertAdsRequest.new({items: [Knievel::BatchUpsertAdRow.new({external_id: 'external_id_example', flight_id: 3.56, creative_id: 3.56})]}) # BatchUpsertAdsRequest | 

begin
  
  result = api_instance.batch_upsert_ads(project_id, batch_upsert_ads_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdsApi->batch_upsert_ads: #{e}"
end
```

#### Using the batch_upsert_ads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchUpsertAdsResult>, Integer, Hash)> batch_upsert_ads_with_http_info(project_id, batch_upsert_ads_request)

```ruby
begin
  
  data, status_code, headers = api_instance.batch_upsert_ads_with_http_info(project_id, batch_upsert_ads_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchUpsertAdsResult>
rescue Knievel::ApiError => e
  puts "Error when calling AdsApi->batch_upsert_ads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **batch_upsert_ads_request** | [**BatchUpsertAdsRequest**](BatchUpsertAdsRequest.md) |  |  |

### Return type

[**BatchUpsertAdsResult**](BatchUpsertAdsResult.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## create_ad

> <Ad> create_ad(project_id, create_ad_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdsApi.new
project_id = 'project_id_example' # String | 
create_ad_request = Knievel::CreateAdRequest.new({flight_id: 3.56, creative_id: 3.56}) # CreateAdRequest | 

begin
  
  result = api_instance.create_ad(project_id, create_ad_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdsApi->create_ad: #{e}"
end
```

#### Using the create_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ad>, Integer, Hash)> create_ad_with_http_info(project_id, create_ad_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_ad_with_http_info(project_id, create_ad_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ad>
rescue Knievel::ApiError => e
  puts "Error when calling AdsApi->create_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_ad_request** | [**CreateAdRequest**](CreateAdRequest.md) |  |  |

### Return type

[**Ad**](Ad.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## get_ad

> <Ad> get_ad(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdsApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_ad(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdsApi->get_ad: #{e}"
end
```

#### Using the get_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ad>, Integer, Hash)> get_ad_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_ad_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ad>
rescue Knievel::ApiError => e
  puts "Error when calling AdsApi->get_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Ad**](Ad.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_ads

> <AdList> list_ads(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdsApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_ads(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdsApi->list_ads: #{e}"
end
```

#### Using the list_ads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdList>, Integer, Hash)> list_ads_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_ads_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdList>
rescue Knievel::ApiError => e
  puts "Error when calling AdsApi->list_ads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**AdList**](AdList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## update_ad

> <Ad> update_ad(project_id, id, update_ad_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdsApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_ad_request = Knievel::UpdateAdRequest.new # UpdateAdRequest | 

begin
  
  result = api_instance.update_ad(project_id, id, update_ad_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdsApi->update_ad: #{e}"
end
```

#### Using the update_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ad>, Integer, Hash)> update_ad_with_http_info(project_id, id, update_ad_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_ad_with_http_info(project_id, id, update_ad_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ad>
rescue Knievel::ApiError => e
  puts "Error when calling AdsApi->update_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **update_ad_request** | [**UpdateAdRequest**](UpdateAdRequest.md) |  |  |

### Return type

[**Ad**](Ad.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8

