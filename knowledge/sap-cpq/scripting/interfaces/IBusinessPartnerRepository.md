# IBusinessPartnerRepository

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/aa96dea8-5a0e-3658-f5ac-f4a4713ca701.htm

## Overview

Business partner repository. Used to retrieve data about business partners.

## Methods

### GetByExternalId(String externalId)
- **Returns:** IEnumerable\<IBusinessPartner\>
- **Description:** Gets list of business partners for the provided external ID.

### GetById(Int32 id)
- **Returns:** IBusinessPartner
- **Description:** Gets business partner by identifier.

### GetByName(String name)
- **Returns:** IEnumerable\<IBusinessPartner\>
- **Description:** Gets list of business partners for the provided name.
