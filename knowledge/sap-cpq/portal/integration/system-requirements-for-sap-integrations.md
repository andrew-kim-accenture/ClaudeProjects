# System Requirements for SAP Integrations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/7fb5deda02624ffb96b4093064cf7a94.html?locale=en-US&state=PRODUCTION&version=2603
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
System Requirements for SAP Integrations

Before integrating SAP CPQ with another SAP application, please make sure that you meet all the necessary system requirements and own the required components.

The provided information is valid for the current release of SAP CPQ.

Application

	

System Requirements

	

Other Required Components




SAP ERP for simple products (without variant configuration)

	

SAP ERP 6.0 EHP 0 or higher

	

SAP Cloud Integration

ERP C4 Integration Add-On CODERINT




SAP S/4HANA On-Premise

	

SAP S/4HANA version 1809 or higher

	

SAP Cloud Integration

In case configurable products are in use: SAP Variant Configuration and Pricing




SAP ERP for variant configuration products

	

SAP ERP 6.0 EHP 5 or higher (Unicode System). For detailed system requirements, see SAP Note 2711932 .

It is necessary to own an SAP back end solution with an appropriate database license that allows direct database access for data replication (3rd party DB, SAP Hana Platform). For further details and more information about interoperability and maintenance rules for Data Provisioning (DP) Agent, see SAP Note 2546811 .

Supported SAP ERP back-end databases per listed data provisioning adapters (DP Adapter) are listed in SAP Note 2546811 .

Cluster and pool table access in SAP ERP is only supported on UTF-16 Unicode databases. See SAP Note 2511048 .

	

SAP Cloud Integration

ERP C4 Integration Add-On CODERINT

SAP Variant Configuration and Pricing (comes with SAP CPQ, edition for variant configuration)




SAP Sales Cloud

	

SAP Sales Cloud version 1905 or higher

SAML 2.0 Single Sign On needs to be established so that users are authenticated in SAP CPQ when navigating from SAP Sales Cloud.

	

SAP Cloud Integration

SAP ERP or SAP S/4HANA as a source system of product master and customer master (out of the box, SAP CPQ and SAP Sales Cloud do not share the same product (material) master)




SAP Commerce

	

SAP Commerce (on premise) version 1811 or higher, or SAP Commerce Cloud version 1811 or higher

(Request-for-Quote Scenario)

	

SAP Cloud Integration

In case configurable products are in use in SAP ERP or SAP S/4HANA: SAP Variant Configuration and Pricing. Works with SAP Commerce Cloud only. SAP Commerce on premise only supports simple products.




SAP Commerce Cloud 2211 and Spartakus 6.3.

(Configurable Products)

Related Information
SAP S/4HANA Sales Order Integration for Quote 1.0
SAP ERP Integration for Quote 1.0
Variant Configuration Integration
SAP Sales Cloud Integration
SAP Commerce Cloud Integration for Quote 1.0
Yes
No