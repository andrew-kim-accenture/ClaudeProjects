# Quotes API Example Payload | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/d5ebe25a1506488eba4cb0348a577fe0.html?locale=en-US&state=PRODUCTION&version=2603
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
Quotes API Example Payload

Information about pricing conditions is stored in the PricingConditions node of the SAP CPQ Quotes API. Provided here is an example of the payload.

When the Quotes API is called with the parameter below, the payload contains every item on the quote along with all the pricing conditions that are mapped to it: https://yourdomain.cpq.cloud.sap/api/v1/quotes/574/items?$expand=PricingConditions

In this example payload, we see the node which contains the pricing conditions for the quote item that is framed in the screenshot:


"PricingConditions": [ 
            { 
                "PricingProcedureStep": 20, 
                "PricingProcedureStepCounter": 1, 
                "ConditionBase": "5.000000", 
                "ConditionType": "PPR0", 
                "ConditionTypeDescription": "Price", 
                "ConditionRate": "250.000000", 
                "ConditionCurrency": "USD", 
                "ConditionUnit": "EA", 
                "ConditionUnitQuantity": "1.000000", 
                "IsVariantCondition": false 
            }, 
            { 
                "PricingProcedureStep": 520, 
                "PricingProcedureStepCounter": 1, 
                "ConditionBase": "5.000000", 
                "ConditionType": "DPD1", 
                "ConditionTypeDescription": "Discount Percent", 
                "ConditionRate": "-30.000000", 
                "IsVariantCondition": false 
            }, 
            { 
                "PricingProcedureStep": 40, 
                "PricingProcedureStepCounter": 1, 
                "ConditionBase": "5.000000", 
                "ConditionType": "ZMSC", 
                "ConditionTypeDescription": "Manual Surcharge", 
                "ConditionRate": "70.000000", 
                "ConditionCurrency": "USD", 
                "ConditionUnit": "EA", 
                "ConditionUnitQuantity": "1.000000", 
                "IsVariantCondition": false 
            } 


Related Information
Order Creation/Update Mapping
Allowed Value Combinations
Yes
No