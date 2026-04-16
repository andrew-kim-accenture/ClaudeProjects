# General | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/7abc84f25bb8429bb1ce6bf969b1b205.html?locale=en-US&state=PRODUCTION&version=2603
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
General

The General administrative section is used to define settings for the connection between SAP CPQ and the CRM.

Here a user can define how SAP CPQ will communicate with the CRM, but also he can manage some of the interaction settings. To access the General administrative section, click the link under the CRM Integration Setup admin menu.

SAP CPQ is integrated with - Determines which CRM application SAP CPQ will integrate with. The selection determines what CRM icon is used in the CRM integration admin sections and what is seen on the user side on the customer info tab. In addition, the options available in the General admin section change based on the CRM system used. To view a CRM’s options, select the CRM from the SAP CPQ is integrated with field and click Save. This displays the options specific to that CRM.

When SAP CPQ is integrated with Microsoft CRM, values that can be selected for Authentication are WS-Trust and OAuth. It is recommended to use OAuth authentication.
If you select OAuth, you can choose between the following OAuth authentication types: OAuth or Client Secret. The selected authentication type determines how you need to populate other fields:

If the selected authentication type is OAuth, the fields that must be populated are: Client ID, URL, Redirect URL, CRM Administrator Account.

If the selected authentication type is Client Secret, the fields that must be populated are: Client ID, Client Secret, URL.

To use WS-Trust authentication, you need to define a CRM Administrator Accont.

For more information about configuring Microsoft Dynamics for OAuth authentication, see:

https://docs.microsoft.com/en-us/powerapps/developer/data-platform/authenticate-oauth

https://docs.microsoft.com/en-us/powerapps/developer/data-platform/walkthrough-register-app-azure-active-directory

Salesforce Edition - Choose the Salesforce edition of the installation that SAP CPQ will be integrating with. Choose Sandbox or Standard. Default edition is standard.

Default partner function for SalesForce account - Select the default partner function that is used when creating a new opportunity or an account from SAP CPQ.

Security password for verifying entrance to SAP CPQ through Salesforce backdoor - This field allows setting extra security measures between SAP CPQ and Salesforce integration. A user can define a password in the URL used for the custom link to access SAP CPQ. This password, set under the apiPass element, is checked against the password entered in this field. This acts as an extra security measure to ensure that there is no unauthorized access to SAP CPQ.

Partner Role Type - Used when a user searches for CRM accounts from the customer info tab. When searching, both partner and child accounts of the user’s current account are displayed. This field determines which partner accounts will be displayed based on the partner role type(s) entered here. Click CRM Lookup to view all partner role types on the CRM application. More than one type can be entered. Each selection made will be entered into the field separated by a comma.

Note

The integration is case sensitive. Use CRM Lookup to select CRM Fields.

All revisions from the quote will be attached to the same opportunity - Determines whether or not revisions made on an SAP CPQ quote will be attached to the same opportunity or not. This option is generally set to Yes. If the parameter is set to NO, multiple revisions of the same cart can be attached to opportunity.

Enter CRM Account Record Type ID which will be used when new CRM Accounts are created by CPQ - Determines the default record type for all new accounts that are created from SAP CPQSAP CPQ. Click CRM Lookup to connect to the CRM application and select the desired record type. When clicked, the name will be displayed in the field, but in the SAP CPQ database, the Record Type is being used. This feature is used mainly in the CRM integration approach of starting from SAP CPQ. Setting the record type allows you to keep track of those accounts created in the CRM from SAP CPQ.

On customers page, users may override mappings for an account that is used for newly created opportunity - This determines if the user is able to override which customer role will be used for the creation of a new account on the CRM. If set to Yes, then the user will be able to select the customer role on the customer info tab to be used in the opportunity. If set to No, then the default customer role will be used to create the new account in the opportunity.

Application parameter Update existing products in Salesforce when sending data from SAP CPQ items:

When set to “Yes,” SAP CPQ will update the SFDC Product 2 table. This will happen even if no fields are set to be mapped to this object, and only an identifier has been put in place for the system to recognize the SF Product in SAP CPQ.

If mapping from SAP CPQ to this object is not needed, the application parameter should always be set to “No.”

Application parameter Quote object in CRM is NOT deleted every time action 'Create/Update Opportunity' is executed:

When set to TRUE system will select all Quote object records from the current opportunity, with the Owner ID and Cart ID equal to current cart in SAP CPQ and it will take the first one from this list and update it instead of creating a new Quote object. If no Quote object records existed on the opportunity with this Owner ID and Cart ID, the system will create a new Quote record.

When set to FALSE , the system will delete ALL (there will usually be only one) Quote object records from SFDC Opportunity with the Owner ID and Cart ID equal to current cart in SAP CPQ for which the “create/update opportunity” is selected and will then insert a new Quote object row.

Product types that will be/will not be included in CRM opportunity - Defines which product types will or will not be pushed as products to the CRM. By default all product types are pushed to the CRM. This includes line items and main items. Select a product type you would NOT like to be pushed to the CRM and click the arrow.

When editing quotes from CRM opportunity, optimize saving of customer roles - As a way to improve performance when editing quotes from CRM opportunities, logic has been introduced that will control whether customers are saved or not depending on values that are mapped from CRM. If there are no values inserted customer roles, SAP CPQ will not save customer roles and thus save time when editing quotes from CRM. This application parameter is turned off by default and needs to be set to “TRUE” in order to turn on the optimization.

Performance - As a way to improve performance when users arrive from Salesforce, there is a flag that can be checked - 'Implement Caching for Salesforce Object Definitions'. When this flag is turned on, for each user that arrives from SF, object definitions (field names, field types, permissions etc.) will be stored in SAP CPQSAP CPQ database. This can improve performance when there is a large number of fields (more than 100) on objects opportunity, account and contact, since SAP CPQ queries Salesforce API for object definitions upon user's arrival and it takes 2-3 seconds for SF API to return each object definition with so many fields. It's important to know that there is ability to Refresh cache for Salesforce object definitions. This should be done when a new field is added in Salesforce to object definitions or when permissions have been changed over object fields in SF. If object fields or permissions have been changed in Salesforce and these fields are used in integration with SAP CPQ, errors may appear in certain integration points e.g. 'Create/Update Opportunity'.

Yes
No