# IRequest

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/650c2161-ddce-a29c-1e2a-b270bf3d2083.htm

## Overview

Represents class for manipulation with user request.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Cookies | (collection) | Gets a collection of cookies sent by the client |
| Form | (collection) | Gets a collection of form variables |
| QueryString | (collection) | Gets the collection of HTTP query string variables |

## Methods

### GetFile(String name)
- **Returns:** IPostedFile
- **Description:** Gets the file uploaded by the client, in multipart MIME format.

## Code Examples

```python
# Reading request POST data
# Client sends: postVar1=Lorem ipsum&postVar2=dolor sit amet
postVar1 = Request.Form["postVar1"]
postVar2 = Request.Form["postVar2"]
# Note: ampersand must be URL-encoded as %26 if part of variable content
# Request header must include Content-Type: application/x-www-form-urlencoded
```
