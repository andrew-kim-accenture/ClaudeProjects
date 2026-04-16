# ICustomerHelper

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/208fd248-993f-c3e7-b411-a435ec2bc700.htm

## Overview

Provides customer lookup functionality. Used to retrieve ICustomer objects by various identifiers.

## Methods

### GetCustomer(String customerCode, String customerRole)
- **Returns:** ICustomer
- **Description:** Gets the ICustomer object by customer code and role. The lookup follows a three-step process: (1) searches for an active local customer with the provided code; (2) if not found, searches active global customers (considering visibility); (3) if still not found, checks if the customer code belongs to another user's local customer (considering visibility).

### GetCustomer(String crmAccountId, String crmContactId, String customerRole)
- **Returns:** ICustomer
- **Description:** Gets the ICustomer object by CRM Account Id, CRM Contact Id and Customer Role.
