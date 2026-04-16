# Product Master | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/93e628d811744f47adc0dea7d11db9c2.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Preparation
	
Configuration in SAP CPQ
	
Configuration in SAP Event Mesh
	
Configuration in SAP Master Data Integration
	
Configuration for Integration in SAP S/4 HANA Cloud
	
SAP Cloud Integration Configuration
	
Data Replication


	
Business Partner (Customer Master)
	
Product Master
	
Verify Products in SAP CPQ
	
Verify Business Partners in SAP CPQ
	
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
Product Master

Procedure

Log on to your SAP S/4HANA Cloud system as an Administrator.

Under Data Replication, choose the Replicate by Replication Model app.

In the Replication Model field, select Product Replication Model, for example, <RE_PRD_CPQ>.

In the Replication Mode section, choose the Initialization radio button.

Choose Display Filter Criteria.

Choose Edit to adapt the filter criteria.

In the Main Filters, choose Filter Object, MDM:FILTER FOR Product Service.

If you want to replicate specific product, then enter the filter criteria as follows under Filter Criteria to Include Business Object:

Field

	

Operator

	

User Action Values




Material Number

	

<equal to >

	

For example, <TG11>

Choose Apply  Save.

Close the browser window and return to the Replicate by Replication Model screen.

Choose Replicate.

Yes
No