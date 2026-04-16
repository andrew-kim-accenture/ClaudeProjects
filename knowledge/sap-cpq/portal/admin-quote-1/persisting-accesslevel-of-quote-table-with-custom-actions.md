# Persisting AccessLevel of Quote Table with Custom Actions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/6e9581c882404e79bfd0c046864088aa.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation
	
Custom Quote Tabs
	
Quote Tables


	
Create Quote Table
	
Quote Table Columns
	
Manage Quote Table Column Groups
	
Quote Table Actions


	
Persisting AccessLevel of Quote Table with Custom Actions
	
Import via Excel
	
Quote Table Translation
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
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
Persisting AccessLevel of Quote Table with Custom Actions

To achieve the persisting access level of the Quote table, new custom actions are to be added and that will store access level in the session. The session is active if the user is logged in. There are two examples of how to achieve this. The first one is setting the access level on the whole Quote table (which will also hide all custom actions) and the second one is setting the access level to each column (which won't hide custom actions and gives the user the possibility to execute some other action that will revert access Level).

Note

Before quote rendering global scripting event should be used for the change on the access level to work and persist.

Examples

Example 1

Access level set on each column (this will leave Quote table actions and row actions visible to the user). This way we can keep custom actions visible to the user, so Unhide can be executed. Set the hide action as ReadOnly access level for each column and that access level is stored in the session for each Quote separately.

Code Syntax


from Scripting.QuoteTables import AccessLevel
context.Quote.QuoteTables['QuoteTableName'].GetColumnByName('Column1').AccessLevel = AccessLevel.ReadOnly
context.Quote.QuoteTables['QuoteTableName'].GetColumnByName('Column2').AccessLevel = AccessLevel.ReadOnly
sessionKey = '{}_QuoteTableNameAccessLevel'.format(context.Quote.Id)
Session[sessionKey] = AccessLevel.ReadOnly

Unhide action sets Editable access level for each column and that access level is stored in the session for each Quote separately.
Code Syntax


from Scripting.QuoteTables import AccessLevel
context.Quote.QuoteTables['QuoteTableName'].GetColumnByName('Column1').AccessLevel = AccessLevel.Editable
context.Quote.QuoteTables['QuoteTableName'].GetColumnByName('Column2').AccessLevel = AccessLevel.Editable
sessionKey = '{}_QuoteTableNameAccessLevel'.format(context.Quote.Id)
Session[sessionKey] = AccessLevel.Editable

Add a new global script before the quote rendered event which will set access level to Quote table columns which is stored in the session.
Code Syntax


sessionKey = '{}_QuoteTableNameAccessLevel'.format(context.Quote.Id)
if(Session[sessionKey] is not None):
	context.Quote.QuoteTables['QuoteTableName'].GetColumnByName('Column1').AccessLevel = Session[sessionKey]
	context.Quote.QuoteTables['QuoteTableName'].GetColumnByName('Column2').AccessLevel = Session[sessionKey]

Example 2:

Access level set on the whole Quote table (this will also hide Quote table actions)

Set Hide action as ReadOnly AccessLevel for Quote table and that AccessLevel is stored in the session for each Quote separately.
Code Syntax


from Scripting.QuoteTables import AccessLevel
context.Quote.QuoteTables['QuoteTableName'].AccessLevel = AccessLevel.ReadOnly
sessionKey = '{}_QuoteTableNameAccessLevel'.format(context.Quote.Id)
Session[sessionKey] = AccessLevel.ReadOnly

Set Unhide action as Editable AccessLevel for each column and that access level is stored in the session for each Quote separately (this must be executed via script - Script Workbench for example):
Code Syntax


from Scripting.QuoteTables import AccessLevel
context.Quote.QuoteTables['QuoteTableName'].AccessLevel = AccessLevel.Editable
sessionKey = '{}_QuoteTableNameAccessLevel'.format(context.Quote.Id)
Session[sessionKey] = AccessLevel.Editable

Add new global script before the quote rendering event, which will set access level to Quote table columns that is stored in the session.
Code Syntax


sessionKey = '{}_QuoteTableNameAccessLevel'.format(context.Quote.Id)
if(Session[sessionKey] is not None):
	context.Quote.QuoteTables['QuoteTableName'].AccessLevel = Session[sessionKey]

Yes
No