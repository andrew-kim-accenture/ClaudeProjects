# IAsyncAuthorizedRestClient

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/66e3fcc3-4e66-f585-94e0-33553259507d.htm

## Overview

Client for communication with RESTful services asynchronously by using Authorization header built with credentials defined in Credentials Management.

## Methods

### Delete(String credentialsName, String url)
- **Returns:** Task
- **Description:** HTTP DELETE JSON

### Delete(String credentialsName, String url, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP DELETE JSON

### Delete(String credentialsName, String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP DELETE JSON

### Delete(String credentialsName, String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP DELETE JSON

### Get(String credentialsName, String url)
- **Returns:** Task
- **Description:** HTTP GET JSON

### Get(String credentialsName, String url, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP GET JSON

### Patch(String credentialsName, String url)
- **Returns:** Task
- **Description:** HTTP PATCH JSON (partial update)

### Patch(String credentialsName, String url, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PATCH JSON

### Patch(String credentialsName, String url, String body)
- **Returns:** Task
- **Description:** HTTP PATCH JSON

### Patch(String credentialsName, String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PATCH JSON

### Patch(String credentialsName, String url, IDictionary\<String, String\> headers, MultipartFormDataContent content)
- **Returns:** Task
- **Description:** HTTP PATCH JSON

### Patch(String credentialsName, String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PATCH JSON

### Post(String credentialsName, String url)
- **Returns:** Task
- **Description:** HTTP POST JSON

### Post(String credentialsName, String url, IDictionary\<String, Object\> body)
- **Returns:** Task
- **Description:** HTTP POST JSON

### Post(String credentialsName, String url, String body)
- **Returns:** Task
- **Description:** HTTP POST JSON

### Post(String credentialsName, String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP POST JSON with headers

### Post(String credentialsName, String url, IDictionary\<String, String\> headers, MultipartFormDataContent content)
- **Returns:** Task
- **Description:** HTTP POST JSON

### Post(String credentialsName, String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP POST JSON with headers

### Post(String credentialsName, String url, String body, IDictionary\<String, String\> headers, String contentType, Boolean useGzip)
- **Returns:** Task
- **Description:** HTTP POST with content type and gzip compression options

### Put(String credentialsName, String url)
- **Returns:** Task
- **Description:** HTTP PUT JSON

### Put(String credentialsName, String url, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PUT JSON

### Put(String credentialsName, String url, String body)
- **Returns:** Task
- **Description:** HTTP PUT JSON

### Put(String credentialsName, String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PUT JSON

### Put(String credentialsName, String url, IDictionary\<String, String\> headers, MultipartFormDataContent content)
- **Returns:** Task
- **Description:** HTTP PUT JSON

### Put(String credentialsName, String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PUT JSON

### DeserializeJson(String json)
- **Returns:** Object
- **Description:** Deserializes specified JSON input.

### SerializeToJson(Object entity)
- **Returns:** String
- **Description:** Serializes specified entity to JSON.

## Code Examples

```python
# Perform script and notify external service asynchronously
AuthorizationCertificate.Post('CredentialsFromStore', 'https://api.testremoteservice/someservice')
```
