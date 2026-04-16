# ByteArrayContent

**Namespace:** Scripting
**Type:** Class
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/a7e8ba02-f038-da6e-5c62-b2b035a32ce8.htm

## Overview

Wrapper for `System.Net.Http.ByteArrayContent`.

**Inheritance:** System.Object → HttpContent → ByteArrayContent

## Constructors

| Constructor | Parameters | Description |
|-------------|-----------|-------------|
| ByteArrayContent | Byte[] | Initializes a new instance of the ByteArrayContent class |
| ByteArrayContent | Byte[], Int32, Int32 | Initializes a new instance with offset and count parameters |

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
