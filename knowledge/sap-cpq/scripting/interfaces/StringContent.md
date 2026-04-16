# StringContent

**Namespace:** Scripting
**Type:** Class
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/14732dcb-018f-2892-eef0-88349b76b4bb.htm

## Overview

Wrapper for `System.Net.Http.StringContent`. Inherits from `HttpContent`.

**Inheritance:** System.Object → HttpContent → StringContent

## Constructors

| Constructor | Parameters | Description |
|-------------|-----------|-------------|
| StringContent | String | Creates a new instance with a string parameter |
| StringContent | String, Encodings | Creates a new instance with string and encoding parameters |
| StringContent | String, Int32 | Creates a new instance with string and integer (encoding code page) parameters |
| StringContent | String, Encodings, String | Creates a new instance with string, encoding, and media type parameters |
| StringContent | String, Int32, String | Creates a new instance with string, encoding code page, and media type parameters |

## Fields

| Name | Type | Access | Description |
|------|------|--------|-------------|
| content | System.Net.Http.HttpContent | Protected | Instance of System.Net.Http.HttpContent (inherited) |

## Methods

| Method | Parameters | Return Type | Description |
|--------|-----------|-------------|-------------|
| AddContentHeaders | String, IEnumerable\<String\> | void | Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection |
| AddContentHeaders | String, String | void | Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection |
| GetContentHeaders | (none) | IEnumerable | Enumerates through content headers |
| Equals | Object | Boolean | Determines whether the specified object is equal to the current object |
| Finalize | (none) | void | Protected cleanup method |
| GetHashCode | (none) | Int32 | Serves as the default hash function |
| GetType | (none) | Type | Gets the Type of the current instance |
| MemberwiseClone | (none) | Object | Creates a shallow copy of the current Object |
| ToString | (none) | String | Returns a string that represents the current object |
