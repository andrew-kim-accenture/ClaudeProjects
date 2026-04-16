# ImutualTLSRestClient

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/eb389757-0e01-865c-d0c6-044731d0a616.htm

## Overview

Client for communication with RESTful services using client certificates generated/uploaded via Certificate Management feature (Setup -> Security -> Certificate Management -> System Certificates).

## Methods

The interface provides comprehensive HTTP methods (GET, POST, PUT, DELETE, PATCH) with numerous overloads supporting different parameter combinations:

### Get Methods
- `Get(String certificateName, String url)` → dynamic
- `Get(String, String, Boolean)` → dynamic
- `Get(String, String, IDictionary<String,String> headers)` → dynamic
- `Get(String, String, Boolean, Boolean validateSSL)` → dynamic
- `Get(String, String, IDictionary<String,String>, Boolean)` → dynamic
- `Get(String, String, IDictionary<String,String>, Boolean, Boolean)` → dynamic

### Post Methods (representative overloads)
- `Post(String certificateName, String url)` → dynamic
- `Post(String, String, String body)` → dynamic
- `Post(String, String, IDictionary<String,Object> body)` → dynamic
- `Post(String, String, String, IDictionary<String,String> headers)` → dynamic
- `Post(String, String, IDictionary<String,Object>, IDictionary<String,String>, String contentType)` → dynamic
- `Post(String, String, IDictionary<String,String>, MultipartFormDataContent)` → dynamic
- `Post(String, String, String, IDictionary<String,String>, String, String contentTypeValue, Boolean throwException, Boolean validateSSL, Boolean compressBody)` → dynamic

### Put Methods (representative overloads)
- `Put(String certificateName, String url)` → dynamic
- `Put(String, String, String body)` → dynamic
- `Put(String, String, IDictionary<String,Object> body, IDictionary<String,String>, String contentType)` → dynamic
- `Put(String, String, String, IDictionary<String,String>, String)` → dynamic

### Delete Methods (representative overloads)
- `Delete(String certificateName, String url)` → dynamic
- `Delete(String, String, IDictionary<String,String> headers)` → dynamic
- `Delete(String, String, IDictionary<String,Object>, IDictionary<String,String>, String contentType)` → dynamic
- `Delete(String, String, String body, IDictionary<String,String>, String)` → dynamic

### Patch Methods (representative overloads)
- `Patch(String, String, IDictionary<String,Object>, IDictionary<String,String>, String contentType)` → dynamic
- `Patch(String, String, String body, IDictionary<String,String>, String)` → dynamic

### Utility Methods
- `DeserializeJson(String jsonInput)` → dynamic — Deserializes JSON input
- `SerializeToJson(Object entity)` → String — Serializes entity to JSON

## Code Examples

```python
# GET request example
response = mTLSRestClient.Get('ApiCertificate',
    'http://api.openweathermap.org/data/2.5/weather?q=SanFrancisco,usa')
Quote.GetCustomField('City').Content = response.name
Quote.GetCustomField('Weather Today').Content = str(response.weather[0].main)

# POST request example
url = 'https://testcallidus.com/CallidusPortal/services/some-example-service'
headers = {}
data = '[{"name": "SaaS Net New Revenue", "periodType": "month", "type": "Measurement", "value": { "amount": 100, "unitType": "USD" }}]'
response = mTLSRestClient.Post('AuthorizationCertificate', url, data, headers)
Quote.GetCustomField('Bonus type').Content = response.name
Quote.GetCustomField('Bonus amount').Content = str(response.value.amount)
```
