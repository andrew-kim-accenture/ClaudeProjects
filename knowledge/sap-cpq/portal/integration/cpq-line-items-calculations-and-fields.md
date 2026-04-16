# CPQ Line Items Calculations and Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/a259d5ead1f143319d0cf75e5423ce4c.html?locale=en-US&state=PRODUCTION&version=2603
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
CPQ Line Items Calculations and Fields

The possibility to have mix of variant-priced items with items that are priced in SAP CPQ has been introduced. For SAP CPS priced items, only variant calculations are executed on the item level. For SAP CPQ priced items, only standard SAP CPQ calculations are being executed on the item level.

Line Items calculations and fields are not visible when document pricing is used but for the combined SAP CPQ and variant pricing items on the same quote, but it can be enabled by deactivating (switched off to False) the Use Back-End Pricing on Quote Totals switch on the Pricing Procedures.

There must be a section for line items on the Fields, Calculations, Layout, on the first tab Fields and Calculations. In this section, the user must be able to add standard SAP CPQ calculations. SAP CPS calculation should not be added, because they will not have any effect on SAP CPQ items.

On the Field Editability tab, there must be an option to set up field editability for line item fields.

Yes
No