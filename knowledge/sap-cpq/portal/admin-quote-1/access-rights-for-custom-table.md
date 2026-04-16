# Access Rights for Custom Table | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f725d11e4d1e47bfa8771bb98854f5e0.html?locale=en-US&state=PRODUCTION&version=2603
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
Access Rights for Custom Table

Access rights allow administrators to assign varying levels of access to individual users, including read-only privileges, permission to work exclusively with entries in specific custom tables, or full access. Users who are given access to custom tables must be configured as administrators to access the setup.

Read-only

In the Access Rights Setting, the Administrator can grant read-only access to a permission group or specific user. Once a permission group or user is selected, the Administrator must choose custom tables from the second column. Selecting a custom table will make the read-only toggle visible. By default, the toggle is turned off, but the Admin can turn it on to grant read-only access to the selected permission group or user.

Initially, the selected permission group or user will have read-only access to all tables, but the Admin can limit this by choosing specific tables in the third column.

With read-only access in place, users will be able to:

Open the Custom tables page in Setup and view the available custom tables.

Export available tables.

View entries of available table.

An administrator who can assign access rights can also provide other administrators with the option to manage access rights.

Access rights can be assigned to individual administrators or to permission groups to which administrators belong. If the administrator belongs to multiple permission groups, once access rights are enabled, they automatically have access to all sections and entities that their permission groups can access. By default, if the administrator belongs to groups with a conflicting level of access rights (one of them has read-only rights, but the other one has full editing rights), read-only access rights override editing access rights. However, you can change this behavior by enabling the toggle switch Editing rights will prevail when the administrator belongs to multiple permission groups with combined read-only and editing rights, where editing access rights will apply for all listed Custom Tables.

Managing table entries

The Administrator can now grant specific permission groups or individual users access to manage entries in custom tables from the Access Rights Setting. Once a permission group or user is selected, the Administrator can choose the custom tables from the second column. When a custom table is chosen and the Read-only setting is turned off, a gear button becomes available. By clicking the gear button, the Administrator can then disable the toggle Users can define and import new tables, add new columns and delete whole tables.

In the third column, labeled Section Entities, the Admin can select specific tables to limit the available set of tables for the selected permission group or user.

Once access rights are set, users can:

Open the Custom tables page in Setup and view the available custom tables.

Export the available tables.

View entries in the available tables.

Add new entries to the table.

Edit entries in the tables.

Delete entries in the tables.

Import entries into the tables.

Full access

From the Access Rights Setting, the Administrator can assign specific access levels to a particular permission group or user, enabling them to manage the entries of custom tables. After selecting the permission group or user, the Admin should choose the custom tables from the second column.

If the selected custom table is not read-only and the gear button becomes available, the Admin must turn on the toggle, Users can define & import new tables, add new columns and delete whole tables, accessible by clicking the gear button.

Under the Section Entities in the third column, the Administrator can limit the available tables to the selected permission group or user by specifically choosing these tables.

Note

By default, the toggle for "Users can define & import new tables, add new columns and delete whole tables" is switched ON.

After setting the access rights, Users will have the following capabilities:

Open Custom tables page in Setup where they will see a list of available custom tables.

Define a new table.

Import the new table.

Change the definition of available tables.

Export available tables.

View entries of available table.

Add new entries to the table.

Import entries.

Edit entries of the table.

Delete entries of the table.

Import entries.

Yes
No