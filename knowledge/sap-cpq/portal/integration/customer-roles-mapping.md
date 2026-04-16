# Customer Roles Mapping | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/9b9789141481472aa954d623a3f0b1cd.html?locale=en-US&state=PRODUCTION&version=2603
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
Customer Roles Mapping

The Customer Roles Mapping administrative sections allows you to set up the mappings between SAP CPQ customer roles, such as Bill To, Ship To, End User, and the opportunity information.

To access this administrative section, click the link under the CRM Integration Setup admin menu.

Mappings can be set for either of the two integration approach methods: Starting from CPQ and Starting from the CRM. The tabs at the top of the Customer Roles Mapping administration page allow you to define mappings for either integration method. Because only one mapping can be defined per integration approach, editing the mapping is just a matter of changing the fields and saving the new settings.

Defining mappings for customer roles is done in a two step process. The first step is defining the SAP CPQ customer role, then selecting the CRM object that the role will be mapped to. The second step is to define the field level mappings where you define the field from the CRM account to be mapped to the SAP CPQ customer role field.

First, choose the SAP CPQ customer role that the mapping will be defined for. The arrow between the SAP CPQ roles and the CRM icon represents which system will drive the values. When the integration approach method is starting from the CRM, then the CRM will fill the customer role information in SAP CPQ. Alternatively, when the integration approach method is starting from SAP CPQ, then SAP CPQ will fill the account information in the CRM.

If you have already defined object level mappings for one for the customer roles, you can easily copy the same settings to another role. In the right corner of the page is the Copy settings from box where you can choose the role to copy the settings from. This will only copy object level mappings to this role, and will not copy any field level mappings.

The Account and Contact selections determine from which account and contact will be involved in the mapping. Depending on the CRM being used, the choices available may be different. In the event that this choice is not available when the mapping occurs, you can set alternative accounts and contacts to be used in the mapping. This is done through the Additional Options panel, which is described in more depth later.

The Event selection determines when the mapping will be initiated. The following events are available:

Starting from the CRM:

Quote Create is initiated when the user clicks Add to Quotation to create the quote.

Quote Update is initiated when the user enters the quote from the opportunity.

Quote Create Update is initiated on both the create event and the update event.

Starting from SAP CPQ:

Opportunity Create is initiated when the Create/Update Opportunity action is clicked. If this action has been set as a pre or post action of another action, then the event will run when that action is clicked. The values will only be passed from or to the CRM on opportunity creation, and not when an opportunity is updated.

Opportunity Update is initiated when the Create/Update Opportunity action is clicked. If this action has been set as a pre or post action of another action, then the event will run when that action is clicked. The values will only be passed from or to the CRM on an update, and not on opportunity creation.

Opportunity Create Update is initiated when the Create/Update Opportunity action is clicked. If this action has been set as a pre or post action of another action, then the event will run when that action is clicked. Values will be passed from or to the CRM when the opportunity is created and updated.

The Additional Options panel defines alternative mappings in the event that the first choice of account and contact is not available when the mapping occurs. Clicking the Additional Options bars displays the panel.
To define alternative account and contact that should be used, select the account or contact from the list and click the down arrow to bring the item into the selected area. Likewise, any selected item can be unselected by clicking the up arrow. You can further prioritize selected item by clicking the up and down arrows.
Note

The Additional Options pane is not available for the Starting from SAP CPQ integration approach. This is because you are not defining where the values are coming from, but instead what account and contact values SAP CPQ should fill on the CRM.

Once you have selected the account, contact, and SAP CPQ customer role that will be involved in the mapping, click the Continue to Field Level Mappings button. This screen allows you to define mappings between the SAP CPQ field and the CRM field.

If you have already defined field level mappings for one for the customer roles, you can easily copy the same settings to another role. In the right corner of the page is the Copy settings from box where you can choose the role to copy the settings from. This will only copy field level mappings to this role, and will not copy any object level mappings.

For each SAP CPQ field, you can define the CRM field type, Account or Contact, then define the specific field that should be mapped. Click the CRM Lookup link to select the specific CRM field. This displays a popup window where you can select the CRM field.

Note

The integration is case sensitive. Use CRM Lookup to select CRM Fields.

Note

The CRM Lookup link uses the CRM administrator account defined in the CRM Administrator Account administrative section to connect to the CRM. You must have this account defined for the CRM Lookup link to work properly.

Not every field is required for integration. You only need to define mappings for those necessary fields. Keep in mind, though, that any SAP CPQ customer role fields set as required (defined in Customer Field Permissions admin section) will require the user’s input if not filled from the CRM account/contact values.

Yes
No