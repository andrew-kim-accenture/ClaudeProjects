# Order Creation/Update Mapping | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/6855538b22364a77bd7c5925c3098281.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems


	
SAP ERP Integration for Quote 1.0
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
Variant Configuration Integration


	
Introduction to the Variant Configuration Integration
	
Integrate SAP CPQ with SAP Variant Configuration and Pricing
	
Define SAP General Attribute Mappings
	
Knowledge Base Diagnostics
	
Technical Overview
	
Pricing


	
Pricing Procedure Mapping


	
Pricing Procedures from SAP Variant Configuration and Pricing
	
Order Creation/Update Mapping


	
Allowed Value Combinations
	
Quotes API Example Payload
	
Set Up Pricing Procedure in SAP ERP
	
Map Pricing Response to Quote Columns
	
Pricing Details on Items
	
Pricing Behavior for Products Created/Edited via SOAP API
	
SAP Variant Configuration and Pricing Log
	
SAP Sales Cloud Integration
	
SAP Commerce Cloud Integration
	
SAP Subscription Billing Integration for Quote 2.0
	
Integration with SAP Master Data Integration
	
Identity Provisioning Service Integration
	
CX AI Integration
	
Integration with Central Entry Point
	
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
Order Creation/Update Mapping

Pricing procedure mapping is used to send prices from the SAP CPQ quote to SAP S/4HANA when an order is placed.

This is achieved by mapping quote item or header fields in SAP CPQ to pricing conditions from the back-end system, which are part of pricing procedures. Pricing conditions are mapped in the Pricing Procedures section of the Setup, which is only visible when the integration with SAP ERP is enabled in Providers. This feature is available only in the Quote 2.0 engine.

Quote header or quote item fields are mapped to pricing conditions, and these mappings are used during the process of order creation in the SAP back-end system. SAP Variant Configuration and Pricing can be used as the middleware for synchronizing products.

Entering Pricing Procedures in SAP CPQ
Pricing procedures are originally defined in the back-end system, but they need to exist in SAP CPQ in Setup  Pricing/Calculations  Pricing Procedures. The procedure name entered here is unique in the back-end system.
Scenario 1: Integration Enabled with SAP Variant Configuration and Pricing

If the integration with SAP Variant Configuration and Pricing is enabled, the procedures can be automatically retrieved from SAP Variant Configuration and Pricing. In this case, they do not need to be manually defined, but instead can be selected from a list. In addition, in the Determinations tab you can see the list of determinations for every pricing procedure, which are also automatically synchronized.

Scenario 2: Integration Not Enabled with SAP Variant Configuration and Pricing
If the integration with SAP Variant Configuration and Pricing is not enabled, the pricing procedure needs to be defined manually (by copying the information from the back end into SAP CPQ). By clicking Add New Pricing Procedure you enter the pricing procedure definition tab, where you enter the pricing procedure ID and Description.
Note

Customers using SAP CPQ can still integrate with SAP S/4HANA to sell basic products, even if they don't have VCP integration.

Defining Pricing Condition Mappings

Regardless of whether the integration with SAP Variant Configuration and Pricing is enabled or not, in the Order Creation/Update Mappings tab, you need to specify the mappings for the pricing conditions that should be sent from SAP CPQ to the back end during order creation. On this tab, there is a list of pricing conditions that exist in the back end, together with the mappings used for sending information from the SAP CPQ quote item or quote header fields to the back-end system.

The following fields can be specified on this tab:

Quote Item

Quote Header

Step

Pricing Condition

Name

Pricing Frequency

Rate/Value

To map pricing conditions, you need to manually add every pricing condition from the back end and select to which quote item or quote header field it is mapped. The fields in the Order Creation/Update Mappings tab need to be filled out in the following way:

Field

	

Use




Quote Item

	

Select the quote item field which you want to map to the pricing condition. You can either select a quote item field or a quote header field for a specific mapping.




Quote Header

	

Select the quote header field which you want to map to the pricing condition. You can either select a quote item field or a quote header field for a specific mapping.




Step

	

Enter the numeric value which exists in the pricing procedure from the back end. Step is the unique identifier of a pricing condition.This value is required and must be unique for every pricing condition.




Pricing Condition

	

Enter the value of the condition type from the pricing procedure from the back end. This field must either be unique for every pricing condition or empty (in the case of Subtotals). If it is empty, the Step will be used for identifying the pricing condition, which is why the Step field is required and must be unique.




Name

	

Enter a descriptive name for the pricing condition mapping (for example, Discount Percent or Manual Surcharge).




Pricing Frequency

	

The allowed values for this field are One Time, Monthly and Yearly. The pricing frequency from the mapping needs to match the quote item price period so that the mapping is applied. Pricing Frequency can only be defined for quote item field mappings.

In SAP CPQ, the same quote item field, Item Base Recurring Price, is used for both monthly and yearly pricing, but different conditions are used for this in the back end. In the back end, the conditions with the calculation type M, N, O and P are used for recurring prices, but in SAP CPQ, only M and N are supported (monthly and yearly pricing). See the image below the table for reference.




Rate/Value

	

Select Rate or Value. The pricing condition in the back end has both Rate and Value condition fields. By making a selection for this field in SAP CPQ, you specify to which condition field the quote field is mapped. In case SAP CPQ is integrated with SAP Billing Revenue and Innovation Management, the selected value should always be Rate.

Note

Defining mappings for multiple conditions which share the same step, but have distinct step counters, is not supported in SAP CPQ. There is no possibility to set a step counter in the mapping definition.

In this screenshot, a valid example of pricing condition mappings is displayed.

On this page
Entering Pricing Procedures in SAP CPQ
Defining Pricing Condition Mappings
Yes
No