# IHttpUtility

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/fc380802-b981-5afd-1b96-454f06fd86d0.htm

## Overview

Provides methods for encoding and decoding URLs when processing Web requests.

## Methods

### HtmlDecode(String value)
- **Returns:** String
- **Description:** Converts a string that has been HTML-encoded for HTTP transmission into a decoded string.

### HtmlEncode(Object value)
- **Returns:** String
- **Description:** Converts an object's string representation into an HTML-encoded string, and returns the encoded string.

### ParseQueryString(String query)
- **Returns:** NameValueCollection
- **Description:** Parses a query string into a NameValueCollection using UTF8 encoding.

### UrlDecode(String value)
- **Returns:** String
- **Description:** Converts a string that has been encoded for transmission in a URL into a decoded string.

### UrlEncode(String value)
- **Returns:** String
- **Description:** Encodes a URL string.
