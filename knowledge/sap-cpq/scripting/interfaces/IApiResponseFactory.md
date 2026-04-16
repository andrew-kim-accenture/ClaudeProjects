# IApiResponseFactory

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/c7662952-f923-f5e5-96aa-858fa5c3c999.htm

## Overview

Factory interface for creating `IApiResponse` objects.

## Methods

### FileResponse(String fileName, Byte[] content)
- **Returns:** IApiResponse
- **Description:** Creates a IApiResponse object by using the file content and file type.

### FileResponse(String fileName, Byte[] content, String contentType)
- **Returns:** IApiResponse
- **Description:** Creates a IApiResponse object by using the file content, file type and file name.

### HtmlResponse(String html)
- **Returns:** IApiResponse
- **Description:** Creates a IApiResponse object that renders the HTML to response.

### HtmlResponse(String html, Int32 statusCode)
- **Returns:** IApiResponse
- **Description:** Creates a IApiResponse object that renders the HTML to response.

### JsonResponse(Object obj)
- **Returns:** IApiResponse
- **Description:** Creates a IApiResponse object that serializes the specified object to JavaScript Object Notation (JSON) format.

### JsonResponse(Object obj, Int32 statusCode)
- **Returns:** IApiResponse
- **Description:** Creates a IApiResponse object that serializes the specified object to JavaScript Object Notation (JSON) format.

### RedirectResponse(String url)
- **Returns:** IApiResponse
- **Description:** Creates a IApiResponse object that redirects browser to specified url.
