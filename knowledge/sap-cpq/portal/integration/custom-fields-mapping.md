# Custom Fields Mapping | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/9aa78146506e4d578db0d91bba68adcb.html?locale=en-US&state=PRODUCTION&version=2603
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
Custom Fields Mapping

The Custom Fields Mapping administrative section allows you to map fields, custom or standard, from SAP CPQ to opportunity or opportunity account fields in the CRM.

To access this administrative section, click the link under the CRM Integration Setup admin menu.

Mappings can be set for either of the two integration approach methods: Starting from CPQ and Starting from the CRM. The tabs at the top of the Custom Fields Mapping administration page allow you to define mappings for either integration method. From here you can Copy, Delete, or Edit existing mappings.

To define a new mapping, click Add New.

At the top of the definition screen choose the Event that will initiate this mapping. The following events are available:

Starting from the CRM:

Quote Create is initiated when the user clicks Add to Quotation to create the quote.

Quote Update is initiated when the user enters the quote from the opportunity.

Quote Create Update is initiated on both the create event and the update event. Starting from SAP CPQ:

Opportunity Create is initiated when the Create/Update Opportunity action is clicked. If this action has been set as a pre or post action of another action, then the event will run when that action is clicked. The values will only be passed from or to the CRM on opportunity creation, and not when an opportunity is updated.

Opportunity Update is initiated when the Create/Update Opportunity action is clicked. If this action has been set as a pre or post action of another action, then the event will run when that action is clicked. The values will only be passed from or to the CRM on an update, and not on opportunity creation.

Opportunity Create Update is initiated when the Create/Update Opportunity action is clicked. If this action has been set as a pre or post action of another action, then the event will run when that action is clicked. Values will be passed from or to the CRM when the opportunity is created and updated.

In the CPQ Fields section, select the type of field that will be mapped. Choosing Custom Quote Fields allows you to choose any custom field created in the system. Choosing Stand Quote Fields allows you to select the following values:

Quote Number returns the quote number that will be associated with the opportunity

Total Amount returns the total amount of the quote

Quote Description returns the description of the quote.

In the CRM Fields section, select which field type the SAP CPQ field will be mapped to: Opportunity or Opportunity Account. Next, click the CRM Lookup link to select the particular CRM field that you would like mapped. This displays a pop up window where you can select the desired field.

Note

The integration is case sensitive. Use CRM Lookup to select CRM Fields.

Note

The CRM Lookup link uses the CRM administrator account defined in the CRM Administrator Account administrative section to connect to the CRM. You must have this account defined for the CRM Lookup link to work properly.

Once you have the fields defined that will be involved in the mapping, click the arrows in the Direction column to determine which system will drive the value of the field mapping. The up arrow designates SAP CPQ values to be passed in this mapping. The down arrow designates the CRM values to be passed in this mapping. The system that drives the values in the mapping will overwrite any values in the other system. For instance, if you have set up a mapping in which SAP CPQ drives the values in a mapping with the CRM, then the values on the CRM will be overwritten by the SAP CPQ values when the mapping is initiated.

Note

When Standard SAP CPQ fields are being used in the mapping, the only direction available is arrow pointing to the right. This is because the standard fields, such as Total Amount and Quote Number, are defined by the user’s configuration and cannot be changed by another system.

Yes
No