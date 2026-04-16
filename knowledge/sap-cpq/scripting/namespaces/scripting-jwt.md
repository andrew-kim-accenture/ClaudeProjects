# Scripting.Jwt Namespace

**Source:** `https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/dab8110f-b9ef-5f1c-2bc4-7d867eedb666.htm`
**Version:** 2603

## Overview

Provides JWT token generation for use in outbound REST calls from CPQ scripts. Supports symmetric, asymmetric, and certificate-based signing. Keys are managed via CPQ Credential Management and Certificate Management.

## Interfaces

### IJwtTokenParameters
Parameters object for JWT token creation.
- Created via `JwtTokenProvider.CreateParameters(claims, signingKey, expirationSeconds)`

### IJwtTokenProvider
Provider that generates signed JWT tokens.

**Methods:**

`CreateParameters(claims, signingKey, expirationSeconds)`
- `claims` — dictionary of claim key/value pairs
- `signingKey` — key name from Credential Management or Certificate Management
- `expirationSeconds` — token lifetime in seconds
- Returns: `IJwtTokenParameters`

`Generate(tokenParameters)`
- `tokenParameters` — `IJwtTokenParameters` instance
- Returns: signed JWT token string

## Enumerations

### JwtTokenKeyType
Signing key type options:
- `Symmetric` — HMAC-based signing key from Credential Management
- `Asymmetric` — RSA/EC private key from Credential Management
- `AsymmetricWithCertificate` — key + certificate from Certificate Management

## Code Example

```python
claims = {"Username": "cpq_user", "Domain": "example.com"}
tokenParams = JwtTokenProvider.CreateParameters(claims, "my-secret-key", 300)
token = JwtTokenProvider.Generate(tokenParams)

headers = {"Authorization": "Bearer " + token}
response = RestClient.Get("https://api.example.com/data", headers)
```
