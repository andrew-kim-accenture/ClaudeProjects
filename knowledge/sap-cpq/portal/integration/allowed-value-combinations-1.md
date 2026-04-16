# Allowed Value Combinations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/bc3ab28805e147fea62d59127e401583.html?locale=en-US&state=PRODUCTION&version=2603
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
Allowed Value Combinations

When mapping pricing procedure conditions to SAP CPQ fields, there are limitations as to which combinations of values are allowed in the fields. If you attempt to save an invalid combination, an error message appears.

Provided here is a list of these limitations.

On the pricing condition mapping tab, the fields Step, Name, Pricing Frequency are required, and one SAP CPQ quote item or header field must be selected for every mapping.

The following combinations are allowed:

The same quote item field can be mapped to different pricing conditions. Different pricing frequencies (monthly and yearly) need to be used. This is done in the case of recurring price quote fields because the same field is used in SAP CPQ, but different pricing conditions are used in the back end. The item price period determines which condition mapping is used.

The same quote field can be mapped to the same pricing condition multiple times, but the pricing frequency needs to be different. This is done for the quote field MRC Discount Percent, which is mapped to the same pricing condition in case the item price period is monthly or yearly.

Different quote fields can be mapped to the same pricing condition. This is done for the quote fields MRC Discount Percent and NRC Discount Percent. The Pricing Frequency should be defined as Monthly or Yearly for mappings for the MRC Discount Percent, while One-Time should be selected for mapping for NRC Discount Percent. The mapping used on the quote item level depends on the item price period. In the screenshot, in the first two mappings, the same quote item field is mapped twice to the same condition, but with different pricing frequencies (monthly and yearly). With the third mapping, we also see different quote item fields mapped to the same condition.

When different quote fields are mapped to the same pricing condition, the mappings can have the same selection for Rate/Value.

Step must be unique for every pricing condition.

Pricing Condition must be either unique for every pricing condition or empty. If it is not specified, Step is used for identifying the pricing condition instead.

The combination of a mapped quote field and a pricing frequency is unique and multiple mappings can’t have that same combination.

Pricing Frequency can’t be specified when the selected quote field is a quote header field.

Related Information
Order Creation/Update Mapping
Quotes API Example Payload
Yes
No