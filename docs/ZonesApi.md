# Knievel::ZonesApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_upsert_zones**](ZonesApi.md#batch_upsert_zones) | **POST** /v1/projects/{project_id}/zones:batchUpsert |  |
| [**create_zone**](ZonesApi.md#create_zone) | **POST** /v1/projects/{project_id}/zones |  |
| [**get_zone**](ZonesApi.md#get_zone) | **GET** /v1/projects/{project_id}/zones/{id} |  |
| [**list_zones**](ZonesApi.md#list_zones) | **GET** /v1/projects/{project_id}/zones |  |
| [**update_zone**](ZonesApi.md#update_zone) | **PATCH** /v1/projects/{project_id}/zones/{id} |  |


## batch_upsert_zones

> <BatchUpsertZonesResult> batch_upsert_zones(project_id, batch_upsert_zones_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::ZonesApi.new
project_id = 'project_id_example' # String | 
batch_upsert_zones_request = Knievel::BatchUpsertZonesRequest.new({items: [Knievel::BatchUpsertZoneRow.new({external_id: 'external_id_example', site_id: 3.56, name: 'name_example'})]}) # BatchUpsertZonesRequest | 

begin
  
  result = api_instance.batch_upsert_zones(project_id, batch_upsert_zones_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling ZonesApi->batch_upsert_zones: #{e}"
end
```

#### Using the batch_upsert_zones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchUpsertZonesResult>, Integer, Hash)> batch_upsert_zones_with_http_info(project_id, batch_upsert_zones_request)

```ruby
begin
  
  data, status_code, headers = api_instance.batch_upsert_zones_with_http_info(project_id, batch_upsert_zones_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchUpsertZonesResult>
rescue Knievel::ApiError => e
  puts "Error when calling ZonesApi->batch_upsert_zones_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **batch_upsert_zones_request** | [**BatchUpsertZonesRequest**](BatchUpsertZonesRequest.md) |  |  |

### Return type

[**BatchUpsertZonesResult**](BatchUpsertZonesResult.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## create_zone

> <Zone> create_zone(project_id, create_zone_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::ZonesApi.new
project_id = 'project_id_example' # String | 
create_zone_request = Knievel::CreateZoneRequest.new({site_id: 3.56, name: 'name_example'}) # CreateZoneRequest | 

begin
  
  result = api_instance.create_zone(project_id, create_zone_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling ZonesApi->create_zone: #{e}"
end
```

#### Using the create_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Zone>, Integer, Hash)> create_zone_with_http_info(project_id, create_zone_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_zone_with_http_info(project_id, create_zone_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Zone>
rescue Knievel::ApiError => e
  puts "Error when calling ZonesApi->create_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_zone_request** | [**CreateZoneRequest**](CreateZoneRequest.md) |  |  |

### Return type

[**Zone**](Zone.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## get_zone

> <Zone> get_zone(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::ZonesApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_zone(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling ZonesApi->get_zone: #{e}"
end
```

#### Using the get_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Zone>, Integer, Hash)> get_zone_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_zone_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Zone>
rescue Knievel::ApiError => e
  puts "Error when calling ZonesApi->get_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Zone**](Zone.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_zones

> <ZoneList> list_zones(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::ZonesApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_zones(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling ZonesApi->list_zones: #{e}"
end
```

#### Using the list_zones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ZoneList>, Integer, Hash)> list_zones_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_zones_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ZoneList>
rescue Knievel::ApiError => e
  puts "Error when calling ZonesApi->list_zones_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**ZoneList**](ZoneList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## update_zone

> <Zone> update_zone(project_id, id, update_zone_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::ZonesApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_zone_request = Knievel::UpdateZoneRequest.new # UpdateZoneRequest | 

begin
  
  result = api_instance.update_zone(project_id, id, update_zone_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling ZonesApi->update_zone: #{e}"
end
```

#### Using the update_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Zone>, Integer, Hash)> update_zone_with_http_info(project_id, id, update_zone_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_zone_with_http_info(project_id, id, update_zone_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Zone>
rescue Knievel::ApiError => e
  puts "Error when calling ZonesApi->update_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **update_zone_request** | [**UpdateZoneRequest**](UpdateZoneRequest.md) |  |  |

### Return type

[**Zone**](Zone.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8

