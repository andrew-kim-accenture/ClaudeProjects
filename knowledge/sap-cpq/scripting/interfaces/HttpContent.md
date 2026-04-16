# HttpContent

**Namespace:** Scripting
**Type:** Class (Abstract)
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/d66a0e18-26df-cf7a-ce53-baf4e58c459d.htm

## Overview

Wrapper for `System.Net.Http.HttpContent`. Abstract base class for HTTP content in the Scripting namespace.

**Inheritance:**
- System.Object → HttpContent
  - ByteArrayContent
  - MultipartFormDataContent
  - StreamContent
  - StringContent

## Constructors

- **HttpContent()** — Protected. Initializes a new instance of the HttpContent class.

## Fields

| Name | Type | Access | Description |
|------|------|--------|-------------|
| content | System.Net.Http.HttpContent | Protected | Instance of System.Net.Http.HttpContent |

## Methods

| Method | Parameters | Return Type | Description |
|--------|-----------|-------------|-------------|
| AddContentHeaders | String, IEnumerable\<String\> | (not specified) | Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection |
| AddContentHeaders | String, String | (not specified) | Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection |
| GetContentHeaders | (none) | (not specified) | Enumerates through content headers |
| Equals | Object | (inherited) | Standard object comparison |
| GetHashCode | (none) | (inherited) | Standard hash function |
| GetType | (none) | (inherited) | Gets current instance type |
| ToString | (none) | (inherited) | String representation |

## Operators

- Static conversion operator: HttpContent → System.Net.Http.HttpContent
