# Knievel::OrgsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_project**](OrgsApi.md#create_project) | **POST** /v1/orgs/{org_id}/projects | Create a project under an org. Honors &#x60;Idempotency-Key&#x60; (24 h replay window per &#x60;API.md&#x60; \&quot;Idempotency\&quot;); &#x60;409 idempotency_conflict&#x60; if the same key is reused with a different body. Returns &#x60;409 external_id_conflict&#x60; if the &#x60;externalId&#x60; is already taken in this org. |
| [**get_project**](OrgsApi.md#get_project) | **GET** /v1/orgs/{org_id}/projects/{project_id} | Read a single project by id (path). |


## create_project

> <ProjectResponse> create_project(org_id, create_project_request, opts)

Create a project under an org. Honors `Idempotency-Key` (24 h replay window per `API.md` \"Idempotency\"); `409 idempotency_conflict` if the same key is reused with a different body. Returns `409 external_id_conflict` if the `externalId` is already taken in this org.

### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::OrgsApi.new
org_id = 'org_id_example' # String | 
create_project_request = Knievel::CreateProjectRequest.new({name: 'name_example'}) # CreateProjectRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | 
}

begin
  # Create a project under an org. Honors `Idempotency-Key` (24 h replay window per `API.md` \"Idempotency\"); `409 idempotency_conflict` if the same key is reused with a different body. Returns `409 external_id_conflict` if the `externalId` is already taken in this org.
  result = api_instance.create_project(org_id, create_project_request, opts)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling OrgsApi->create_project: #{e}"
end
```

#### Using the create_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectResponse>, Integer, Hash)> create_project_with_http_info(org_id, create_project_request, opts)

```ruby
begin
  # Create a project under an org. Honors `Idempotency-Key` (24 h replay window per `API.md` \"Idempotency\"); `409 idempotency_conflict` if the same key is reused with a different body. Returns `409 external_id_conflict` if the `externalId` is already taken in this org.
  data, status_code, headers = api_instance.create_project_with_http_info(org_id, create_project_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectResponse>
rescue Knievel::ApiError => e
  puts "Error when calling OrgsApi->create_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **create_project_request** | [**CreateProjectRequest**](CreateProjectRequest.md) |  |  |
| **idempotency_key** | **String** |  | [optional] |

### Return type

[**ProjectResponse**](ProjectResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## get_project

> <ProjectResponse> get_project(org_id, project_id)

Read a single project by id (path).

### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::OrgsApi.new
org_id = 'org_id_example' # String | 
project_id = 'project_id_example' # String | 

begin
  # Read a single project by id (path).
  result = api_instance.get_project(org_id, project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling OrgsApi->get_project: #{e}"
end
```

#### Using the get_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectResponse>, Integer, Hash)> get_project_with_http_info(org_id, project_id)

```ruby
begin
  # Read a single project by id (path).
  data, status_code, headers = api_instance.get_project_with_http_info(org_id, project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectResponse>
rescue Knievel::ApiError => e
  puts "Error when calling OrgsApi->get_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **project_id** | **String** |  |  |

### Return type

[**ProjectResponse**](ProjectResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8

