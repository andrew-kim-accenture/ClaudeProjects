# Additional Features | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/876ec8ff3d6b44609d5933de6bf3d03b.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Configuration in Salesforce and SAP CPQ
	
User Journeys
	
Additional Features
	
CRM Integration
Additional Features

The following features allow you to additionally customize the user journey in the integration between Salesforce and SAP CPQ. You can enable or disable these features by setting the value of the dedicated parameter in the global script to True or False.

Make quote primary

If this parameter is enabled, once the user executes the custom action Create/Update Salesforce Opportunity on a quote in SAP CPQ, that quote is set as the primary quote for that opportunity in Salesforce (the checkbox Primary is selected for that quote in the Quote Documents section in Salesforce). The same way, any quote revision can be set as the primary quote in Salesforce. Only one quote object can be marked as primary.

Attach quote to opportunity immediately on quote creation

If this parameter is enabled, once the user creates a new quote from Salesforce by clicking Create New Quote in the opportunity, at the same time, a corresponding quote object is also created in Salesforce. If this parameter is disabled, only the quote in SAP CPQ is created when the user clicks Create New Quote in the opportunity. In that case, the Salesforce quote corresponding with that quote will only be created once the user executes the custom action Create/Update Salesforce Opportunity in the SAP CPQ quote.

Exclude a product type from being sent to Salesforce

In the global script, you can specify product types which will be excluded once information from the SAP CPQ quote is sent to Salesforce. For example, if the product type Subscription exists in your environment, and you specify the value Subscription in the global script, any items with that product type in the SAP CPQ quote won’t be created on the Salesforce quote when the user executes the custom action Create/Update Salesforce Opportunity in the SAP CPQ quote.

Attach or detach a quote from an opportunity

If the user executes the custom action Detach from Opportunity on the SAP CPQ quote which is attached to an opportunity, all versions of that quote are deleted from the Salesforce opportunity. In addition, Opportunity Name and Opportunity ID are deleted from that quote in SAP CPQ.

Alternatively, if the user lands from the Salesforce opportunity to SAP CPQ (for example, by opening one of the quotes in the opportunity) and then opens a quote which isn’t attached to the opportunity from which they landed, they can attach that quote to that opportunity by executing the custom action Attach Salesforce Opportunity to Quote on the SAP CPQ quote. Once the user executes this action, fields on the quote are populated with information from the Salesforce opportunity, according to the way mappings were set up.

Allow only one quote to be attached to one opportunity

If this parameter is enabled, users won’t be able to create a new quote from the opportunity, if there is already a quote attached to that opportunity. Additionally, users won’t be able to attach quotes in SAP CPQ to any opportunity to which a quote is already attached. However, if this parameter is disabled, it will be possible to attach multiple quotes to the same opportunity.

Update existing products in Salesforce when sending data from CPQ items

If this parameter is enabled, once the user executes the custom action Create/Update Salesforce Opportunity in SAP CPQ, new products are created and existing products are updated in the Salesforce opportunity. If this parameter is disabled, only the products which already exist in the opportunity are updated, but no new products are created in Salesforce.

Creating and updating product records in Salesforce is done according to this mapping:

SAP CPQ Product

	

Salesforce Product




Product Name

	

Name




Part Number

	

Product Code

Post Cart Comment in Salesforce Account or Opportunity Chatter

You can post the cart comment from the quote into the Salesforce Opportunity Chatter by executing the custom action Post Quote Notes into Salesforce Opportunity Chatter. Similarly, you can post the cart comment into the Account Chatter, instead, by executing the custom action Post Quote Notes into Salesforce Account Chatter on the quote.

Attach every revision of the quote to the same opportunity

If this parameter is enabled, once the user executes the custom action Create/Update Salesforce Opportunity on a quote revision in SAP CPQ, that quote revision is created on the Salesforce opportunity. If that revision already exists on the opportunity, it is updated, instead. However, if this parameter is disabled and the custom action is executed on a quote revision, only the active revision is created or updated on the opportunity, and all other revisions are removed from the opportunity.

Quote object in CRM is not deleted every time Create/Update Salesforce Opportunity is executed

If this parameter is disabled, every time the user executes the custom action Create/Update Salesforce Opportunity on a quote, a new quote record is created in Salesforce with the information from that SAP CPQ quote, and all other quote records on the opportunity with the same Quote ID and Owner ID as the SAP CPQ quote are deleted.

However, if this parameter is enabled, every time the custom action Create/Update Salesforce Opportunity is executed on a quote, the quote object in Salesforce corresponding to the SAP CPQ quote is updated, or a new quote is created in case no such quote object exists in Salesforce. In addition, no quotes are deleted when the custom action is executed from SAP CPQ.

Salesforce CTX Tags
The following CTX tags can be used in SAP CPQ to retrieve information from Salesforce:

Account Tag

	

<*CTX( Quote.ExecuteScript(CPQ_SF_ACCOUNT_TAG, {"PROPERTY": "Name"}) )*>




Custom Object Tag

	

<*CTX( Quote.ExecuteScript(CPQ_SF_OBJECT_TAG, {"OBJECT_NAME": "Opportunity_Decision_Maker", "PROPERTY": "Name"}) )*>




Opportunity Tag

	

<*CTX( Quote.ExecuteScript(CPQ_SF_OPP_TAG, {"PROPERTY": "Name"}) )*>




Query Tag

	

<*CTX( Quote.ExecuteScript(CPQ_SF_QUERY_TAG, {"QUERY": "SELECT+Id+FROM+Product2+WHERE+ProductCode='CNSLT'"}) )*>

On this page
Make quote primary
Attach quote to opportunity immediately on quote creation
Exclude a product type from being sent to Salesforce
Attach or detach a quote from an opportunity
Allow only one quote to be attached to one opportunity
Update existing products in Salesforce when sending data from CPQ items
Post Cart Comment in Salesforce Account or Opportunity Chatter
Attach every revision of the quote to the same opportunity
View all
Yes
No