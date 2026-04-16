# IFederationUtility

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/84761344-0cb3-3174-215a-c4e577fe23a4.htm

## Overview

Federation helper methods.

## Properties

| Name | Type | Description |
|------|------|-------------|
| FederationUserName | String | Gets federation username if user is logged to federation environment. Returns null if user is not logged to federation environment |

## Methods

### GetFederationUrlSegment(String idpName)
- **Returns:** String
- **Description:** Gets federation URL segment specific for provided identity provider name.

## Code Examples

```python
federationUserName = FederationUtility.FederationUserName

idpName = 'http://adfstest.webcomcpq.com/adfs/services/trust'
urlSegment = FederationUtility.GetFederationUrlSegment(idpName)
```
