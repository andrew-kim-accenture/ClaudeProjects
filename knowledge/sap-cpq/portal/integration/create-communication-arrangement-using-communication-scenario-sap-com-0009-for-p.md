# Create Communication Arrangement Using Communication Scenario SAP_COM_0009 for Products | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/1a9cd17c6ee440569e68dd0c093d90fd.html?locale=en-US&state=PRODUCTION&version=2603
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
Create Communication Arrangement Using Communication Scenario SAP_COM_0009 for Products

Purpose

This section describes how to setup communication scenario SAP_COM_0009 for product via the Communication Arrangement app.

Procedure

Log on to the SAP Fiori launchpad as an administrator.

Open the Communication Arrangements app.

To create a new communication arrangement, choose New.

In the New Communication Arrangement dialog box, enter the following data:

Field

	

Value




Scenario

	
SAP_COM_0009 (Product Integration)
Tip

You can use the value help to search for a specific scenario.




Arrangement Name

	

Enter the communication arrangement name, for example, <SAP_COM_0009_SCI_Product>

Choose Create.

Maintain Common Data.

In the Communication System field, select the communication system for the SAP Cloud Integration connections created in the Create Communication System topic, for example, <SCI_123>. The inbound and outbound communications users are entered automatically.

The following outbound services must be active, and the details are filled in as below:

Outbound Service

	

Service Status

	

Application Protocol

	

Port

	

Path

	

Service URL

	

Use WSRM




Replicate Prduct from S/4 System to Client

	

Inactive

	

IDOC

	

443

	 	 	 


Product Master - Replicate from SAP S/4HANA Cloud to Client

	

Active

	

SOAP

	

443

	

<S4/CPQ/ProductReplicateRequest_Out>

	

Automatically put together from protocol, SAP Cloud Integration hostname and Path

	

No




Product Master - Confirmation from SAP S/4HANA Cloud to Client

	

Inactive

	

SOAP

	

443

	 	 	 
Note

For all the service endpoints, you must add the prefix /cxf to the path. You must also ensure that the service URLs match the configuration of endpoints in the respective integration flows.

For the Additional Properties section of the active Outbound Service "Product Master - Replicate from SAP S/4HANA Cloud to Client", select the following values:

Property Name

	

Property Value




Replication Model

	

Enter a name that indicates what the replication model does, for example, <RE_PRD_CPQ>




Replication Mode

	

I (initial load)




System Filter

	

Optional




Output Mode

	

D (direct output)

Choose Save.

The communication arrangement is now active.

On this page
Purpose
Procedure
Yes
No