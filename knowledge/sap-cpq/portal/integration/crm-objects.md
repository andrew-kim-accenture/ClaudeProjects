# CRM Objects | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/2f0aba2f67fe43cf8534a1b70741b33c.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration


	
General
	
CRM Objects
	
Custom Fields Mapping
	
Customer Roles Mapping
	
Partner Functions Mapping
	
Opportunity Status
	
CRM Item Mappings
	
Price Book Market Mappings
	
User Mappings
	
CRM Quote
	
CRM Administrator Account
	
Send Document To CRM
	
New Authentication method for COD integration
CRM Objects

SAP CPQ allows mapping of objects between SalesForce and SAP CPQ – If users arrive from opportunity to SAP CPQ and create a quote, the opportunity custom fields can be copied to appropriate SAP CPQ custom fields. Also opportunity account, partner or contact roles can be mapped to SAP CPQ customer roles, etc.

In this part of SAP CPQ Setup, the administrator can define Salesforce objects that will be mapped to SAP CPQ objects.

SAP CPQ supports several integration objects as part of the “out-of-the-box” solution. These objects are not custom (flag Is Custom is set to No) – objects like Opportunity, Opportunity Account, Opportunity Primary Role, Opportunity Bill To Role etc. The administrator cannot edit these objects.

To create an integration object go to Setup  CRM Integration Setup  CRM Objects and click Add New. The following fields are available:

Name of the object. You will use this name to identify the object when setting up custom fields or customer roles mappings.

Type of object you wish to create (Account, Contact, etc.). Use CRM Lookup to select type.

Select whether users will be able to attach this object to the quote. For most objects this checkbox will be unchecked. If this checkbox is checked, users will be able to link this object with a SAP CPQ quote. Opportunity is an object that can be linked to quotes by default, and the action Create/Update Opportunity is used

If Select whether users will be able to attach this object to the quote is checked, choose the action that will create this link (for now, only the action Create/Update Custom Object is available for this functionality). It is during this action that SAP CPQ will persist the connection between quote and selected Salesforce object in SAP CPQ database.

If Select whether users will be able to attach this object to the quote is unchecked, enter a Query that will be used for querying the SalesForce API for this object. Use the Formula Validator for expressions with tags.

Examples

Task: Get the opportunity partner role account 'Supplier'

Name: Opportunity Supplier

Type: Account

Select whether users will be able to attach this object to the quote: No

Query : SELECT AccountToId FROM Partner WHERE OpportunityId ='<*CTX(SFDC.Opportunity.Id)*>' AND Role = 'Supplier'

Task: Get the opportunity contact role account ‘Decision Maker’

Name: Opportunity Decision Maker

Type: Contact

Select whether users will be able to attach this object to the quote: No

Query: SELECT ContactId FROM OpportunityContactRole WHERE OpportunityId = '<*CTX(SFDC.Opportunity.Id)*>' AND Role = 'Decision Maker'

Note

SAP CPQ supports only simple queries made to SalesForce API. Administrators cannot use aliases in queries.

Note

If custom objects are to be used in Quote Create/Update event, the above examples are valid. If these objects were to be used in Create/Update Opportunity or in Create/Update Custom Object action, instead of <*CTX(SFDC.Opportunity.Id)*> tag <*CTX(Quote.Opportunity.Id)*> should be used.

Yes
No