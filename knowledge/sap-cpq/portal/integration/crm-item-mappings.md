# CRM Item Mappings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/675e567c9b3d4727b5afd5190c93f259.html?locale=en-US&state=PRODUCTION&version=2603
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
CRM Item Mappings

CRM Item Mappings is used to transfer the Quote item level information from SAP CPQ to SFDC when the Create/Update Opportunity action is executed.

To access this administrative section, click CRM Integration Setup  CRM Item Mappings.

Two tabs are available on the CRM Integration Setup page: Action 'Create/Update Opportunity' and Action 'Create/Update Objects From Quote Items'.

Action 'Create/Update Opportunity'
This tab allows admins to define how their quote items are sent to standard SFDC objects. It defines which quote item level fields will be sent to SFDC when executing the “Create/Update Opportunity” action. In this tab, admins can only write into Product2 and OpportunityLineItem objects (standard SFDC objects).
Action 'Create/Update Objects From Quote Items'
This tab allows admins to write from CPQ Quote Item level fields to non-standard SFDC objects. Admins first define the non-standard SFDC object (in the Define Objects section), and then define the mappings between the custom object and Quote items (in Define Mappings section below).
To define a new mapping:

Click Add New to open the Custom Item Mapping definition screen.

In Standard Quote Fields enter the SAP CPQ field that will be mapped to the CRM field. Use the Formula Validator to enter expressions with tags.

Select the CRM item field type - Product or Opportunity Line Item.

Click CRM lookup to select the field.

Select Identifies Product to use the SAP CPQ field to identify a product in CRM.

The Identifies Product checkbox only appears if you selected Product for CRM item field type in step 3.

Click Save to finish.

To edit or delete a mapping, find the mapping under CRM Integration Setup  CRM Item Mappings and click the Edit or Delete icon respectively.
Examples

Standard Quote Fields: <*CTX(Quote.CurrentItem.PartNumber)*>

CRM item field type: Product CRM field: Name

Identifies Product: True

The value of the SAP CPQ field, in this mapping the Item Part Number, will be used to identify the Product in CRM.

On this page
Action 'Create/Update Opportunity'
Action 'Create/Update Objects From Quote Items'
Examples
Yes
No