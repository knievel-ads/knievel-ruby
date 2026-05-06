# Knievel::FlightsApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_upsert_flights**](FlightsApi.md#batch_upsert_flights) | **POST** /v1/projects/{project_id}/flights:batchUpsert |  |
| [**create_flight**](FlightsApi.md#create_flight) | **POST** /v1/projects/{project_id}/flights |  |
| [**get_flight**](FlightsApi.md#get_flight) | **GET** /v1/projects/{project_id}/flights/{id} |  |
| [**list_flights**](FlightsApi.md#list_flights) | **GET** /v1/projects/{project_id}/flights |  |
| [**update_flight**](FlightsApi.md#update_flight) | **PATCH** /v1/projects/{project_id}/flights/{id} |  |


## batch_upsert_flights

> <BatchUpsertFlightsResult> batch_upsert_flights(project_id, batch_upsert_flights_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::FlightsApi.new
project_id = 'project_id_example' # String | 
batch_upsert_flights_request = Knievel::BatchUpsertFlightsRequest.new({items: [Knievel::BatchUpsertFlightRow.new({external_id: 'external_id_example', campaign_id: 3.56, name: 'name_example', priority_id: 3.56, ad_types: [3.56]})]}) # BatchUpsertFlightsRequest | 

begin
  
  result = api_instance.batch_upsert_flights(project_id, batch_upsert_flights_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling FlightsApi->batch_upsert_flights: #{e}"
end
```

#### Using the batch_upsert_flights_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchUpsertFlightsResult>, Integer, Hash)> batch_upsert_flights_with_http_info(project_id, batch_upsert_flights_request)

```ruby
begin
  
  data, status_code, headers = api_instance.batch_upsert_flights_with_http_info(project_id, batch_upsert_flights_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchUpsertFlightsResult>
rescue Knievel::ApiError => e
  puts "Error when calling FlightsApi->batch_upsert_flights_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **batch_upsert_flights_request** | [**BatchUpsertFlightsRequest**](BatchUpsertFlightsRequest.md) |  |  |

### Return type

[**BatchUpsertFlightsResult**](BatchUpsertFlightsResult.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## create_flight

> <Flight> create_flight(project_id, create_flight_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::FlightsApi.new
project_id = 'project_id_example' # String | 
create_flight_request = Knievel::CreateFlightRequest.new({campaign_id: 3.56, name: 'name_example', priority_id: 3.56, ad_types: [3.56]}) # CreateFlightRequest | 

begin
  
  result = api_instance.create_flight(project_id, create_flight_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling FlightsApi->create_flight: #{e}"
end
```

#### Using the create_flight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Flight>, Integer, Hash)> create_flight_with_http_info(project_id, create_flight_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_flight_with_http_info(project_id, create_flight_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Flight>
rescue Knievel::ApiError => e
  puts "Error when calling FlightsApi->create_flight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_flight_request** | [**CreateFlightRequest**](CreateFlightRequest.md) |  |  |

### Return type

[**Flight**](Flight.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## get_flight

> <Flight> get_flight(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::FlightsApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_flight(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling FlightsApi->get_flight: #{e}"
end
```

#### Using the get_flight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Flight>, Integer, Hash)> get_flight_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_flight_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Flight>
rescue Knievel::ApiError => e
  puts "Error when calling FlightsApi->get_flight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Flight**](Flight.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_flights

> <FlightList> list_flights(project_id, opts)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::FlightsApi.new
project_id = 'project_id_example' # String | 
opts = {
  limit: 789, # Integer | 
  cursor: 'cursor_example' # String | 
}

begin
  
  result = api_instance.list_flights(project_id, opts)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling FlightsApi->list_flights: #{e}"
end
```

#### Using the list_flights_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlightList>, Integer, Hash)> list_flights_with_http_info(project_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.list_flights_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlightList>
rescue Knievel::ApiError => e
  puts "Error when calling FlightsApi->list_flights_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional] |
| **cursor** | **String** |  | [optional] |

### Return type

[**FlightList**](FlightList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## update_flight

> <Flight> update_flight(project_id, id, update_flight_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::FlightsApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_flight_request = Knievel::UpdateFlightRequest.new # UpdateFlightRequest | 

begin
  
  result = api_instance.update_flight(project_id, id, update_flight_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling FlightsApi->update_flight: #{e}"
end
```

#### Using the update_flight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Flight>, Integer, Hash)> update_flight_with_http_info(project_id, id, update_flight_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_flight_with_http_info(project_id, id, update_flight_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Flight>
rescue Knievel::ApiError => e
  puts "Error when calling FlightsApi->update_flight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **update_flight_request** | [**UpdateFlightRequest**](UpdateFlightRequest.md) |  |  |

### Return type

[**Flight**](Flight.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8

