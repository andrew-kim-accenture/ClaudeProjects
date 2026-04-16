# Create Communication Arrangement Using Communication Scenario SAP_COM_0008 for Business Partner Replication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/8aca4fbc82194aafa05761a5386307e6.html?locale=en-US&state=PRODUCTION&version=2603
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
Create Communication Arrangement Using Communication Scenario SAP_COM_0008 for Business Partner Replication

Purpose

This section describes how to set up a communication scenario SAP_COM_0008 for Master Data Integration for a Business Partner, Customer via the Communication Arrangement app.

The communication arrangement in the SAP S/4HANA Cloud system defines all relevant information for the interface. It contains the communication system, inbound and outbound authentication.

Procedure

Log on to the SAP Fiori launchpad as an administrator.

Open the Communication Arrangements app.

To create a new communication arrangement, choose New.

In the New Communication Arrangement dialog box, enter the following data:

Field

	

Value




Scenario

	
SAP_COM_0008 (Business Partner, Customer, and Supplier Integration)
Tip

You can use the value help to search for a specific scenario.




Arrangement Name

	

Enter the communication arrangement name, for example, <SAP_COM_0008_MDI_BusinessPartner>

Choose Create.

Maintain Common Data.

In the Communication System field, select the communication system for SAP Master Data Integration connections created in the Create Communication System topic, for example, <MDI_123>.

Note

For all the service endpoints, you must add the prefix /cxf to the path. Ensure that the service URLs match the configuration of endpoints in the respective integration flows.

Deactivate all IDOC-based outbound services. To find out if a service is IDOC-based, look at the Application Protocol field.

The following Outbound Services must be active, and the details filled as follows:
Note

TenantId is the identity zone from service key of SAP Master Data Integration instance.

Outbound Service

	

Service Status

	

Application Protocol

	

Port

	

Path

	

Service URL

	

Use WSRM




Business Partner - Replicate from SAP S/4HANA Cloud to Client

	

Active

	

SOAP

	

443

	

Path to the SAP Master Data Integration Business Partner Replication, for example </cxf/businesspartner/v0/soap/BusinessPartnerBulkReplicateRequestIn?tenantId=masterdata>

	

Automatically put together from protocol, SAP Cloud Integration hostname and Path

	

No

For the Additional Properties of the active Outbound Service “Business Partner - Replicate from SAP S/4HANA Cloud to Client”, select the following values:

Property Name

	

Property Value




Replication Model

	

Enter a name to indicate what the replication model does, for example, <RE_BP_MDI>




Replication Mode

	

I (initial load)




System Filter

	

Optional




Output Mode

	

D (direct output)

Choose Save.

The communication arrangement is now active.

On this page
Purpose
Procedure
Yes
No