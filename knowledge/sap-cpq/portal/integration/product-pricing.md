# Product Pricing | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/79a3ea14f2b540d197f15b5de2050914.html?locale=en-US&state=PRODUCTION&version=2603
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


	
SAP S/4HANA Sales Order Integration for Quote 1.0


	
Purpose
	
Preparation
	
Configuration


	
Configuration in SAP S/4HANA
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ
	
Initial Data Load


	
Business Partner (Customer Master)
	
Product Master
	
Product Pricing
	
Manual Build Steps
	
SAP S/4HANA Sales Order Integration for Quote 2.0
	
SAP Billing and Revenue Innovation Management Integration
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
Variant Configuration Integration
	
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
Product Pricing

Access the transaction SE38.

Enter the report name RCOD_CONDITIONS_EXTRACT and click on Execute.

Enter the following details and click Execute:

Enter the following details:

Field

	

Valuue




Sales Organization

	

For example: 1000




Distribution Channel

	

For example: 10




Valid from

	

A valid date




A valid date




Logical System

	

<Logical system of the SAP CPQ>




Test Mode

	

Unchecked




Table

	

304(Material with release status)

The condition records created with the provided data are replicated to SAP CPQ.

Execute the report by changing the scale type to B (retaining the other inputs) for which IDoc filtering is not maintained.

Note

Go to Tcode BD87 in SAP S/4HANA system to process the Idoc if it is not triggered automatically.

Yes
No