# Knievel::DefaultApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_upsert_ads**](DefaultApi.md#batch_upsert_ads) | **POST** /v1/projects/{project_id}/ads:batchUpsert |  |
| [**batch_upsert_advertisers**](DefaultApi.md#batch_upsert_advertisers) | **POST** /v1/projects/{project_id}/advertisers:batchUpsert | &#x60;POST /v1/projects/:project_id/advertisers:batchUpsert&#x60; — bulk by &#x60;externalId&#x60;. Single Postgres transaction; per &#x60;API.md&#x60; \&quot;Write contract\&quot; any per-row failure rolls back the whole batch with &#x60;details[]&#x60; listing every offending row. On success: 200 with the upserted rows in input order. |
| [**batch_upsert_campaigns**](DefaultApi.md#batch_upsert_campaigns) | **POST** /v1/projects/{project_id}/campaigns:batchUpsert |  |
| [**batch_upsert_flights**](DefaultApi.md#batch_upsert_flights) | **POST** /v1/projects/{project_id}/flights:batchUpsert |  |
| [**batch_upsert_sites**](DefaultApi.md#batch_upsert_sites) | **POST** /v1/projects/{project_id}/sites:batchUpsert |  |
| [**batch_upsert_zones**](DefaultApi.md#batch_upsert_zones) | **POST** /v1/projects/{project_id}/zones:batchUpsert |  |
| [**create_ad**](DefaultApi.md#create_ad) | **POST** /v1/projects/{project_id}/ads |  |
| [**create_ad_library_item**](DefaultApi.md#create_ad_library_item) | **POST** /v1/orgs/{org_id}/ad-library/items |  |
| [**create_advertiser**](DefaultApi.md#create_advertiser) | **POST** /v1/projects/{project_id}/advertisers |  |
| [**create_campaign**](DefaultApi.md#create_campaign) | **POST** /v1/projects/{project_id}/campaigns |  |
| [**create_creative**](DefaultApi.md#create_creative) | **POST** /v1/projects/{project_id}/creatives |  |
| [**create_creative_template**](DefaultApi.md#create_creative_template) | **POST** /v1/projects/{project_id}/creative-templates |  |
| [**create_flight**](DefaultApi.md#create_flight) | **POST** /v1/projects/{project_id}/flights |  |
| [**create_project**](DefaultApi.md#create_project) | **POST** /v1/orgs/{org_id}/projects | Create a project under an org. Honors &#x60;Idempotency-Key&#x60; (24 h replay window per &#x60;API.md&#x60; \&quot;Idempotency\&quot;); &#x60;409 idempotency_conflict&#x60; if the same key is reused with a different body. Returns &#x60;409 external_id_conflict&#x60; if the &#x60;externalId&#x60; is already taken in this org. |
| [**create_site**](DefaultApi.md#create_site) | **POST** /v1/projects/{project_id}/sites |  |
| [**create_token**](DefaultApi.md#create_token) | **POST** /v1/orgs/{org_id}/tokens | Mint an opaque token. Returns the plaintext secret exactly once. Min role: org-admin. |
| [**create_zone**](DefaultApi.md#create_zone) | **POST** /v1/projects/{project_id}/zones |  |
| [**decisions**](DefaultApi.md#decisions) | **POST** /v1/projects/{project_id}/decisions |  |
| [**decisions_explain**](DefaultApi.md#decisions_explain) | **POST** /v1/projects/{project_id}/decisions:explain |  |
| [**get_ad**](DefaultApi.md#get_ad) | **GET** /v1/projects/{project_id}/ads/{id} |  |
| [**get_ad_library_item**](DefaultApi.md#get_ad_library_item) | **GET** /v1/orgs/{org_id}/ad-library/items/{item_id} |  |
| [**get_ad_type**](DefaultApi.md#get_ad_type) | **GET** /v1/projects/{project_id}/ad-types/{id} |  |
| [**get_advertiser**](DefaultApi.md#get_advertiser) | **GET** /v1/projects/{project_id}/advertisers/{id} |  |
| [**get_campaign**](DefaultApi.md#get_campaign) | **GET** /v1/projects/{project_id}/campaigns/{id} |  |
| [**get_channel**](DefaultApi.md#get_channel) | **GET** /v1/projects/{project_id}/channels/{id} |  |
| [**get_creative**](DefaultApi.md#get_creative) | **GET** /v1/projects/{project_id}/creatives/{id} |  |
| [**get_creative_template**](DefaultApi.md#get_creative_template) | **GET** /v1/projects/{project_id}/creative-templates/{id} |  |
| [**get_flight**](DefaultApi.md#get_flight) | **GET** /v1/projects/{project_id}/flights/{id} |  |
| [**get_priority**](DefaultApi.md#get_priority) | **GET** /v1/projects/{project_id}/priorities/{id} |  |
| [**get_project**](DefaultApi.md#get_project) | **GET** /v1/orgs/{org_id}/projects/{project_id} | Read a single project by id (path). |
| [**get_site**](DefaultApi.md#get_site) | **GET** /v1/projects/{project_id}/sites/{id} |  |
| [**get_zone**](DefaultApi.md#get_zone) | **GET** /v1/projects/{project_id}/zones/{id} |  |
| [**healthz**](DefaultApi.md#healthz) | **GET** /healthz | Liveness — k8s liveness probe key. |
| [**list_ad_library_items**](DefaultApi.md#list_ad_library_items) | **GET** /v1/orgs/{org_id}/ad-library/items |  |
| [**list_ad_types**](DefaultApi.md#list_ad_types) | **GET** /v1/projects/{project_id}/ad-types |  |
| [**list_ads**](DefaultApi.md#list_ads) | **GET** /v1/projects/{project_id}/ads |  |
| [**list_advertisers**](DefaultApi.md#list_advertisers) | **GET** /v1/projects/{project_id}/advertisers |  |
| [**list_campaigns**](DefaultApi.md#list_campaigns) | **GET** /v1/projects/{project_id}/campaigns |  |
| [**list_channels**](DefaultApi.md#list_channels) | **GET** /v1/projects/{project_id}/channels |  |
| [**list_creative_templates**](DefaultApi.md#list_creative_templates) | **GET** /v1/projects/{project_id}/creative-templates |  |
| [**list_creatives**](DefaultApi.md#list_creatives) | **GET** /v1/projects/{project_id}/creatives |  |
| [**list_flights**](DefaultApi.md#list_flights) | **GET** /v1/projects/{project_id}/flights |  |
| [**list_priorities**](DefaultApi.md#list_priorities) | **GET** /v1/projects/{project_id}/priorities |  |
| [**list_sites**](DefaultApi.md#list_sites) | **GET** /v1/projects/{project_id}/sites |  |
| [**list_tokens**](DefaultApi.md#list_tokens) | **GET** /v1/orgs/{org_id}/tokens | List tokens (metadata only; secrets never leave the mint response). Min role: org-admin. |
| [**list_zones**](DefaultApi.md#list_zones) | **GET** /v1/projects/{project_id}/zones |  |
| [**readyz**](DefaultApi.md#readyz) | **GET** /readyz | Readiness — only 200 when knievel can serve. Per &#x60;REQUIREMENTS.md&#x60; § 10.6, the full check has four criteria; today only the DB-reachability one is real. |
| [**revoke_token**](DefaultApi.md#revoke_token) | **DELETE** /v1/orgs/{org_id}/tokens/{token_id} | Revoke a token (soft delete via &#x60;revoked_at&#x60;). The auth path filters revoked rows at the next request. Min role: org-admin. |
| [**update_ad**](DefaultApi.md#update_ad) | **PATCH** /v1/projects/{project_id}/ads/{id} |  |
| [**update_ad_library_item**](DefaultApi.md#update_ad_library_item) | **PATCH** /v1/orgs/{org_id}/ad-library/items/{item_id} |  |
| [**update_advertiser**](DefaultApi.md#update_advertiser) | **PATCH** /v1/projects/{project_id}/advertisers/{id} |  |
| [**update_campaign**](DefaultApi.md#update_campaign) | **PATCH** /v1/projects/{project_id}/campaigns/{id} |  |
| [**update_creative_template**](DefaultApi.md#update_creative_template) | **PATCH** /v1/projects/{project_id}/creative-templates/{id} | PATCH bumps &#x60;version&#x60; whenever the schema field is provided (per &#x60;API.md&#x60; § 3.6 — schema changes are versioned but do not retroactively re-validate existing creatives). |
| [**update_flight**](DefaultApi.md#update_flight) | **PATCH** /v1/projects/{project_id}/flights/{id} |  |
| [**update_site**](DefaultApi.md#update_site) | **PATCH** /v1/projects/{project_id}/sites/{id} |  |
| [**update_zone**](DefaultApi.md#update_zone) | **PATCH** /v1/projects/{project_id}/zones/{id} |  |
| [**upload_creative_image**](DefaultApi.md#upload_creative_image) | **POST** /v1/projects/{project_id}/creatives/{id}/image | Multipart image upload (Phase 3.32). Validates the body against the &#x60;image_upload&#x60; core (size + magic bytes + MIME allow-list), writes through the configured &#x60;ImageStore&#x60;, and updates the creative row&#39;s &#x60;image_url&#x60; in the same transaction. Min role: editor (matches &#x60;createCreative&#x60;). |
| [**upsert_site_by_url**](DefaultApi.md#upsert_site_by_url) | **POST** /v1/projects/{project_id}/sites:upsertByUrl | Natural-key upsert. Returns the existing row (200) when a site with the same URL exists; otherwise creates (201). Per &#x60;API.md&#x60; § 3.7: &#x60;:upsertByUrl&#x60; is the canonical entry point for URL-driven flows. |
| [**version**](DefaultApi.md#version) | **GET** /version | Build metadata + effective auth policy. |


## batch_upsert_ads

> <BatchUpsertAdsResult> batch_upsert_ads(project_id, batch_upsert_ads_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
batch_upsert_ads_request = Knievel::BatchUpsertAdsRequest.new({items: [Knievel::BatchUpsertAdRow.new({external_id: 'external_id_example', flight_id: 3.56, creative_id: 3.56})]}) # BatchUpsertAdsRequest | 

begin
  
  result = api_instance.batch_upsert_ads(project_id, batch_upsert_ads_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->batch_upsert_ads: #{e}"
end
```

#### Using the batch_upsert_ads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchUpsertAdsResult>, Integer, Hash)> batch_upsert_ads_with_http_info(project_id, batch_upsert_ads_request)

```ruby
begin
  
  data, status_code, headers = api_instance.batch_upsert_ads_with_http_info(project_id, batch_upsert_ads_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchUpsertAdsResult>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->batch_upsert_ads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **batch_upsert_ads_request** | [**BatchUpsertAdsRequest**](BatchUpsertAdsRequest.md) |  |  |

### Return type

[**BatchUpsertAdsResult**](BatchUpsertAdsResult.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## batch_upsert_advertisers

> <BatchUpsertAdvertisersResult> batch_upsert_advertisers(project_id, batch_upsert_advertisers_request)

`POST /v1/projects/:project_id/advertisers:batchUpsert` — bulk by `externalId`. Single Postgres transaction; per `API.md` \"Write contract\" any per-row failure rolls back the whole batch with `details[]` listing every offending row. On success: 200 with the upserted rows in input order.

### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
batch_upsert_advertisers_request = Knievel::BatchUpsertAdvertisersRequest.new({items: [Knievel::BatchUpsertAdvertiserRow.new({external_id: 'external_id_example', name: 'name_example'})]}) # BatchUpsertAdvertisersRequest | 

begin
  # `POST /v1/projects/:project_id/advertisers:batchUpsert` — bulk by `externalId`. Single Postgres transaction; per `API.md` \"Write contract\" any per-row failure rolls back the whole batch with `details[]` listing every offending row. On success: 200 with the upserted rows in input order.
  result = api_instance.batch_upsert_advertisers(project_id, batch_upsert_advertisers_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->batch_upsert_advertisers: #{e}"
end
```

#### Using the batch_upsert_advertisers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchUpsertAdvertisersResult>, Integer, Hash)> batch_upsert_advertisers_with_http_info(project_id, batch_upsert_advertisers_request)

```ruby
begin
  # `POST /v1/projects/:project_id/advertisers:batchUpsert` — bulk by `externalId`. Single Postgres transaction; per `API.md` \"Write contract\" any per-row failure rolls back the whole batch with `details[]` listing every offending row. On success: 200 with the upserted rows in input order.
  data, status_code, headers = api_instance.batch_upsert_advertisers_with_http_info(project_id, batch_upsert_advertisers_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchUpsertAdvertisersResult>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->batch_upsert_advertisers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **batch_upsert_advertisers_request** | [**BatchUpsertAdvertisersRequest**](BatchUpsertAdvertisersRequest.md) |  |  |

### Return type

[**BatchUpsertAdvertisersResult**](BatchUpsertAdvertisersResult.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
batch_upsert_campaigns_request = Knievel::BatchUpsertCampaignsRequest.new({items: [Knievel::BatchUpsertCampaignRow.new({external_id: 'external_id_example', advertiser_id: 3.56, name: 'name_example'})]}) # BatchUpsertCampaignsRequest | 

begin
  
  result = api_instance.batch_upsert_campaigns(project_id, batch_upsert_campaigns_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->batch_upsert_campaigns: #{e}"
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
  puts "Error when calling DefaultApi->batch_upsert_campaigns_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
batch_upsert_flights_request = Knievel::BatchUpsertFlightsRequest.new({items: [Knievel::BatchUpsertFlightRow.new({external_id: 'external_id_example', campaign_id: 3.56, name: 'name_example', priority_id: 3.56, ad_types: [3.56]})]}) # BatchUpsertFlightsRequest | 

begin
  
  result = api_instance.batch_upsert_flights(project_id, batch_upsert_flights_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->batch_upsert_flights: #{e}"
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
  puts "Error when calling DefaultApi->batch_upsert_flights_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
batch_upsert_sites_request = Knievel::BatchUpsertSitesRequest.new({items: [Knievel::BatchUpsertSiteRow.new({external_id: 'external_id_example', name: 'name_example', url: 'url_example'})]}) # BatchUpsertSitesRequest | 

begin
  
  result = api_instance.batch_upsert_sites(project_id, batch_upsert_sites_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->batch_upsert_sites: #{e}"
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
  puts "Error when calling DefaultApi->batch_upsert_sites_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
batch_upsert_zones_request = Knievel::BatchUpsertZonesRequest.new({items: [Knievel::BatchUpsertZoneRow.new({external_id: 'external_id_example', site_id: 3.56, name: 'name_example'})]}) # BatchUpsertZonesRequest | 

begin
  
  result = api_instance.batch_upsert_zones(project_id, batch_upsert_zones_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->batch_upsert_zones: #{e}"
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
  puts "Error when calling DefaultApi->batch_upsert_zones_with_http_info: #{e}"
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


## create_ad

> <Ad> create_ad(project_id, create_ad_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
create_ad_request = Knievel::CreateAdRequest.new({flight_id: 3.56, creative_id: 3.56}) # CreateAdRequest | 

begin
  
  result = api_instance.create_ad(project_id, create_ad_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_ad: #{e}"
end
```

#### Using the create_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ad>, Integer, Hash)> create_ad_with_http_info(project_id, create_ad_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_ad_with_http_info(project_id, create_ad_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ad>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_ad_request** | [**CreateAdRequest**](CreateAdRequest.md) |  |  |

### Return type

[**Ad**](Ad.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## create_ad_library_item

> <AdLibraryItem> create_ad_library_item(org_id, create_ad_library_item_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
org_id = 'org_id_example' # String | 
create_ad_library_item_request = Knievel::CreateAdLibraryItemRequest.new({name: 'name_example', kind: 'kind_example'}) # CreateAdLibraryItemRequest | 

begin
  
  result = api_instance.create_ad_library_item(org_id, create_ad_library_item_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_ad_library_item: #{e}"
end
```

#### Using the create_ad_library_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdLibraryItem>, Integer, Hash)> create_ad_library_item_with_http_info(org_id, create_ad_library_item_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_ad_library_item_with_http_info(org_id, create_ad_library_item_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdLibraryItem>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_ad_library_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **create_ad_library_item_request** | [**CreateAdLibraryItemRequest**](CreateAdLibraryItemRequest.md) |  |  |

### Return type

[**AdLibraryItem**](AdLibraryItem.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## create_advertiser

> <Advertiser> create_advertiser(project_id, create_advertiser_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
create_advertiser_request = Knievel::CreateAdvertiserRequest.new({name: 'name_example'}) # CreateAdvertiserRequest | 

begin
  
  result = api_instance.create_advertiser(project_id, create_advertiser_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_advertiser: #{e}"
end
```

#### Using the create_advertiser_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Advertiser>, Integer, Hash)> create_advertiser_with_http_info(project_id, create_advertiser_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_advertiser_with_http_info(project_id, create_advertiser_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Advertiser>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_advertiser_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_advertiser_request** | [**CreateAdvertiserRequest**](CreateAdvertiserRequest.md) |  |  |

### Return type

[**Advertiser**](Advertiser.md)

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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
create_campaign_request = Knievel::CreateCampaignRequest.new({advertiser_id: 3.56, name: 'name_example'}) # CreateCampaignRequest | 

begin
  
  result = api_instance.create_campaign(project_id, create_campaign_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_campaign: #{e}"
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
  puts "Error when calling DefaultApi->create_campaign_with_http_info: #{e}"
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


## create_creative

> <Creative> create_creative(project_id, create_creative_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
create_creative_request = Knievel::CreateCreativeRequest.new({advertiser_id: 3.56, kind: 'kind_example'}) # CreateCreativeRequest | 

begin
  
  result = api_instance.create_creative(project_id, create_creative_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_creative: #{e}"
end
```

#### Using the create_creative_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Creative>, Integer, Hash)> create_creative_with_http_info(project_id, create_creative_request)

```ruby
begin
  
  data, status_code, headers = api_instance.create_creative_with_http_info(project_id, create_creative_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Creative>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_creative_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **create_creative_request** | [**CreateCreativeRequest**](CreateCreativeRequest.md) |  |  |

### Return type

[**Creative**](Creative.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
create_creative_template_request = Knievel::CreateCreativeTemplateRequest.new({name: 'name_example', schema: 3.56}) # CreateCreativeTemplateRequest | 

begin
  
  result = api_instance.create_creative_template(project_id, create_creative_template_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_creative_template: #{e}"
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
  puts "Error when calling DefaultApi->create_creative_template_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
create_flight_request = Knievel::CreateFlightRequest.new({campaign_id: 3.56, name: 'name_example', priority_id: 3.56, ad_types: [3.56]}) # CreateFlightRequest | 

begin
  
  result = api_instance.create_flight(project_id, create_flight_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_flight: #{e}"
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
  puts "Error when calling DefaultApi->create_flight_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
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
  puts "Error when calling DefaultApi->create_project: #{e}"
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
  puts "Error when calling DefaultApi->create_project_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
create_site_request = Knievel::CreateSiteRequest.new({name: 'name_example', url: 'url_example'}) # CreateSiteRequest | 

begin
  
  result = api_instance.create_site(project_id, create_site_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_site: #{e}"
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
  puts "Error when calling DefaultApi->create_site_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
org_id = 'org_id_example' # String | 
create_token_request = Knievel::CreateTokenRequest.new({name: 'name_example', scope: 'scope_example', role: 'role_example'}) # CreateTokenRequest | 

begin
  # Mint an opaque token. Returns the plaintext secret exactly once. Min role: org-admin.
  result = api_instance.create_token(org_id, create_token_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_token: #{e}"
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
  puts "Error when calling DefaultApi->create_token_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
create_zone_request = Knievel::CreateZoneRequest.new({site_id: 3.56, name: 'name_example'}) # CreateZoneRequest | 

begin
  
  result = api_instance.create_zone(project_id, create_zone_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->create_zone: #{e}"
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
  puts "Error when calling DefaultApi->create_zone_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
decisions_request = Knievel::DecisionsRequest.new({placements: [Knievel::DecisionPlacement.new({id: 'id_example', ad_types: [3.56]})]}) # DecisionsRequest | 

begin
  
  result = api_instance.decisions(project_id, decisions_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->decisions: #{e}"
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
  puts "Error when calling DefaultApi->decisions_with_http_info: #{e}"
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


## decisions_explain

> <ExplainResponse> decisions_explain(project_id, decisions_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
decisions_request = Knievel::DecisionsRequest.new({placements: [Knievel::DecisionPlacement.new({id: 'id_example', ad_types: [3.56]})]}) # DecisionsRequest | 

begin
  
  result = api_instance.decisions_explain(project_id, decisions_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->decisions_explain: #{e}"
end
```

#### Using the decisions_explain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExplainResponse>, Integer, Hash)> decisions_explain_with_http_info(project_id, decisions_request)

```ruby
begin
  
  data, status_code, headers = api_instance.decisions_explain_with_http_info(project_id, decisions_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExplainResponse>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->decisions_explain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **decisions_request** | [**DecisionsRequest**](DecisionsRequest.md) |  |  |

### Return type

[**ExplainResponse**](ExplainResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## get_ad

> <Ad> get_ad(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_ad(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_ad: #{e}"
end
```

#### Using the get_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ad>, Integer, Hash)> get_ad_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_ad_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ad>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Ad**](Ad.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## get_ad_library_item

> <AdLibraryItem> get_ad_library_item(org_id, item_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
org_id = 'org_id_example' # String | 
item_id = 'item_id_example' # String | 

begin
  
  result = api_instance.get_ad_library_item(org_id, item_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_ad_library_item: #{e}"
end
```

#### Using the get_ad_library_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdLibraryItem>, Integer, Hash)> get_ad_library_item_with_http_info(org_id, item_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_ad_library_item_with_http_info(org_id, item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdLibraryItem>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_ad_library_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **item_id** | **String** |  |  |

### Return type

[**AdLibraryItem**](AdLibraryItem.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## get_ad_type

> <AdType> get_ad_type(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_ad_type(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_ad_type: #{e}"
end
```

#### Using the get_ad_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdType>, Integer, Hash)> get_ad_type_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_ad_type_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdType>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_ad_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**AdType**](AdType.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## get_advertiser

> <Advertiser> get_advertiser(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_advertiser(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_advertiser: #{e}"
end
```

#### Using the get_advertiser_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Advertiser>, Integer, Hash)> get_advertiser_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_advertiser_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Advertiser>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_advertiser_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Advertiser**](Advertiser.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_campaign(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_campaign: #{e}"
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
  puts "Error when calling DefaultApi->get_campaign_with_http_info: #{e}"
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


## get_channel

> <Channel> get_channel(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_channel(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_channel: #{e}"
end
```

#### Using the get_channel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Channel>, Integer, Hash)> get_channel_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_channel_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Channel>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Channel**](Channel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## get_creative

> <Creative> get_creative(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_creative(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_creative: #{e}"
end
```

#### Using the get_creative_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Creative>, Integer, Hash)> get_creative_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_creative_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Creative>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_creative_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Creative**](Creative.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_creative_template(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_creative_template: #{e}"
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
  puts "Error when calling DefaultApi->get_creative_template_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_flight(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_flight: #{e}"
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
  puts "Error when calling DefaultApi->get_flight_with_http_info: #{e}"
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


## get_priority

> <Priority> get_priority(project_id, id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_priority(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_priority: #{e}"
end
```

#### Using the get_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Priority>, Integer, Hash)> get_priority_with_http_info(project_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_priority_with_http_info(project_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Priority>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |

### Return type

[**Priority**](Priority.md)

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

api_instance = Knievel::DefaultApi.new
org_id = 'org_id_example' # String | 
project_id = 'project_id_example' # String | 

begin
  # Read a single project by id (path).
  result = api_instance.get_project(org_id, project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_project: #{e}"
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
  puts "Error when calling DefaultApi->get_project_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_site(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_site: #{e}"
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
  puts "Error when calling DefaultApi->get_site_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 

begin
  
  result = api_instance.get_zone(project_id, id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->get_zone: #{e}"
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
  puts "Error when calling DefaultApi->get_zone_with_http_info: #{e}"
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


## healthz

> String healthz

Liveness — k8s liveness probe key.

### Examples

```ruby
require 'time'
require 'knievel'

api_instance = Knievel::DefaultApi.new

begin
  # Liveness — k8s liveness probe key.
  result = api_instance.healthz
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->healthz: #{e}"
end
```

#### Using the healthz_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> healthz_with_http_info

```ruby
begin
  # Liveness — k8s liveness probe key.
  data, status_code, headers = api_instance.healthz_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->healthz_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain; charset=utf-8


## list_ad_library_items

> <AdLibraryItemList> list_ad_library_items(org_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
org_id = 'org_id_example' # String | 

begin
  
  result = api_instance.list_ad_library_items(org_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_ad_library_items: #{e}"
end
```

#### Using the list_ad_library_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdLibraryItemList>, Integer, Hash)> list_ad_library_items_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_ad_library_items_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdLibraryItemList>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_ad_library_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdLibraryItemList**](AdLibraryItemList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_ad_types

> <AdTypeList> list_ad_types(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_ad_types(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_ad_types: #{e}"
end
```

#### Using the list_ad_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdTypeList>, Integer, Hash)> list_ad_types_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_ad_types_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdTypeList>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_ad_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**AdTypeList**](AdTypeList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_ads

> <AdList> list_ads(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_ads(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_ads: #{e}"
end
```

#### Using the list_ads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdList>, Integer, Hash)> list_ads_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_ads_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdList>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_ads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**AdList**](AdList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_advertisers

> <AdvertiserList> list_advertisers(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_advertisers(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_advertisers: #{e}"
end
```

#### Using the list_advertisers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvertiserList>, Integer, Hash)> list_advertisers_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_advertisers_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvertiserList>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_advertisers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**AdvertiserList**](AdvertiserList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_campaigns

> <CampaignList> list_campaigns(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_campaigns(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_campaigns: #{e}"
end
```

#### Using the list_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignList>, Integer, Hash)> list_campaigns_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_campaigns_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignList>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**CampaignList**](CampaignList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_channels

> <ChannelList> list_channels(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_channels(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_channels: #{e}"
end
```

#### Using the list_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChannelList>, Integer, Hash)> list_channels_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_channels_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChannelList>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_channels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**ChannelList**](ChannelList.md)

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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_creative_templates(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_creative_templates: #{e}"
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
  puts "Error when calling DefaultApi->list_creative_templates_with_http_info: #{e}"
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


## list_creatives

> <CreativeList> list_creatives(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_creatives(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_creatives: #{e}"
end
```

#### Using the list_creatives_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreativeList>, Integer, Hash)> list_creatives_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_creatives_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreativeList>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_creatives_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**CreativeList**](CreativeList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_flights

> <FlightList> list_flights(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_flights(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_flights: #{e}"
end
```

#### Using the list_flights_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlightList>, Integer, Hash)> list_flights_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_flights_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlightList>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_flights_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**FlightList**](FlightList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_priorities

> <PriorityList> list_priorities(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_priorities(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_priorities: #{e}"
end
```

#### Using the list_priorities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PriorityList>, Integer, Hash)> list_priorities_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_priorities_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PriorityList>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_priorities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**PriorityList**](PriorityList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8


## list_sites

> <SiteList> list_sites(project_id)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_sites(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_sites: #{e}"
end
```

#### Using the list_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SiteList>, Integer, Hash)> list_sites_with_http_info(project_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_sites_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SiteList>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**SiteList**](SiteList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
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

api_instance = Knievel::DefaultApi.new
org_id = 'org_id_example' # String | 

begin
  # List tokens (metadata only; secrets never leave the mint response). Min role: org-admin.
  result = api_instance.list_tokens(org_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_tokens: #{e}"
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
  puts "Error when calling DefaultApi->list_tokens_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 

begin
  
  result = api_instance.list_zones(project_id)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->list_zones: #{e}"
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
  puts "Error when calling DefaultApi->list_zones_with_http_info: #{e}"
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


## readyz

> String readyz

Readiness — only 200 when knievel can serve. Per `REQUIREMENTS.md` § 10.6, the full check has four criteria; today only the DB-reachability one is real.

### Examples

```ruby
require 'time'
require 'knievel'

api_instance = Knievel::DefaultApi.new

begin
  # Readiness — only 200 when knievel can serve. Per `REQUIREMENTS.md` § 10.6, the full check has four criteria; today only the DB-reachability one is real.
  result = api_instance.readyz
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->readyz: #{e}"
end
```

#### Using the readyz_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> readyz_with_http_info

```ruby
begin
  # Readiness — only 200 when knievel can serve. Per `REQUIREMENTS.md` § 10.6, the full check has four criteria; today only the DB-reachability one is real.
  data, status_code, headers = api_instance.readyz_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->readyz_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain; charset=utf-8


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

api_instance = Knievel::DefaultApi.new
org_id = 'org_id_example' # String | 
token_id = 'token_id_example' # String | 

begin
  # Revoke a token (soft delete via `revoked_at`). The auth path filters revoked rows at the next request. Min role: org-admin.
  api_instance.revoke_token(org_id, token_id)
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->revoke_token: #{e}"
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
  puts "Error when calling DefaultApi->revoke_token_with_http_info: #{e}"
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


## update_ad

> <Ad> update_ad(project_id, id, update_ad_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_ad_request = Knievel::UpdateAdRequest.new # UpdateAdRequest | 

begin
  
  result = api_instance.update_ad(project_id, id, update_ad_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->update_ad: #{e}"
end
```

#### Using the update_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ad>, Integer, Hash)> update_ad_with_http_info(project_id, id, update_ad_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_ad_with_http_info(project_id, id, update_ad_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ad>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->update_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **update_ad_request** | [**UpdateAdRequest**](UpdateAdRequest.md) |  |  |

### Return type

[**Ad**](Ad.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## update_ad_library_item

> <AdLibraryItem> update_ad_library_item(org_id, item_id, update_ad_library_item_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
org_id = 'org_id_example' # String | 
item_id = 'item_id_example' # String | 
update_ad_library_item_request = Knievel::UpdateAdLibraryItemRequest.new # UpdateAdLibraryItemRequest | 

begin
  
  result = api_instance.update_ad_library_item(org_id, item_id, update_ad_library_item_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->update_ad_library_item: #{e}"
end
```

#### Using the update_ad_library_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdLibraryItem>, Integer, Hash)> update_ad_library_item_with_http_info(org_id, item_id, update_ad_library_item_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_ad_library_item_with_http_info(org_id, item_id, update_ad_library_item_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdLibraryItem>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->update_ad_library_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **item_id** | **String** |  |  |
| **update_ad_library_item_request** | [**UpdateAdLibraryItemRequest**](UpdateAdLibraryItemRequest.md) |  |  |

### Return type

[**AdLibraryItem**](AdLibraryItem.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
- **Accept**: application/json; charset=utf-8


## update_advertiser

> <Advertiser> update_advertiser(project_id, id, update_advertiser_request)



### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_advertiser_request = Knievel::UpdateAdvertiserRequest.new # UpdateAdvertiserRequest | 

begin
  
  result = api_instance.update_advertiser(project_id, id, update_advertiser_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->update_advertiser: #{e}"
end
```

#### Using the update_advertiser_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Advertiser>, Integer, Hash)> update_advertiser_with_http_info(project_id, id, update_advertiser_request)

```ruby
begin
  
  data, status_code, headers = api_instance.update_advertiser_with_http_info(project_id, id, update_advertiser_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Advertiser>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->update_advertiser_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **update_advertiser_request** | [**UpdateAdvertiserRequest**](UpdateAdvertiserRequest.md) |  |  |

### Return type

[**Advertiser**](Advertiser.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json; charset=utf-8
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_campaign_request = Knievel::UpdateCampaignRequest.new # UpdateCampaignRequest | 

begin
  
  result = api_instance.update_campaign(project_id, id, update_campaign_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->update_campaign: #{e}"
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
  puts "Error when calling DefaultApi->update_campaign_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_creative_template_request = Knievel::UpdateCreativeTemplateRequest.new # UpdateCreativeTemplateRequest | 

begin
  # PATCH bumps `version` whenever the schema field is provided (per `API.md` § 3.6 — schema changes are versioned but do not retroactively re-validate existing creatives).
  result = api_instance.update_creative_template(project_id, id, update_creative_template_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->update_creative_template: #{e}"
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
  puts "Error when calling DefaultApi->update_creative_template_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_flight_request = Knievel::UpdateFlightRequest.new # UpdateFlightRequest | 

begin
  
  result = api_instance.update_flight(project_id, id, update_flight_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->update_flight: #{e}"
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
  puts "Error when calling DefaultApi->update_flight_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_site_request = Knievel::UpdateSiteRequest.new # UpdateSiteRequest | 

begin
  
  result = api_instance.update_site(project_id, id, update_site_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->update_site: #{e}"
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
  puts "Error when calling DefaultApi->update_site_with_http_info: #{e}"
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
update_zone_request = Knievel::UpdateZoneRequest.new # UpdateZoneRequest | 

begin
  
  result = api_instance.update_zone(project_id, id, update_zone_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->update_zone: #{e}"
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
  puts "Error when calling DefaultApi->update_zone_with_http_info: #{e}"
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


## upload_creative_image

> <Creative> upload_creative_image(project_id, id, file)

Multipart image upload (Phase 3.32). Validates the body against the `image_upload` core (size + magic bytes + MIME allow-list), writes through the configured `ImageStore`, and updates the creative row's `image_url` in the same transaction. Min role: editor (matches `createCreative`).

### Examples

```ruby
require 'time'
require 'knievel'
# setup authorization
Knievel.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
id = 789 # Integer | 
file = File.new('/path/to/some/file') # File | 

begin
  # Multipart image upload (Phase 3.32). Validates the body against the `image_upload` core (size + magic bytes + MIME allow-list), writes through the configured `ImageStore`, and updates the creative row's `image_url` in the same transaction. Min role: editor (matches `createCreative`).
  result = api_instance.upload_creative_image(project_id, id, file)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->upload_creative_image: #{e}"
end
```

#### Using the upload_creative_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Creative>, Integer, Hash)> upload_creative_image_with_http_info(project_id, id, file)

```ruby
begin
  # Multipart image upload (Phase 3.32). Validates the body against the `image_upload` core (size + magic bytes + MIME allow-list), writes through the configured `ImageStore`, and updates the creative row's `image_url` in the same transaction. Min role: editor (matches `createCreative`).
  data, status_code, headers = api_instance.upload_creative_image_with_http_info(project_id, id, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Creative>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->upload_creative_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **file** | **File** |  |  |

### Return type

[**Creative**](Creative.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
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

api_instance = Knievel::DefaultApi.new
project_id = 'project_id_example' # String | 
upsert_site_by_url_request = Knievel::UpsertSiteByUrlRequest.new({url: 'url_example', name: 'name_example'}) # UpsertSiteByUrlRequest | 

begin
  # Natural-key upsert. Returns the existing row (200) when a site with the same URL exists; otherwise creates (201). Per `API.md` § 3.7: `:upsertByUrl` is the canonical entry point for URL-driven flows.
  result = api_instance.upsert_site_by_url(project_id, upsert_site_by_url_request)
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->upsert_site_by_url: #{e}"
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
  puts "Error when calling DefaultApi->upsert_site_by_url_with_http_info: #{e}"
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


## version

> <VersionResponse> version

Build metadata + effective auth policy.

### Examples

```ruby
require 'time'
require 'knievel'

api_instance = Knievel::DefaultApi.new

begin
  # Build metadata + effective auth policy.
  result = api_instance.version
  p result
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->version: #{e}"
end
```

#### Using the version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VersionResponse>, Integer, Hash)> version_with_http_info

```ruby
begin
  # Build metadata + effective auth policy.
  data, status_code, headers = api_instance.version_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VersionResponse>
rescue Knievel::ApiError => e
  puts "Error when calling DefaultApi->version_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**VersionResponse**](VersionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json; charset=utf-8

