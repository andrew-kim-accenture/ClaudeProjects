# StreamContent

**Namespace:** Scripting
**Type:** Class
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/21ec1149-192b-ffb1-b061-429781c1d53d.htm

## Overview

Wrapper for `System.Net.Http.StreamContent`. Inherits from `HttpContent`.

**Inheritance:** System.Object → HttpContent → StreamContent

## Constructors

| Constructor | Parameters | Description |
|-------------|-----------|-------------|
| StreamContent | Stream | Creates a new instance of the StreamContent class |
| StreamContent | Stream, Int32 | Creates a new instance of the StreamContent class with buffer size |

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
