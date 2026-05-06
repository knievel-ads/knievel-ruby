# Knievel::SystemApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**healthz**](SystemApi.md#healthz) | **GET** /healthz | Liveness — k8s liveness probe key. |
| [**readyz**](SystemApi.md#readyz) | **GET** /readyz | Readiness — only 200 when knievel can serve. Per &#x60;REQUIREMENTS.md&#x60; § 10.6, the full check has four criteria; today only the DB-reachability one is real. |
| [**version**](SystemApi.md#version) | **GET** /version | Build metadata + effective auth policy. |


## healthz

> String healthz

Liveness — k8s liveness probe key.

### Examples

```ruby
require 'time'
require 'knievel'

api_instance = Knievel::SystemApi.new

begin
  # Liveness — k8s liveness probe key.
  result = api_instance.healthz
  p result
rescue Knievel::ApiError => e
  puts "Error when calling SystemApi->healthz: #{e}"
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
  puts "Error when calling SystemApi->healthz_with_http_info: #{e}"
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


## readyz

> String readyz

Readiness — only 200 when knievel can serve. Per `REQUIREMENTS.md` § 10.6, the full check has four criteria; today only the DB-reachability one is real.

### Examples

```ruby
require 'time'
require 'knievel'

api_instance = Knievel::SystemApi.new

begin
  # Readiness — only 200 when knievel can serve. Per `REQUIREMENTS.md` § 10.6, the full check has four criteria; today only the DB-reachability one is real.
  result = api_instance.readyz
  p result
rescue Knievel::ApiError => e
  puts "Error when calling SystemApi->readyz: #{e}"
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
  puts "Error when calling SystemApi->readyz_with_http_info: #{e}"
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


## version

> <VersionResponse> version

Build metadata + effective auth policy.

### Examples

```ruby
require 'time'
require 'knievel'

api_instance = Knievel::SystemApi.new

begin
  # Build metadata + effective auth policy.
  result = api_instance.version
  p result
rescue Knievel::ApiError => e
  puts "Error when calling SystemApi->version: #{e}"
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
  puts "Error when calling SystemApi->version_with_http_info: #{e}"
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

