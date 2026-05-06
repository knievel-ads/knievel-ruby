# Knievel::IssuerSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issuer** | **String** |  |  |
| **audience** | **String** |  |  |
| **algorithms** | **Array&lt;String&gt;** |  |  |
| **claim_source** | **String** | &#x60;claim&#x60; (default &#x60;knievel&#x60;) when claims live verbatim in a custom claim; &#x60;claim_mapping(&lt;n&gt;)&#x60; when one or more mapping rules pull standard-claim values into the authz shape. |  |
| **jwks_url** | **String** |  | [optional] |

## Example

```ruby
require 'knievel'

instance = Knievel::IssuerSummary.new(
  issuer: null,
  audience: null,
  algorithms: null,
  claim_source: null,
  jwks_url: null
)
```

