# IAsyncMTLSRestClient

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/1f374681-9e21-8c78-82d8-d463dd432b89.htm

## Overview

Client for asynchronous RESTful service communication using client certificates from Certificate Management.

## Methods

### Get(String certificateName, String url)
- **Returns:** Task
- **Description:** HTTP GET JSON method

### Get(String certificateName, String url, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP GET JSON method with headers

### Post(String certificateName, String url)
- **Returns:** Task
- **Description:** HTTP POST JSON method

### Post(String certificateName, String url, IDictionary\<String, Object\> body)
- **Returns:** Task
- **Description:** HTTP POST JSON method

### Post(String certificateName, String url, String body)
- **Returns:** Task
- **Description:** HTTP POST JSON method

### Post(String certificateName, String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP POST with headers

### Post(String certificateName, String url, IDictionary\<String, String\> headers, MultipartFormDataContent content)
- **Returns:** Task
- **Description:** Sends POST request to specified URL

### Post(String certificateName, String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP POST with headers

### Post(String certificateName, String url, String body, IDictionary\<String, String\> headers, String contentType, Boolean useGzip)
- **Returns:** Task
- **Description:** HTTP POST with headers, request content type selection, and optional gzip compression

### Put(String certificateName, String url)
- **Returns:** Task
- **Description:** HTTP PUT JSON method

### Put(String certificateName, String url, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PUT JSON method with headers

### Put(String certificateName, String url, String body)
- **Returns:** Task
- **Description:** HTTP PUT JSON method

### Put(String certificateName, String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PUT JSON method

### Put(String certificateName, String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PUT JSON method with headers

### Patch(String certificateName, String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PATCH for partial updates

### Patch(String certificateName, String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP PATCH for partial updates with headers

### Delete(String certificateName, String url)
- **Returns:** Task
- **Description:** HTTP DELETE JSON method

### Delete(String certificateName, String url, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP DELETE JSON method with headers

### Delete(String certificateName, String url, IDictionary\<String, Object\> queryParams, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP DELETE JSON method

### Delete(String certificateName, String url, String body, IDictionary\<String, String\> headers)
- **Returns:** Task
- **Description:** HTTP DELETE JSON method with headers

### DeserializeJson(String json)
- **Returns:** Object
- **Description:** Deserializes specified JSON input.

### SerializeToJson(Object entity)
- **Returns:** String
- **Description:** Serializes specified entity to JSON.
