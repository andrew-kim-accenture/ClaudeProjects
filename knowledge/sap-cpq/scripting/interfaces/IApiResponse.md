# IApiResponse

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/9cf46dca-79a9-68d7-aff3-f0de814d915d.htm

## Overview

Abstract class which represents the response of a custom API call. When `ApiResponse` is not explicitly provided, the default response includes content type `application/json` with body `Ok`.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Content | Byte[] | The binary content to send to the response |
| ContentType | String | The content type (MIME type) |
| FileName | String | The file name to use in the file-download dialog box that is displayed in the browser |
| StatusCode | HttpStatusCode | The HttpStatusCode |

## Code Examples

```python
# Define an HTML response after custom logic
ApiResponse = ApiResponseFactory.HtmlResponse("some HTML")
```
