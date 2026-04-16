# MultipartFormDataContent

**Namespace:** Scripting
**Type:** Class
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/476669ae-094e-1393-2f1f-788bf95e1c88.htm

## Overview

Wrapper for `System.Net.Http.MultipartFormDataContent`.

**Inheritance:** System.Object → HttpContent → MultipartFormDataContent

## Constructors

| Constructor | Parameters | Description |
|-------------|-----------|-------------|
| MultipartFormDataContent | (none) | Create instance of MultipartFormDataContent |
| MultipartFormDataContent | String | Create instance of MultipartFormDataContent with specified boundary |

## Fields

| Name | Type | Access | Description |
|------|------|--------|-------------|
| content | System.Net.Http.HttpContent | Protected | Instance of System.Net.Http.HttpContent (inherited) |

## Methods

| Method | Parameters | Return Type | Description |
|--------|-----------|-------------|-------------|
| Add | HttpContent | void | Add content to MultipartFormDataContent |
| Add | HttpContent, String | void | Add content to MultipartFormDataContent |
| Add | HttpContent, String, String | void | Add content to MultipartFormDataContent |
| AddContentHeaders | String, IEnumerable\<String\> | void | Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection |
| AddContentHeaders | String, String | void | Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection |
| GetContentHeaders | (none) | IEnumerable | Enumerates through content headers |
| Equals | Object | Boolean | Determines whether the specified object is equal to the current object |
| Finalize | (none) | void | Protected cleanup method |
| GetHashCode | (none) | Int32 | Serves as the default hash function |
| GetType | (none) | Type | Gets the Type of the current instance |
| MemberwiseClone | (none) | Object | Creates a shallow copy of the current Object |
| ToString | (none) | String | Returns a string that represents the current object |
