# Pricing Procedures from SAP Variant Configuration and Pricing | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/735f10814a4b41d78eabc2fb7d16c4a9.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Select Pricing Procedure in SAP CPQ
	
Determinations
	
Define Pricing Condition Mapping
	
Allowed Value Combinations
	
Pricing Condition Mapping on Quote
	
Calculations for Variant Pricing Items
	
Calculations for Combined SAP CPQ and Variant Pricing Items
	
CPQ Line Items Calculations and Fields
	
CTX Tags for Fields Mapped from Pricing Conditions
	
Example Procedure for Mapping Pricing Conditions
	
Order Creation/Update Mapping
	
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
Pricing Procedures from SAP Variant Configuration and Pricing

You can map pricing conditions from SAP S/4HANA to quote item or header fields to define the way pricing information from SAP Variant Configuration and Pricing is used in SAP CPQ. This feature is only available if SAP Variant Configuration and Pricing is used as the pricing service in SAP CPQ.

Prerequisites
The following prerequisites are required for using pricing procedure mapping in SAP CPQ:

The Quote 2.0 engine must be used. Customizing this feature in order to use it on Quote 1.0 is not supported.

SAP S/4HANA On Premise must be integrated with SAP CPQ. Using this feature with SAP ECC (SAP ERP Central Component) is not supported as the standard configuration. If you need to implement this feature with SAP ECC, please consult your implementation partner.

SAP Variant Configuration and Pricing must be integrated with SAP CPQ and used as the pricing engine.

The feature must be enabled by the SAP CPQ Operations team.

The products used must originate from SAP S/4HANA.

The administrator needs to have the appropriate access rights in order to access pricing procedure mapping.

You must assign the necessary calculatons to quote fields.

For more information, see Allowed Value Combinations.

The settings on the SAP General Attribute Mappings page must be correctly configured. Pricing procedure mapping must be used with the Quote-First Approach because the feature requires quote context. Likewise, the settings in the Attributes (No Quote) section do not apply.

Quote layout (the layout permissions and the user page settings) must be properly configured in the SAP CPQ Setup.

Note

The current version of pricing procedure mapping is available to users with some limitations. Please review the Quote 2.0 - SAP Variant Configuration and Pricing Integration Limitations before implementing the feature.

The standard quote field Discount Percent is no longer available on quote totals once this feature is activated.

An additional limitation applies to IronPython scripting: QuoteItem.VCPricingPayload and QuoteItem.VCItemPricingPayload aren't supported if pricing procedure mapping is enabled.

Yes
No