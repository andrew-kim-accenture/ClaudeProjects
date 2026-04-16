# Adjust Number of Decimals in Rounding Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/2d2848d2cc8449f6a54674e62b1ee622.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems
	
SAP Sales Cloud Integration
	
SAP Commerce Cloud Integration
	
SAP Subscription Billing Integration for Quote 2.0


	
Prerequisites
	
Setup Adjustments on the SAP CPQ Side


	
Adding Subscriptions to Events
	
Set Up SAP Subscription Billing
	
Adjust Number of Decimals in Rounding Setup
	
Basic Integration Scenario
	
Create SAP Subscription Billing Product
	
Set Values for Rate Plan Template Charges
	
Use SAP Subscription Billing Products on User Side
	
Quote Item Fields on SAP Subscription Billing Products
	
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
Adjust Number of Decimals in Rounding Setup
Context
Note

This integration is deprecated.

Procedure
Go to Setup  Pricing/Calculations   Rounding Setup.
Click  next to the Default column name.

The editing page opens.

In Number of Decimals in Calculations, enter 4.
In Number of Decimals when Rounding, enter 4.
Click Save.

The integration is fully set up.

The Default values you specify here apply to all calculations and rounding whenever specific values are not provided. If other values are specified in the Rounding Setup, change them all to 4 for both Number of Decimals in Calculations and Number of Decimals when Rounding by repeating this procedure for every row in the table.

Caution

The number of decimals specified in the Rounding Setup applies to values throughout SAP CPQ. It is not limited to the features introduced with the SAP Subscription Billing integration.

Related Information
Setup Adjustments on the SAP CPQ Side
On this page
Context
Procedure
Related Information
Yes
No