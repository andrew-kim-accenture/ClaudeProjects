# Custom Table Logging | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/6ba434036225422284f814b5d87642b9.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products
	
Categories
	
Attributes
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables


	
Custom Table Logging
	
Hidden Custom Tables
	
Access Rights for Custom Table
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	
Custom Configurator XSLT
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Custom Table Logging

The timestamp and the performer of actions performed on custom tables are logged for each individual row in the columns CpqTableEntryDateModified and CpqTableEntryModifiedBy, and displayed in the date and separator format selected for the logged-in administrator.

From the administrator side, the columns are visible in Setup  Product Catalog  Custom Tables  View Entries, and from the user side, they’re visible in User Menu  Manage Tables  View Entries. The columns are automatically populated with the date and time the table was modified, and the username and the full name of the person that modified it. The action itself isn't logged. The columns are populated after the following actions are performed:

Add table

Add row

Edit row

Copy row

Import entries

Import custom table

Add column to the table

Any actions affecting custom tables in Deploy/Send Changes

Moreover, the new columns are also populated when the following actions are performed via SOAP API:

CREATETABLE

DELETETABLE

EXPORTROWS

EXPORTTABLE

INSERTROWS

UPDATEROWS

UPSERTROWS

DELETEROWS

However, the following actions in custom tables are logged in Audit Trail  Admin Actions:

Add new table (via SOAP API, Excel, IP script or manually; also logged in the new columns)

Add column to the table (also logged in the new columns)

Changing the PII and Suppressed Information Logging flags

Delete row

Delete table

Level of Logging in Audit Trail
In custom table definition, you can define the level at which changes are logged by choosing between the following options in Audit Trail Level:

Audit at Field Level – when the table is edited, a record is logged in the audit trail for every field that is edited. The record contains information about the values in that field before and after the change.

Audit at Row Level – when the table is edited, only one record per row is logged in the audit trail. The record contains information about the values in the fields in that row before and after the change.

No Audit – if this option is selected, no records are logged for that custom table, regardless of edits. As of November 2022, this option is selected by default on all new tables and no changes are logged until administrators select another option.

Yes
No