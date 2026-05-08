# Knievel::OrgsApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_project**](OrgsApi.md#create_project) | **POST** /v1/orgs/{org_id}/projects | Create a project under an org. Honors &#x60;Idempotency-Key&#x60; (24 h replay window per &#x60;API.md&#x60; \&quot;Idempotency\&quot;); &#x60;409 idempotency_conflict&#x60; if the same key is reused with a different body. Returns &#x60;409 external_id_conflict&#x60; if the &#x60;externalId&#x60; is already taken in this org. |
| [**get_org**](OrgsApi.md#get_org) | **GET** /v1/orgs/{org_id} | Org metadata (Phase 7.5). Powers the admin SPA&#39;s org-dashboard breadcrumbs + project-list page header. Multi-org access isn&#39;t a real feature yet; the auth check rejects when the principal&#39;s &#x60;org_id&#x60; doesn&#39;t match the path, so this is effectively \&quot;fetch my org.\&quot; |
| [**get_project**](OrgsApi.md#get_project) | **GET** /v1/orgs/{org_id}/projects/{project_id} | Read a single project by id (path). |
| [**list_projects**](OrgsApi.md#list_projects) | **GET** /v1/orgs/{org_id}/projects | List projects under an org (Phase 7.5). The cursor envelope is wired so the SPA&#39;s pagination plumbing is real, but &#x60;next_cursor&#x60; is always &#x60;null&#x60; today — the &#x60;(created_at, id)&#x60; tuple-cursor that TEXT-id endpoints need is deferred to Phase 6.5 (per CLAUDE.md \&quot;Open known gaps\&quot;). For now an org&#39;s full project set comes back in one page; orgs typically host single-digit project counts, so this is fine. |


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


## get_org

> <OrgResponse> get_org(org_id)

Org metadata (Phase 7.5). Powers the admin SPA's org-dashboard breadcrumbs + project-list page header. Multi-org access isn't a real feature yet; the auth check rejects when the principal's `org_id` doesn't match the path, so this is effectively \"fetch my org.\"

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

begin
  # Org metadata (Phase 7.5). Powers the admin SPA's org-dashboard breadcrumbs + project-list page header. Multi-org access isn't a real feature yet; the auth check rejects when the principal's `org_id` doesn't match the path, so this is effectively \"fetch my org.\"
  result = api_instance.get_org(org_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling OrgsApi->get_org: #{e}"
end
```

#### Using the get_org_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrgResponse>, Integer, Hash)> get_org_with_http_info(org_id)

```ruby
begin
  # Org metadata (Phase 7.5). Powers the admin SPA's org-dashboard breadcrumbs + project-list page header. Multi-org access isn't a real feature yet; the auth check rejects when the principal's `org_id` doesn't match the path, so this is effectively \"fetch my org.\"
  data, status_code, headers = api_instance.get_org_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrgResponse>
rescue Knievel::ApiError => e
  puts "Error when calling OrgsApi->get_org_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**OrgResponse**](OrgResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
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


## list_projects

> <ProjectList> list_projects(org_id, opts)

List projects under an org (Phase 7.5). The cursor envelope is wired so the SPA's pagination plumbing is real, but `next_cursor` is always `null` today — the `(created_at, id)` tuple-cursor that TEXT-id endpoints need is deferred to Phase 6.5 (per CLAUDE.md \"Open known gaps\"). For now an org's full project set comes back in one page; orgs typically host single-digit project counts, so this is fine.

The optional `external_id` query parameter resolves a caller-assigned external id back to the knievel project id (`UNIQUE (org_id, external_id)` makes this at-most-one row). Lets consumers like rx — which only persist the external id at write time — recover the internal id without listing the org's full project set. See `MIGRATION_RX.md` \"Project bootstrap\" and issue #2 § 5.

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
opts = {
  limit: 789, # Integer | 
  external_id: 'external_id_example' # String | 
}

begin
  # List projects under an org (Phase 7.5). The cursor envelope is wired so the SPA's pagination plumbing is real, but `next_cursor` is always `null` today — the `(created_at, id)` tuple-cursor that TEXT-id endpoints need is deferred to Phase 6.5 (per CLAUDE.md \"Open known gaps\"). For now an org's full project set comes back in one page; orgs typically host single-digit project counts, so this is fine.
  result = api_instance.list_projects(org_id, opts)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling OrgsApi->list_projects: #{e}"
end
```

#### Using the list_projects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectList>, Integer, Hash)> list_projects_with_http_info(org_id, opts)

```ruby
begin
  # List projects under an org (Phase 7.5). The cursor envelope is wired so the SPA's pagination plumbing is real, but `next_cursor` is always `null` today — the `(created_at, id)` tuple-cursor that TEXT-id endpoints need is deferred to Phase 6.5 (per CLAUDE.md \"Open known gaps\"). For now an org's full project set comes back in one page; orgs typically host single-digit project counts, so this is fine.
  data, status_code, headers = api_instance.list_projects_with_http_info(org_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectList>
rescue Knievel::ApiError => e
  puts "Error when calling OrgsApi->list_projects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional] |
| **external_id** | **String** |  | [optional] |

### Return type

[**ProjectList**](ProjectList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8

