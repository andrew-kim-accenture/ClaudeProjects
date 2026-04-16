# Set Up Pricing Procedure in SAP ERP | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/52658e31325740ca8ffc96753c01dcba.html?locale=en-US&state=PRODUCTION&version=2603
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
Set Up Pricing Procedure in SAP ERP

In order to set up the pricing procedure, adjustments need to be maintained in SAP ERP, along with the settings in SAP General Attribute Mappings on the SAP CPQ side.

Prerequisites
In SAP ERP, you must activate business function ERP_IPC_INT_PRC (transaction SFW5) before you can assign condition functions to condition types. If you do not activate the business function, you can still see the total price (net value without shipping costs excluding tax) on the product configuration page, but the price is not broken down into the base price and the option surcharges.
Note

If, in your system, the transaction SFW5 does not list business function ERP_IPC_INT_PRC, please implement SAP Note 2125185  first. In SAP S/4HANA On-Premise, this is activated by default.

Procedure
Create condition functions for the condition types you use for the base price (net value) and the total of the price-relevant options selected, in Customizing for SAP ERP, under Sales and Distribution  Basic Functions  Pricing  Pricing Control  Define Condition Types.

The graphics display the condition type PR00 Price with the condition function ZSS1 for the Base price, and the condition type VA00 Variant Price with the condition function ZSS2 for the Selected options. In step 3 of this procedure, you will enter these condition functions in SAP CPQ in the Base Price and Selected Options fields.

Use these condition types in the pricing procedure that you use for configurable products in Customizing for SAP ERP under Sales and Distribution  Basic Functions  Pricing  Pricing Control  Define And Assign Pricing Procedures.

In the example, the pricing procedure with the name WECNUS is created for configurable products, and condition types PR00 Price and VA00 Variant Price are used in it. In step 3 of this procedure, you will enter the procedure name in SAP CPQ in the field Pricing Procedure Name (in this example the value is WECNUS).

In SAP CPQ, in SAP General Attribute Mappings, fill out the fields Pricing Procedure Name, Base Price and Selected Options with the procedure name and condition functions from SAP ERP, and click Save.

The mapped pricing procedure is now in use.

Related Information
Define SAP General Attribute Mappings
Order Creation/Update Mapping
Technical Overview
Introduction to the Variant Configuration Integration
On this page
Prerequisites
Procedure
Related Information
Yes
No