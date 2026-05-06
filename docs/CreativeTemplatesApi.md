# Knievel::CreativeTemplatesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_creative_template**](CreativeTemplatesApi.md#create_creative_template) | **POST** /v1/projects/{project_id}/creative-templates |  |
| [**get_creative_template**](CreativeTemplatesApi.md#get_creative_template) | **GET** /v1/projects/{project_id}/creative-templates/{id} |  |
| [**list_creative_templates**](CreativeTemplatesApi.md#list_creative_templates) | **GET** /v1/projects/{project_id}/creative-templates |  |
| [**update_creative_template**](CreativeTemplatesApi.md#update_creative_template) | **PATCH** /v1/projects/{project_id}/creative-templates/{id} | PATCH bumps &#x60;version&#x60; whenever the schema field is provided (per &#x60;API.md&#x60; § 3.6 — schema changes are versioned but do not retroactively re-validate existing creatives). |


## create_creative_template

> <CreativeTemplate> create_creative_template(project_id, create_creative_template_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CreativeTemplatesApi.new
project_id = 'project_id_example' # String | 
create_creative_template_request = Knievel::CreateCreativeTemplateRequest.new({name: 'name_example', schema: 3.56}) # CreateCreativeTemplateRequest | 

begin
  
  result = api_instance.create_creative_template(project_id, create_creative_template_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CreativeTemplatesApi->create_creative_template: #{e}"
end
```

#### Using the create_creative_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreativeTemplate>, Integer, Hash)> create_creative_template_with_http_info(project_id, create_creative_template_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_creative_template_with_http_info(project_id, create_creative_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreativeTemplate>
rescue Knievel::ApiError => e
  puts "Error when calling CreativeTemplatesApi->create_creative_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_creative_template_request** | [**CreateCreativeTemplateRequest**](CreateCreativeTemplateRequest.md) |  |  |

### Return type

[**CreativeTemplate**](CreativeTemplate.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## get_creative_template

> <CreativeTemplate> get_creative_template(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CreativeTemplatesApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_creative_template(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CreativeTemplatesApi->get_creative_template: #{e}"
end
```

#### Using the get_creative_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreativeTemplate>, Integer, Hash)> get_creative_template_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_creative_template_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreativeTemplate>
rescue Knievel::ApiError => e
  puts "Error when calling CreativeTemplatesApi->get_creative_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**CreativeTemplate**](CreativeTemplate.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_creative_templates

> <CreativeTemplateList> list_creative_templates(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CreativeTemplatesApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_creative_templates(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CreativeTemplatesApi->list_creative_templates: #{e}"
end
```

#### Using the list_creative_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreativeTemplateList>, Integer, Hash)> list_creative_templates_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_creative_templates_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreativeTemplateList>
rescue Knievel::ApiError => e
  puts "Error when calling CreativeTemplatesApi->list_creative_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**CreativeTemplateList**](CreativeTemplateList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## update_creative_template

> <CreativeTemplate> update_creative_template(project_id, id, update_creative_template_request)

PATCH bumps `version` whenever the schema field is provided (per `API.md` § 3.6 — schema changes are versioned but do not retroactively re-validate existing creatives).

### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CreativeTemplatesApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_creative_template_request = Knievel::UpdateCreativeTemplateRequest.new # UpdateCreativeTemplateRequest | 

begin
  # PATCH bumps `version` whenever the schema field is provided (per `API.md` § 3.6 — schema changes are versioned but do not retroactively re-validate existing creatives).
  result = api_instance.update_creative_template(project_id, id, update_creative_template_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CreativeTemplatesApi->update_creative_template: #{e}"
end
```

#### Using the update_creative_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreativeTemplate>, Integer, Hash)> update_creative_template_with_http_info(project_id, id, update_creative_template_request)

```ruby
begin
  # PATCH bumps `version` whenever the schema field is provided (per `API.md` § 3.6 — schema changes are versioned but do not retroactively re-validate existing creatives).
  data, status_code, headers = api_instance.update_creative_template_with_http_info(project_id, id, update_creative_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreativeTemplate>
rescue Knievel::ApiError => e
  puts "Error when calling CreativeTemplatesApi->update_creative_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **update_creative_template_request** | [**UpdateCreativeTemplateRequest**](UpdateCreativeTemplateRequest.md) |  |  |

### Return type

[**CreativeTemplate**](CreativeTemplate.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8

