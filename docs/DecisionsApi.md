# Knievel::DecisionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**decisions**](DecisionsApi.md#decisions) | **POST** /v1/projects/{project_id}/decisions |  |


## decisions

> <DecisionsResponse> decisions(project_id, decisions_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DecisionsApi.new
project_id = 'project_id_example' # String | 
decisions_request = Knievel::DecisionsRequest.new({placements: [Knievel::DecisionPlacement.new({id: 'id_example', ad_types: [3.56]})]}) # DecisionsRequest | 

begin
  
  result = api_instance.decisions(project_id, decisions_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DecisionsApi->decisions: #{e}"
end
```

#### Using the decisions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DecisionsResponse>, Integer, Hash)> decisions_with_http_info(project_id, decisions_request)

```ruby
begin
  
  data, status_code, headers = api_instance.decisions_with_http_info(project_id, decisions_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DecisionsResponse>
rescue Knievel::ApiError => e
  puts "Error when calling DecisionsApi->decisions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **decisions_request** | [**DecisionsRequest**](DecisionsRequest.md) |  |  |

### Return type

[**DecisionsResponse**](DecisionsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8

