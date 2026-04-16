# Prerequisites | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/48ced0ec960045f8a1abf0ae04f26dfb.html?locale=en-US&state=PRODUCTION&version=2603
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


	
System Information
	
Prerequisites
	
Maintain Pricing Procedure in SAP S/4HANA Cloud
	
Configuration in SAP CPQ
	
Configuration in SAP Event Mesh
	
Configuration in SAP Master Data Integration
	
Configuration for Integration in SAP S/4 HANA Cloud
	
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
Prerequisites

It is mandatory that the below scope Items are active:

6BV (Solution Order Quotation Management with SAP CPQ)

4GT (Solution Order Management)

6HY (Solution Order Management with Advanced Variant Configuration)

Depending on your configuration environment for SAP S/4HANA Cloud, choose one of the following options to check the status:

Manage Your Solution: In the SAP S/4HANA Cloud system, in the SAP Fiori launchpad, open the Manage Your Solution app and go to View Solution Scope.

SAP Central Business Configuration: In the Explore phase, navigate to the Activities tab. Search for Define Scope, and choose Open

Note

Your SAP Cloud Integration tenant has been provisioned. For more details, refer to Initial Setup.

If one of the scope items isn’t active, please request the activation via Support Ticket on Component: XX-S4C-OPR-SRV.

Scope Item 1NN (Business Event Handling) must be active.

You can use the component CA-GTF-INT for addressing any integration issues related SAP S/4HANA Cloud.

You need an administrative business user for SAP S/4HANA Cloud that contains the business catalog SAP_CORE_BC_COM (Communication Management).

You can create your own business roles using the templates, for example, the business role SAP_BR_ADMINISTRATOR (Administrator).

For further instructions, refer to Identity and Access Management in the General Functions for the Key User documentation Identity Access Management.

There are some general prerequisites that need to be fulfilled so that users could integrate SAP CPQ and SAP S/4HANA Cloud:

Contact your Network Security team to prepare the network environment across different systems and to set its security aspects.

Quote 2.0 should be enabled in the SAP CPQ tenant.
Note

This integration is not supported in Quote 1.0.

Providers for SAP General Attribute Mappings, SAP Variant Configuration and Pricing, SAP S/4HANA / SAP ERP and SAP Billing and Revenue Innovation Management in SAP CPQ should be active. Although SAP Billing and Revenue Innovation Management is not part of the integration landscape, enabling this integration in SAP CPQ unlocks specific settings that are mandatory for the SAP CPQ - SAP S/4HANA Cloud Solution Order integration.

The application parameter Allowed origins for the CORS filter must be configured in SAP CPQ. When one or more domains are entered in this field, only the API calls originating from those domains are allowed. To integrate SAP CPQ with other applications, if the parameter is not set to *, it is necessary to fill out the field with the URL of your tenant and the URLs of the integrated applications to enable API communication. Values are separated with a ';'.

SAP CPQ and SAP S/4HANA Cloud must be synchronized in terms of product (material) master, Business Partners. Product master is integrated via SAP Cloud Integration. Business Partner is integrated via SAP Master Data Integration followed by SAP Cloud Integration.
Note

Sales Organizational Data is not replicated, so they need to be created manually in SAP CPQ.

Yes
No