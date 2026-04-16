# IAsyncRestClient

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/4ba3cad0-a631-dc15-3ddf-741c738a034a.htm

## Overview

Client for communication with RESTful services asynchronously.

## Methods

### Get(String url)
- **Returns:** Task
- **Description:** HTTP GET JSON method

### Get(String url, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP GET JSON method with headers

### Post(String url)
- **Returns:** Task
- **Description:** HTTP POST JSON method

### Post(String url, IDictionary\<String, Object\> body)
- **Returns:** Task
- **Description:** HTTP POST JSON method

### Post(String url, String body)
- **Returns:** Task
- **Description:** HTTP POST JSON method

### Post(String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP POST JSON with headers

### Post(String url, IDictionary\<String, String\> headers, MultipartFormDataContent content)
- **Returns:** Task
- **Description:** Multipart form data POST

### Post(String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP POST JSON with headers

### Post(String url, String body, IDictionary\<String, String\> headers, String contentType, Boolean useGzip)
- **Returns:** Task
- **Description:** HTTP POST with content type and gzip compression options

### Put(String url)
- **Returns:** Task
- **Description:** HTTP PUT JSON method

### Put(String url, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PUT JSON method

### Put(String url, String body)
- **Returns:** Task
- **Description:** HTTP PUT JSON method

### Put(String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PUT JSON method

### Put(String url, IDictionary\<String, String\> headers, MultipartFormDataContent content)
- **Returns:** Task
- **Description:** Multipart form data PUT

### Put(String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PUT JSON method

### Patch(String url)
- **Returns:** Task
- **Description:** HTTP PATCH JSON method (partial update)

### Patch(String url, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PATCH JSON method

### Patch(String url, String body)
- **Returns:** Task
- **Description:** HTTP PATCH JSON method

### Patch(String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PATCH JSON method

### Patch(String url, IDictionary\<String, String\> headers, MultipartFormDataContent content)
- **Returns:** Task
- **Description:** Multipart form data PATCH

### Patch(String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PATCH JSON method

### Delete(String url)
- **Returns:** Task
- **Description:** HTTP DELETE JSON method

### Delete(String url, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP DELETE JSON method

### Delete(String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP DELETE JSON method

### Delete(String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP DELETE JSON method

### DeserializeJson(String json)
- **Returns:** Object
- **Description:** Deserializes specified JSON input.

### SerializeToJson(Object entity)
- **Returns:** String
- **Description:** Serializes specified entity to JSON.

## Code Examples

```python
AsyncRestClient.Post('https://api.testremoteservice/someservice')
```
