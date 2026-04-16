# IRestClient

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/332dded7-1a5e-c261-5cf9-8d49ba85f377.htm

## Overview

Client for communication with RESTful services.

## Methods

### Get(String url)
- **Returns:** dynamic
- **Description:** Performs GET request. Returns response body if status code is 2xx.

### Get(String url, Boolean returnHeadersAndCookies)
- **Returns:** dynamic
- **Description:** GET with optional headers and cookies return.

### Get(String url, IDictionary\<String, String\> headers)
- **Returns:** dynamic
- **Description:** GET with custom headers.

### Get(String url, Boolean returnHeadersAndCookies, Boolean decompress)
- **Returns:** dynamic
- **Description:** GET with headers/cookies and decompression option.

### Get(String url, IDictionary\<String, String\> headers, Boolean returnHeadersAndCookies)
- **Returns:** dynamic
- **Description:** GET with headers and return options.

### Get(String url, IDictionary\<String, String\> headers, Boolean returnHeadersAndCookies, Boolean decompress)
- **Returns:** dynamic
- **Description:** Comprehensive GET variant.

### GetStream(String url, IDictionary\<String, String\> headers)
- **Returns:** Stream
- **Description:** Returns response stream for 2xx status.

### GetStream(String url, IDictionary\<String, String\> headers, Boolean decompress)
- **Returns:** Stream
- **Description:** Stream variant with decompression flag.

### GetStream(String url, IDictionary\<String, String\> headers, Boolean decompress, Boolean returnHeadersAndCookies)
- **Returns:** Stream
- **Description:** Extended stream method.

### Post(String url, String data)
- **Returns:** dynamic
- **Description:** Performs POST request with data.

### Post(String url, String data, IDictionary\<String, String\> headers)
- **Returns:** dynamic
- **Description:** POST with custom headers.

### Post(String url, HttpContent content)
- **Returns:** dynamic
- **Description:** POST with HttpContent (supports multipart, streams, etc.).

### Post(String url, HttpContent content, IDictionary\<String, String\> headers)
- **Returns:** dynamic
- **Description:** POST with HttpContent and custom headers.

### Put(String url, String data)
- **Returns:** dynamic
- **Description:** Performs PUT request.

### Put(String url, String data, IDictionary\<String, String\> headers)
- **Returns:** dynamic
- **Description:** PUT with custom headers.

### Patch(String url, String data)
- **Returns:** dynamic
- **Description:** Performs PATCH request.

### Patch(String url, String data, IDictionary\<String, String\> headers)
- **Returns:** dynamic
- **Description:** PATCH with custom headers.

### Delete(String url)
- **Returns:** dynamic
- **Description:** Performs DELETE request.

### Delete(String url, IDictionary\<String, String\> headers)
- **Returns:** dynamic
- **Description:** DELETE with custom headers.

### GetBasicAuthenticationHeader(String username, String password)
- **Returns:** String
- **Description:** Generates basic authentication header value.

### DeserializeJson(String json)
- **Returns:** dynamic
- **Description:** Deserializes JSON input.

### SerializeToJson(Object entity)
- **Returns:** String
- **Description:** Serializes entity to JSON.

## Code Examples

```python
# Weather API call
response = RestClient.Get('http://api.openweathermap.org/data/2.5/weather?q=SanFrancisco,usa')
Quote.GetCustomField('City').Content = response.name
Quote.GetCustomField('Weather Today').Content = str(response.weather[0].main)

# HTTPS POST with authentication
url = 'https://testcallidus.com/CallidusPortal/services/some-example-service'
headers = { 'authorization': RestClient.GetBasicAuthenticationHeader('SAPUsername', 'SAPPassword') }
data = '[{"name": "SaaS Net New Revenue", "periodType": "month", "type": "Measurement", "value": { "amount": 100, "unitType": "USD" }}]'
response = RestClient.Post(url, data, headers)
Quote.GetCustomField('Bonus type').Content = response.name
```
