# Knievel::TokensApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_token**](TokensApi.md#create_token) | **POST** /v1/orgs/{org_id}/tokens | Mint an opaque token. Returns the plaintext secret exactly once. Min role: org-admin. |
| [**list_tokens**](TokensApi.md#list_tokens) | **GET** /v1/orgs/{org_id}/tokens | List tokens (metadata only; secrets never leave the mint response). Min role: org-admin. |
| [**revoke_token**](TokensApi.md#revoke_token) | **DELETE** /v1/orgs/{org_id}/tokens/{token_id} | Revoke a token (soft delete via &#x60;revoked_at&#x60;). The auth path filters revoked rows at the next request. Min role: org-admin. |


## create_token

> <CreateTokenResponse> create_token(org_id, create_token_request)

Mint an opaque token. Returns the plaintext secret exactly once. Min role: org-admin.

### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::TokensApi.new
org_id = 'org_id_example' # String | 
create_token_request = Knievel::CreateTokenRequest.new({name: 'name_example', scope: 'scope_example', role: 'role_example'}) # CreateTokenRequest | 

begin
  # Mint an opaque token. Returns the plaintext secret exactly once. Min role: org-admin.
  result = api_instance.create_token(org_id, create_token_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling TokensApi->create_token: #{e}"
end
```

#### Using the create_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTokenResponse>, Integer, Hash)> create_token_with_http_info(org_id, create_token_request)

```ruby
begin
  # Mint an opaque token. Returns the plaintext secret exactly once. Min role: org-admin.
  data, status_code, headers = api_instance.create_token_with_http_info(org_id, create_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTokenResponse>
rescue Knievel::ApiError => e
  puts "Error when calling TokensApi->create_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **create_token_request** | [**CreateTokenRequest**](CreateTokenRequest.md) |  |  |

### Return type

[**CreateTokenResponse**](CreateTokenResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## list_tokens

> <TokenListResponse> list_tokens(org_id)

List tokens (metadata only; secrets never leave the mint response). Min role: org-admin.

### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::TokensApi.new
org_id = 'org_id_example' # String | 

begin
  # List tokens (metadata only; secrets never leave the mint response). Min role: org-admin.
  result = api_instance.list_tokens(org_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling TokensApi->list_tokens: #{e}"
end
```

#### Using the list_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenListResponse>, Integer, Hash)> list_tokens_with_http_info(org_id)

```ruby
begin
  # List tokens (metadata only; secrets never leave the mint response). Min role: org-admin.
  data, status_code, headers = api_instance.list_tokens_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenListResponse>
rescue Knievel::ApiError => e
  puts "Error when calling TokensApi->list_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**TokenListResponse**](TokenListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## revoke_token

> revoke_token(org_id, token_id)

Revoke a token (soft delete via `revoked_at`). The auth path filters revoked rows at the next request. Min role: org-admin.

### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::TokensApi.new
org_id = 'org_id_example' # String | 
token_id = 'token_id_example' # String | 

begin
  # Revoke a token (soft delete via `revoked_at`). The auth path filters revoked rows at the next request. Min role: org-admin.
  api_instance.revoke_token(org_id, token_id)
rescue Knievel::ApiError => e
  puts "Error when calling TokensApi->revoke_token: #{e}"
end
```

#### Using the revoke_token_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> revoke_token_with_http_info(org_id, token_id)

```ruby
begin
  # Revoke a token (soft delete via `revoked_at`). The auth path filters revoked rows at the next request. Min role: org-admin.
  data, status_code, headers = api_instance.revoke_token_with_http_info(org_id, token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Knievel::ApiError => e
  puts "Error when calling TokensApi->revoke_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **token_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8

