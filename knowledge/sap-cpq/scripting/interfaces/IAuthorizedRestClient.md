# IAuthorizedRestClient

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/b7434949-d964-2c41-3379-8eefa07d6d01.htm

## Overview

Client for RESTful service communication using Authorization header built with credentials defined in Credentials Management. Returns dynamically deserialized JSON objects.

## Methods

### Get Methods

- `Get(String credentialEntry, String url)` → dynamic
- `Get(String credentialEntry, String url, Boolean throwException)` → dynamic
- `Get(String credentialEntry, String url, IDictionary<String,String> headers)` → dynamic
- `Get(String credentialEntry, String url, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Get(String credentialEntry, String url, IDictionary<String,String> headers, String acceptHeaderValue)` → dynamic
- `Get(String credentialEntry, String url, IDictionary<String,String> headers, String acceptHeaderValue, Boolean throwException)` → dynamic
- `Get(String credentialEntry, String url, IDictionary<String,String> headers, String acceptHeaderValue, Boolean throwException, Boolean validateSSLCertificate)` → dynamic

### Post Methods

- `Post(String credentialEntry, String url)` → dynamic
- `Post(String credentialEntry, String url, Boolean throwException)` → dynamic
- `Post(String credentialEntry, String url, IDictionary<String,Object> requestBody)` → dynamic
- `Post(String credentialEntry, String url, String requestBodyAsString)` → dynamic
- `Post(String credentialEntry, String url, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Post(String credentialEntry, String url, Byte[] fileBytes, IDictionary<String,String> headers, String contentTypeHeaderValue)` → dynamic
- `Post(String credentialEntry, String url, IDictionary<String,Object> requestBody, Boolean throwException)` → dynamic
- `Post(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue)` → dynamic
- `Post(String credentialEntry, String url, IDictionary<String,String> customHeaders, String requestBodyAsString, MultipartFormDataContent multipartContent)` → dynamic
- `Post(String credentialEntry, String url, String requestBodyAsString, Boolean throwException)` → dynamic
- `Post(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue)` → dynamic
- `Post(String credentialEntry, String url, Byte[] fileBytes, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException)` → dynamic
- `Post(String credentialEntry, String url, IDictionary<String,Object> requestBody, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Post(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException)` → dynamic
- `Post(String credentialEntry, String url, IDictionary<String,String> customHeaders, String requestBodyAsString, MultipartFormDataContent multipartContent, Boolean throwException)` → dynamic
- `Post(String credentialEntry, String url, String requestBodyAsString, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Post(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException)` → dynamic
- `Post(String credentialEntry, String url, Byte[] fileBytes, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Post(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Post(String credentialEntry, String url, IDictionary<String,String> customHeaders, String requestBodyAsString, MultipartFormDataContent multipartContent, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Post(String credentialEntry, String url, String requestBodyAsString, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Post(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Post(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue, String contentTypeValue, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Post(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue, String contentTypeValue, Boolean throwException, Boolean validateSSLCertificate, Boolean compressRequestBody)` → dynamic

### Put Methods

- `Put(String credentialEntry, String url)` → dynamic
- `Put(String credentialEntry, String url, Boolean throwException)` → dynamic
- `Put(String credentialEntry, String url, IDictionary<String,String> headers)` → dynamic
- `Put(String credentialEntry, String url, String requestBodyAsString)` → dynamic
- `Put(String credentialEntry, String url, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Put(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue)` → dynamic
- `Put(String credentialEntry, String url, IDictionary<String,String> headers, Boolean throwException)` → dynamic
- `Put(String credentialEntry, String url, String requestBodyAsString, Boolean throwException)` → dynamic
- `Put(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue)` → dynamic
- `Put(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException)` → dynamic
- `Put(String credentialEntry, String url, IDictionary<String,String> headers, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Put(String credentialEntry, String url, String requestBodyAsString, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Put(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException)` → dynamic
- `Put(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Put(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException, Boolean validateSSLCertificate)` → dynamic

### Patch Methods

- `Patch(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue)` → dynamic
- `Patch(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue)` → dynamic
- `Patch(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException)` → dynamic
- `Patch(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException)` → dynamic
- `Patch(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Patch(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException, Boolean validateSSLCertificate)` → dynamic

### Delete Methods

- `Delete(String credentialEntry, String url)` → dynamic
- `Delete(String credentialEntry, String url, Boolean throwException)` → dynamic
- `Delete(String credentialEntry, String url, IDictionary<String,String> headers)` → dynamic
- `Delete(String credentialEntry, String url, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Delete(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue)` → dynamic
- `Delete(String credentialEntry, String url, IDictionary<String,String> headers, Boolean throwException)` → dynamic
- `Delete(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue)` → dynamic
- `Delete(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException)` → dynamic
- `Delete(String credentialEntry, String url, IDictionary<String,String> headers, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Delete(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException)` → dynamic
- `Delete(String credentialEntry, String url, IDictionary<String,Object> requestBody, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException, Boolean validateSSLCertificate)` → dynamic
- `Delete(String credentialEntry, String url, String requestBodyAsString, IDictionary<String,String> headers, String contentTypeHeaderValue, Boolean throwException, Boolean validateSSLCertificate)` → dynamic

### OAuth Token Methods

- `GetClientCredentialsGrantOAuthToken(String credentialEntry, String tokenUrl)` → dynamic
- `GetClientCredentialsGrantOAuthToken(String credentialEntry, String tokenUrl, Boolean encodeRequestParameters)` → dynamic
- `GetClientCredentialsGrantOAuthToken(String credentialEntry, String tokenUrl, Boolean encodeRequestParameters, Boolean validateSSLCertificate)` → dynamic
- `GetClientCredentialsGrantOAuthToken(String credentialEntry, String tokenUrl, IDictionary<String,String> headers, String acceptHeaderValue, Boolean encodeRequestParameters, Boolean validateSSLCertificate)` → dynamic

- `GetPasswordGrantOAuthToken(String credentialEntry, String tokenUrl)` → dynamic
- `GetPasswordGrantOAuthToken(String credentialEntry, String tokenUrl, Boolean encodeRequestParameters)` → dynamic
- `GetPasswordGrantOAuthToken(String credentialEntry, String tokenUrl, String clientCredentialEntry)` → dynamic
- `GetPasswordGrantOAuthToken(String credentialEntry, String tokenUrl, Boolean encodeRequestParameters, Boolean validateSSLCertificate)` → dynamic
- `GetPasswordGrantOAuthToken(String credentialEntry, String tokenUrl, String clientCredentialEntry, Boolean encodeRequestParameters)` → dynamic
- `GetPasswordGrantOAuthToken(String credentialEntry, String tokenUrl, IDictionary<String,String> headers, String acceptHeaderValue, Boolean encodeRequestParameters, Boolean validateSSLCertificate)` → dynamic
- `GetPasswordGrantOAuthToken(String credentialEntry, String tokenUrl, String clientCredentialEntry, Boolean encodeRequestParameters, Boolean validateSSLCertificate)` → dynamic
- `GetPasswordGrantOAuthToken(String credentialEntry, String tokenUrl, String clientCredentialEntry, IDictionary<String,String> headers, String acceptHeaderValue, Boolean encodeRequestParameters, Boolean validateSSLCertificate)` → dynamic

### Serialization Methods

- `DeserializeJson(String jsonInput)` → dynamic — Deserializes the specified JSON input
- `SerializeToJson(Object entity)` → String — Serializes the specified entity to JSON

## Code Examples

```python
# Simple GET request
response = RestClient.Get('http://api.openweathermap.org/data/2.5/weather?q=SanFrancisco,usa')
Quote.GetCustomField('City').Content = response.name
Quote.GetCustomField('Weather Today').Content = str(response.weather[0].main)

# HTTPS POST with authentication
url = 'https://testcallidus.com/CallidusPortal/services/some-example-service'
headers = {}
data = '[{"name": "SaaS Net New Revenue", "periodType": "month", "type": "Measurement", "value": { "amount": 100, "unitType": "USD" }}]'
response = AuthorizedRestClient.Post('CredentialsFromStore', url, data, headers)
Quote.GetCustomField('Bonus type').Content = response.name
Quote.GetCustomField('Bonus amount').Content = str(response.value.amount)
Quote.GetCustomField('Bonus unit type').Content = response.value.unitType
```
