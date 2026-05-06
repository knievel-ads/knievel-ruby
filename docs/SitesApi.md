# Knievel::SitesApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_upsert_sites**](SitesApi.md#batch_upsert_sites) | **POST** /v1/projects/{project_id}/sites:batchUpsert |  |
| [**create_site**](SitesApi.md#create_site) | **POST** /v1/projects/{project_id}/sites |  |
| [**get_site**](SitesApi.md#get_site) | **GET** /v1/projects/{project_id}/sites/{id} |  |
| [**list_sites**](SitesApi.md#list_sites) | **GET** /v1/projects/{project_id}/sites |  |
| [**update_site**](SitesApi.md#update_site) | **PATCH** /v1/projects/{project_id}/sites/{id} |  |
| [**upsert_site_by_url**](SitesApi.md#upsert_site_by_url) | **POST** /v1/projects/{project_id}/sites:upsertByUrl | Natural-key upsert. Returns the existing row (200) when a site with the same URL exists; otherwise creates (201). Per &#x60;API.md&#x60; § 3.7: &#x60;:upsertByUrl&#x60; is the canonical entry point for URL-driven flows. |


## batch_upsert_sites

> <BatchUpsertSitesResult> batch_upsert_sites(project_id, batch_upsert_sites_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::SitesApi.new
project_id = 'project_id_example' # String | 
batch_upsert_sites_request = Knievel::BatchUpsertSitesRequest.new({items: [Knievel::BatchUpsertSiteRow.new({external_id: 'external_id_example', name: 'name_example', url: 'url_example'})]}) # BatchUpsertSitesRequest | 

begin
  
  result = api_instance.batch_upsert_sites(project_id, batch_upsert_sites_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->batch_upsert_sites: #{e}"
end
```

#### Using the batch_upsert_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchUpsertSitesResult>, Integer, Hash)> batch_upsert_sites_with_http_info(project_id, batch_upsert_sites_request)

```ruby
begin
  
  data, status_code, headers = api_instance.batch_upsert_sites_with_http_info(project_id, batch_upsert_sites_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchUpsertSitesResult>
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->batch_upsert_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **batch_upsert_sites_request** | [**BatchUpsertSitesRequest**](BatchUpsertSitesRequest.md) |  |  |

### Return type

[**BatchUpsertSitesResult**](BatchUpsertSitesResult.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## create_site

> <Site> create_site(project_id, create_site_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::SitesApi.new
project_id = 'project_id_example' # String | 
create_site_request = Knievel::CreateSiteRequest.new({name: 'name_example', url: 'url_example'}) # CreateSiteRequest | 

begin
  
  result = api_instance.create_site(project_id, create_site_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->create_site: #{e}"
end
```

#### Using the create_site_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Site>, Integer, Hash)> create_site_with_http_info(project_id, create_site_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_site_with_http_info(project_id, create_site_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Site>
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->create_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_site_request** | [**CreateSiteRequest**](CreateSiteRequest.md) |  |  |

### Return type

[**Site**](Site.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## get_site

> <Site> get_site(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::SitesApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_site(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->get_site: #{e}"
end
```

#### Using the get_site_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Site>, Integer, Hash)> get_site_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_site_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Site>
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->get_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Site**](Site.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_sites

> <SiteList> list_sites(project_id, opts)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::SitesApi.new
project_id = 'project_id_example' # String | 
opts = {
  limit: 789, # Integer | 
  cursor: 'cursor_example' # String | 
}

begin
  
  result = api_instance.list_sites(project_id, opts)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->list_sites: #{e}"
end
```

#### Using the list_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SiteList>, Integer, Hash)> list_sites_with_http_info(project_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.list_sites_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SiteList>
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->list_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional] |
| **cursor** | **String** |  | [optional] |

### Return type

[**SiteList**](SiteList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## update_site

> <Site> update_site(project_id, id, update_site_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::SitesApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_site_request = Knievel::UpdateSiteRequest.new # UpdateSiteRequest | 

begin
  
  result = api_instance.update_site(project_id, id, update_site_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->update_site: #{e}"
end
```

#### Using the update_site_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Site>, Integer, Hash)> update_site_with_http_info(project_id, id, update_site_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_site_with_http_info(project_id, id, update_site_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Site>
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->update_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **update_site_request** | [**UpdateSiteRequest**](UpdateSiteRequest.md) |  |  |

### Return type

[**Site**](Site.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## upsert_site_by_url

> <Site> upsert_site_by_url(project_id, upsert_site_by_url_request)

Natural-key upsert. Returns the existing row (200) when a site with the same URL exists; otherwise creates (201). Per `API.md` § 3.7: `:upsertByUrl` is the canonical entry point for URL-driven flows.

### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::SitesApi.new
project_id = 'project_id_example' # String | 
upsert_site_by_url_request = Knievel::UpsertSiteByUrlRequest.new({url: 'url_example', name: 'name_example'}) # UpsertSiteByUrlRequest | 

begin
  # Natural-key upsert. Returns the existing row (200) when a site with the same URL exists; otherwise creates (201). Per `API.md` § 3.7: `:upsertByUrl` is the canonical entry point for URL-driven flows.
  result = api_instance.upsert_site_by_url(project_id, upsert_site_by_url_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->upsert_site_by_url: #{e}"
end
```

#### Using the upsert_site_by_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Site>, Integer, Hash)> upsert_site_by_url_with_http_info(project_id, upsert_site_by_url_request)

```ruby
begin
  # Natural-key upsert. Returns the existing row (200) when a site with the same URL exists; otherwise creates (201). Per `API.md` § 3.7: `:upsertByUrl` is the canonical entry point for URL-driven flows.
  data, status_code, headers = api_instance.upsert_site_by_url_with_http_info(project_id, upsert_site_by_url_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Site>
rescue Knievel::ApiError => e
  puts "Error when calling SitesApi->upsert_site_by_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **upsert_site_by_url_request** | [**UpsertSiteByUrlRequest**](UpsertSiteByUrlRequest.md) |  |  |

### Return type

[**Site**](Site.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8

