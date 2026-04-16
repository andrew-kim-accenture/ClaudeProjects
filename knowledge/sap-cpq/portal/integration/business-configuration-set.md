# Business Configuration Set | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/87276f01f85a4402abd8d8cb2cf2555d.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create User
	
Certificate Management in SAP S/4HANA
	
Release Inbound Interfaces
	
Create Business System for SAP S/4HANA
	
Define Logical System
	
Business Partner Replication from SAP S/4HANA to SAP CPQ
	
Material Replication from SAP S/4HANA to SAP CPQ using SOAP
	
Configuration for Filter Values
	
Business Configuration Set
	
Automatically Generate Integration Settings for Data Exchange
	
Pricing Condition Filter
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ
	
Initial Data Load
	
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
Business Configuration Set

Business Configuration Set C4C_INTEGRATION_CS and C4C_INTEGRATION_CC contains additional customizing setting for SAP CPQ and SAP S/4HANA integration. BC set C4C_INTEGRATION_CC contains client-independent customizing entries for the ALE message types. Activate this BC set in the SAP S/4HANA client you use for cross-client customizing.

Procedure to activate Client Specific BC SET

Open transaction SCPR3

Choose New BC Set Selection  Select by Texts.

In the dialog box enter BC Set name C4C_INTEGRATION_CS and choose Execute.

Double click on the BC Set ID and choose Continue in the BC Set Consistency Check pop-up window.

Choose Copy BC Set

In the following dialog box, enter the new BC Set name and short text.

Example: Z_CPQ_INTEGRATION_CS and SET CPQ Integration Customizing - client specific.

Choose Local Object or select a transport request if required.

Choose Define Favorites

Choose Change mode and choose Continue in the BC Set Consistency Check dialog box.

Right click on the node Maintenance View Variant for C4C CO Scenario in the structure and choose Remove Cust. Object from BC Set.

Right click on the node Business Transaction Events in the structure and choose Remove IMG Activity from BC Set.

Choose Save

Open transaction SCPR20

In the field BC Set, input the BC Set Name Z_CPQ_INTEGRATION_CS.

Choose Activate BC Set (F7) on the application tool bar.

Save it in a customizing request if there is a dialog box

In the next pop-up, choose Continue Activation with default value.

Note

Ignore if there are any warning messages during the activation of the BC set.

Procedure to Activate Cross Client BC SET

Open transaction SCPR3

Choose New BC Set Selection  Select by Texts.

In the dialog box enter BC Set name C4C_INTEGRATION_CS and choose Execute.

Double click on the BC Set ID and choose Continue in the BC Set Consistency Check pop-up window.

Choose Copy BC Set

In the following dialog box, enter the new BC Set name and short text.

Example: Z_CPQ_INTEGRATION_CS and SET CPQ Integration Customizing - cross client.

Choose Local Object or select a transport request if required.

Open transaction SCPR20

In the field BC Set, input the BC Set Name Z_CPQ_INTEGRATION_CS.

Choose Activate BC Set (F7) on the application tool bar, and create a new request for this.

Note

Ignore if there are any warning messages during the activation of the BC set.

On this page
Procedure to activate Client Specific BC SET
Procedure to Activate Cross Client BC SET
Yes
No