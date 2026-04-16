# IJsonHelper

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/45503895-030f-1fc0-3889-524235cc026f.htm

## Overview

Enables serialization and deserialization of JSON data within SAP CPQ scripting contexts.

## Methods

### Deserialize(String json)
- **Returns:** Object
- **Description:** Deserializes the JSON to an object (dictionary, list, or primitive).

### Serialize(Object obj)
- **Returns:** String
- **Description:** Serializes the specified object to a JSON string.

## Code Examples

```python
# Deserialize a JSON dictionary
s = '{"a": "b"}'
d = JsonHelper.Deserialize(s)
for key, value in d.items():
    Trace.Write(key + ': ' + str(value))

# Deserialize a JSON list
s = '[1, 2, 3.14]'
numbers = JsonHelper.Deserialize(s)
for number in numbers:
    Trace.Write(str(number))

# Serialize an object
d = {"a": True}
s = JsonHelper.Serialize(d)
Trace.Write(s)
```
