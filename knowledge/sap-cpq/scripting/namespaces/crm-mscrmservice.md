# Crm.MSCrmService Namespace

**Source:** `https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/111bed9e-2753-15b3-9fda-59062283a7b9.htm`
**Version:** 2603

## Overview

Provides object-oriented access to Microsoft CRM entities within SAP CPQ scripting. Used for integrations with CRM systems (e.g. Salesforce, MS Dynamics).

## Business Entity Classes

| Class | Description |
|-------|-------------|
| `Account` | Business that represents a customer or potential customer |
| `Contact` | Person with whom a business unit has a relationship (customer, supplier, colleague) |
| `Lead` | Prospect or potential sales opportunity; can be converted into accounts, contacts, or opportunities |
| `Opportunity` | Potential revenue-generating event or sale to an account |

## Activity / Communication Classes

| Class | Description |
|-------|-------------|
| `Email` | Activity delivered using email protocols |
| `PhoneCall` | Activity to track a telephone call |
| `Task` | Generic activity representing work needed to be done |
| `Appointment` | Commitment representing a time interval with start/end times and duration |

## Support / Service Classes

| Class | Description |
|-------|-------------|
| `Incident` | Service request case associated with a contract |
| `Contract` | Agreement to provide customer service during a specified amount of time |
| `Entitlement` | Defines the amount and type of support a customer should receive |

## Sales / Order Classes

| Class | Description |
|-------|-------------|
| `Quote` | Formal offer for products/services at specific prices |
| `SalesOrder` | Quote that has been accepted |
| `Invoice` | Order that has been billed |

## Configuration / Security Classes

| Class | Description |
|-------|-------------|
| `SystemUser` | Person with access to the Microsoft CRM system |
| `Role` | Grouping of security privileges |
| `BusinessUnit` | Business, division, or department in the database |

## Enumerations

State enumerations define entity status values:
- `AccountState`
- `ContactState`
- `OpportunityState`
- `LeadState`
- (and additional state enums for each entity type)
