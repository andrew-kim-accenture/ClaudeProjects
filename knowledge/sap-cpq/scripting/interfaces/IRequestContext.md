# IRequestContext

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/3473eadf-bdee-bedc-ad7f-8474de4536cf.htm

## Overview

RequestContext represents a CPQ helper class that can be used to store additional information and entities that would be shared across one HTTP request. Items persist only for the duration of a single HTTP request.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Body | String | Gets the contents of the incoming HTTP entity body in text format |
| Form | (collection) | Gets a collection of form variables |
| Items | IRequestItems | Gets the key/value collection set in current request context (get/set) |
| QueryString | (collection) | Gets the collection of HTTP query string variables |
| RawUrl | String | Gets the raw URL from the current request (equivalent to HttpContext.Current.Request.RawUrl) |
| Url | Uri | Gets the URL from the current request (equivalent to HttpContext.Current.Request.Url) |

## Code Examples

```python
# Setting items
RequestContext.Items["my_key"] = "My value"

# Reading items
myVariable = RequestContext.Items["my_key"]
if myVariable is not None and myVariable == "My value":
    Trace.Write("Correct value was retrieved from request items.")
```
