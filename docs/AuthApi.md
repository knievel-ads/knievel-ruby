# Knievel::AuthApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**whoami**](AuthApi.md#whoami) | **GET** /v1/whoami |  |


## whoami

> <WhoamiResponse> whoami



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::AuthApi.new

begin
  
  result = api_instance.whoami
  p result
rescue Knievel::ApiError => e
  puts "Error when calling AuthApi->whoami: #{e}"
end
```

#### Using the whoami_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhoamiResponse>, Integer, Hash)> whoami_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.whoami_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhoamiResponse>
rescue Knievel::ApiError => e
  puts "Error when calling AuthApi->whoami_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WhoamiResponse**](WhoamiResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8

