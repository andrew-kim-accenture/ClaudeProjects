# Create Communication Arrangement Using Communication Scenario SAP_COM_0092 for Enterprise Eventing Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/af737c0190154256a01339e10a979c9a.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Maintaining Trust Between SAP Cloud Integration and SAP S/4HANA Cloud
	
Create Communication User
	
Create Communication Systems in SAP S/4HANA Cloud
	
Create Communication Arrangements


	
Create Communication Arrangement Using Communication Scenario SAP_COM_0706 for Solution Order
	
Create Communication Arrangement Using Communication Scenario SAP_COM_0092 for Enterprise Eventing Integration
	
Create Communication Arrangement Using Communication Scenario SAP_COM_0009 for Products
	
Create Communication Arrangement Using Communication Scenario SAP_COM_0008 for Business Partner Replication
	
SAP Cloud Integration Configuration
	
Data Replication
	
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
Create Communication Arrangement Using Communication Scenario SAP_COM_0092 for Enterprise Eventing Integration

Purpose

This section describes how to set up communication scenario SAP_COM_0092 Enterprise Eventing Integration by using the Communication Arrangement app.

Procedure

Log on to the SAP Fiori launchpad as an administrator.

Open the Communication Arrangements app.

To create a new communication arrangement, choose New.

In the New Communication Arrangement dialog box, enter the following data.

Field

	

Value




Scenario

	
SAP_COM_0092 (Enterprise Eventing Integration)
Tip

You can use the Value Help to search for a specific scenario.




Arrangement Name

	

Enter the communication arrangement name, for example, <6BV_Enterprise_Eventing_SAP_COM_0092>




Communication User

	

Enter the communication user created, for example, <COM_USER_S4C>




Service Key

	

Enter the complete service key of the SAP Event Mesh service instance

Choose Create.

Open the Enterprise Event Enablement Configure Channel Binding app.

Choose the Channel with the name of the Communication Arrangement created above, for example, <6BV_Enterprise_Eventing_SAP_COM_0092>.

Under the Outbound Topic Bindings, choose Create.

Choose the Topic, sap/s4/beh/businesssolutionorder/v1/BusinessSolutionOrder/ErrorResolved/v1.

Choose Create.

On this page
Purpose
Procedure
Yes
No