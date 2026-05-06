# Knievel::AdvertisersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_upsert_advertisers**](AdvertisersApi.md#batch_upsert_advertisers) | **POST** /v1/projects/{project_id}/advertisers:batchUpsert | &#x60;POST /v1/projects/:project_id/advertisers:batchUpsert&#x60; — bulk by &#x60;externalId&#x60;. Single Postgres transaction; per &#x60;API.md&#x60; \&quot;Write contract\&quot; any per-row failure rolls back the whole batch with &#x60;details[]&#x60; listing every offending row. On success: 200 with the upserted rows in input order. |
| [**create_advertiser**](AdvertisersApi.md#create_advertiser) | **POST** /v1/projects/{project_id}/advertisers |  |
| [**get_advertiser**](AdvertisersApi.md#get_advertiser) | **GET** /v1/projects/{project_id}/advertisers/{id} |  |
| [**list_advertisers**](AdvertisersApi.md#list_advertisers) | **GET** /v1/projects/{project_id}/advertisers |  |
| [**update_advertiser**](AdvertisersApi.md#update_advertiser) | **PATCH** /v1/projects/{project_id}/advertisers/{id} |  |


## batch_upsert_advertisers

> <BatchUpsertAdvertisersResult> batch_upsert_advertisers(project_id, batch_upsert_advertisers_request)

`POST /v1/projects/:project_id/advertisers:batchUpsert` — bulk by `externalId`. Single Postgres transaction; per `API.md` \"Write contract\" any per-row failure rolls back the whole batch with `details[]` listing every offending row. On success: 200 with the upserted rows in input order.

### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdvertisersApi.new
project_id = 'project_id_example' # String | 
batch_upsert_advertisers_request = Knievel::BatchUpsertAdvertisersRequest.new({items: [Knievel::BatchUpsertAdvertiserRow.new({external_id: 'external_id_example', name: 'name_example'})]}) # BatchUpsertAdvertisersRequest | 

begin
  # `POST /v1/projects/:project_id/advertisers:batchUpsert` — bulk by `externalId`. Single Postgres transaction; per `API.md` \"Write contract\" any per-row failure rolls back the whole batch with `details[]` listing every offending row. On success: 200 with the upserted rows in input order.
  result = api_instance.batch_upsert_advertisers(project_id, batch_upsert_advertisers_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdvertisersApi->batch_upsert_advertisers: #{e}"
end
```

#### Using the batch_upsert_advertisers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchUpsertAdvertisersResult>, Integer, Hash)> batch_upsert_advertisers_with_http_info(project_id, batch_upsert_advertisers_request)

```ruby
begin
  # `POST /v1/projects/:project_id/advertisers:batchUpsert` — bulk by `externalId`. Single Postgres transaction; per `API.md` \"Write contract\" any per-row failure rolls back the whole batch with `details[]` listing every offending row. On success: 200 with the upserted rows in input order.
  data, status_code, headers = api_instance.batch_upsert_advertisers_with_http_info(project_id, batch_upsert_advertisers_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchUpsertAdvertisersResult>
rescue Knievel::ApiError => e
  puts "Error when calling AdvertisersApi->batch_upsert_advertisers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **batch_upsert_advertisers_request** | [**BatchUpsertAdvertisersRequest**](BatchUpsertAdvertisersRequest.md) |  |  |

### Return type

[**BatchUpsertAdvertisersResult**](BatchUpsertAdvertisersResult.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## create_advertiser

> <Advertiser> create_advertiser(project_id, create_advertiser_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdvertisersApi.new
project_id = 'project_id_example' # String | 
create_advertiser_request = Knievel::CreateAdvertiserRequest.new({name: 'name_example'}) # CreateAdvertiserRequest | 

begin
  
  result = api_instance.create_advertiser(project_id, create_advertiser_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdvertisersApi->create_advertiser: #{e}"
end
```

#### Using the create_advertiser_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Advertiser>, Integer, Hash)> create_advertiser_with_http_info(project_id, create_advertiser_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_advertiser_with_http_info(project_id, create_advertiser_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Advertiser>
rescue Knievel::ApiError => e
  puts "Error when calling AdvertisersApi->create_advertiser_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_advertiser_request** | [**CreateAdvertiserRequest**](CreateAdvertiserRequest.md) |  |  |

### Return type

[**Advertiser**](Advertiser.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## get_advertiser

> <Advertiser> get_advertiser(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdvertisersApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_advertiser(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdvertisersApi->get_advertiser: #{e}"
end
```

#### Using the get_advertiser_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Advertiser>, Integer, Hash)> get_advertiser_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_advertiser_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Advertiser>
rescue Knievel::ApiError => e
  puts "Error when calling AdvertisersApi->get_advertiser_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Advertiser**](Advertiser.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_advertisers

> <AdvertiserList> list_advertisers(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdvertisersApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_advertisers(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdvertisersApi->list_advertisers: #{e}"
end
```

#### Using the list_advertisers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvertiserList>, Integer, Hash)> list_advertisers_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_advertisers_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvertiserList>
rescue Knievel::ApiError => e
  puts "Error when calling AdvertisersApi->list_advertisers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**AdvertiserList**](AdvertiserList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## update_advertiser

> <Advertiser> update_advertiser(project_id, id, update_advertiser_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AdvertisersApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_advertiser_request = Knievel::UpdateAdvertiserRequest.new # UpdateAdvertiserRequest | 

begin
  
  result = api_instance.update_advertiser(project_id, id, update_advertiser_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AdvertisersApi->update_advertiser: #{e}"
end
```

#### Using the update_advertiser_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Advertiser>, Integer, Hash)> update_advertiser_with_http_info(project_id, id, update_advertiser_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_advertiser_with_http_info(project_id, id, update_advertiser_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Advertiser>
rescue Knievel::ApiError => e
  puts "Error when calling AdvertisersApi->update_advertiser_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **update_advertiser_request** | [**UpdateAdvertiserRequest**](UpdateAdvertiserRequest.md) |  |  |

### Return type

[**Advertiser**](Advertiser.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8

