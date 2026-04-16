# Creating User Credentials in SAP Cloud Integration System | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/8e09f2d31af949ffa01345006af643a7.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Creating User Credentials in SAP Cloud Integration System
	
Client Certificate Authentication - SAP Cloud Integration Configuration
	
Copy package SAP CPQ - Quote 2.0 Integration with SAP S/4HANA Cloud Solution Order to Design section of SAP Cloud Integration
	
Configuration of the Integration Flow - Replicate Quote 2.0 From SAP CPQ To SAP S/4HANA Cloud Solution Order
	
Configuration of the Integration Flow - Update SAP CPQ Quote Status
	
Configuration of the Integration Flow - Replicate Product from SAP S/4HANA Cloud to SAP CPQ
	
Configuration of the Integration Flow - Replicate Business Partner from SAP Master Data Integration to CPQ
	
Maintain and Deploy Value Mapping for CPQ Integration with S4HANA Cloud for Solution Order
	
iFlow: Supported Grant Types for SAP CPQ API Authentication
	
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
Creating User Credentials in SAP Cloud Integration System

Procedure

Log on to the tenant management node of the SAP Cloud Integration system with the URL, https://<tenant management node URL>/itspaces.

Choose Monitor  Manage Security  Security Material.

Choose Create  User Credentials.

Enter the following user details for SAP CPQ:

Field

	

Value




Name

	

For example, <COM_USER_CPQINT_CLOUD>




Type

	

User Credentials




User

	

Communication user maintained in SAP CPQ # Domain of SAP CPQ system. For example, <COM_USER_CPQINT#CPQ_TENANT>




Password

	

Password maintained for the communication user in the SAP CPQ system.

Choose Deploy.

Choose Create  User Credentials.

Enter the following user details for SAP S/4HANA Cloud:

Field

	

Value




Name

	

For example, <COM_USER_S4C_CLOUD>




Type

	

User Credentials




User

	

For example, <COM_USER_S4C>




Password

	

Password for user maintained in SAP S/4HANA Cloud system.

Choose Deploy.

Choose Create  User Credentials.

Enter the following user details for SAP Event Mesh:

Field

	

Value




Name

	

For example, <COM_USER_EM_CLOUD>




Grant Type

	

Client Credentials




Token Service URL

	

URL from entry tokenendpoint of section with protocol "httprest" in SAP BTP Service Key of the SAP Event Mesh instance.




Client ID

	

ClientID from entry tokenendpoint of section with protocol "httprest" in SAP BTP Service Key of the SAP Event Mesh instance.




Client Secret

	

Client Secret from entry tokenendpoint of section with protocol "httprest" in SAP BTP Service Key of the SAP Event Mesh instance.




Client Authentication

	

Send as Request Header

Choose Deploy.

Yes
No