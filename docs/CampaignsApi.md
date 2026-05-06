# Knievel::CampaignsApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_upsert_campaigns**](CampaignsApi.md#batch_upsert_campaigns) | **POST** /v1/projects/{project_id}/campaigns:batchUpsert |  |
| [**create_campaign**](CampaignsApi.md#create_campaign) | **POST** /v1/projects/{project_id}/campaigns |  |
| [**get_campaign**](CampaignsApi.md#get_campaign) | **GET** /v1/projects/{project_id}/campaigns/{id} |  |
| [**list_campaigns**](CampaignsApi.md#list_campaigns) | **GET** /v1/projects/{project_id}/campaigns |  |
| [**update_campaign**](CampaignsApi.md#update_campaign) | **PATCH** /v1/projects/{project_id}/campaigns/{id} |  |


## batch_upsert_campaigns

> <BatchUpsertCampaignsResult> batch_upsert_campaigns(project_id, batch_upsert_campaigns_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CampaignsApi.new
project_id = 'project_id_example' # String | 
batch_upsert_campaigns_request = Knievel::BatchUpsertCampaignsRequest.new({items: [Knievel::BatchUpsertCampaignRow.new({external_id: 'external_id_example', advertiser_id: 3.56, name: 'name_example'})]}) # BatchUpsertCampaignsRequest | 

begin
  
  result = api_instance.batch_upsert_campaigns(project_id, batch_upsert_campaigns_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CampaignsApi->batch_upsert_campaigns: #{e}"
end
```

#### Using the batch_upsert_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchUpsertCampaignsResult>, Integer, Hash)> batch_upsert_campaigns_with_http_info(project_id, batch_upsert_campaigns_request)

```ruby
begin
  
  data, status_code, headers = api_instance.batch_upsert_campaigns_with_http_info(project_id, batch_upsert_campaigns_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchUpsertCampaignsResult>
rescue Knievel::ApiError => e
  puts "Error when calling CampaignsApi->batch_upsert_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **batch_upsert_campaigns_request** | [**BatchUpsertCampaignsRequest**](BatchUpsertCampaignsRequest.md) |  |  |

### Return type

[**BatchUpsertCampaignsResult**](BatchUpsertCampaignsResult.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## create_campaign

> <Campaign> create_campaign(project_id, create_campaign_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CampaignsApi.new
project_id = 'project_id_example' # String | 
create_campaign_request = Knievel::CreateCampaignRequest.new({advertiser_id: 3.56, name: 'name_example'}) # CreateCampaignRequest | 

begin
  
  result = api_instance.create_campaign(project_id, create_campaign_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CampaignsApi->create_campaign: #{e}"
end
```

#### Using the create_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Campaign>, Integer, Hash)> create_campaign_with_http_info(project_id, create_campaign_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_campaign_with_http_info(project_id, create_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Campaign>
rescue Knievel::ApiError => e
  puts "Error when calling CampaignsApi->create_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_campaign_request** | [**CreateCampaignRequest**](CreateCampaignRequest.md) |  |  |

### Return type

[**Campaign**](Campaign.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## get_campaign

> <Campaign> get_campaign(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CampaignsApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_campaign(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CampaignsApi->get_campaign: #{e}"
end
```

#### Using the get_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Campaign>, Integer, Hash)> get_campaign_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_campaign_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Campaign>
rescue Knievel::ApiError => e
  puts "Error when calling CampaignsApi->get_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Campaign**](Campaign.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_campaigns

> <CampaignList> list_campaigns(project_id, opts)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CampaignsApi.new
project_id = 'project_id_example' # String | 
opts = {
  limit: 789, # Integer | 
  cursor: 'cursor_example' # String | 
}

begin
  
  result = api_instance.list_campaigns(project_id, opts)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CampaignsApi->list_campaigns: #{e}"
end
```

#### Using the list_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignList>, Integer, Hash)> list_campaigns_with_http_info(project_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.list_campaigns_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignList>
rescue Knievel::ApiError => e
  puts "Error when calling CampaignsApi->list_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional] |
| **cursor** | **String** |  | [optional] |

### Return type

[**CampaignList**](CampaignList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## update_campaign

> <Campaign> update_campaign(project_id, id, update_campaign_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::CampaignsApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_campaign_request = Knievel::UpdateCampaignRequest.new # UpdateCampaignRequest | 

begin
  
  result = api_instance.update_campaign(project_id, id, update_campaign_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling CampaignsApi->update_campaign: #{e}"
end
```

#### Using the update_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Campaign>, Integer, Hash)> update_campaign_with_http_info(project_id, id, update_campaign_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_campaign_with_http_info(project_id, id, update_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Campaign>
rescue Knievel::ApiError => e
  puts "Error when calling CampaignsApi->update_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **update_campaign_request** | [**UpdateCampaignRequest**](UpdateCampaignRequest.md) |  |  |

### Return type

[**Campaign**](Campaign.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8

