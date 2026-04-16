# Distribution Model for SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/f53d1a448c714411baa99c36a1eec4e4.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Service Instances in SAP Master Data Integration for Business Partners replication
	
Outbound Destination for Business Partner for SAP CPQ
	
Distribution Model for SAP CPQ
	
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
Distribution Model for SAP CPQ

Procedure

Go the SAP BTP subaccount where the SAP Master Data Integration instance is created. Choose Services  Instances and Subscriptions.

Select Subscriptions  Master Data Integration Application.

Choose Manage Distribution Model.

Choose Create.

Provide a name for the Model and select sap.odm.businesspartner.BusinessPartner in the Business Object Type dropdown.

Choose the Continuous Distribution checkbox if you want the business partners to be replicated as soon as they are created/updated.

Provide a value for Package Size. 

The package size specifies the maximum number of objects that can be contained in a single outbound XML message from SAP Master Data Integration to the client system.

Select Mode as Push.

Maintain a Description with Language as English and Item, for example, <Replicate Business Partner>.

Select the version 2.1.1 for SOAP API under the Provider Interface API as MDI_SOAP_BUSINESS_PARTNER.

To create a Provider, choose Create and select MDI as the provider.

Similarly, select the target destination as the Business system name used while creating SAP CPQ Destination for the Consumer.

Set Data Filters if required.

Activate the replication model.

Yes
No