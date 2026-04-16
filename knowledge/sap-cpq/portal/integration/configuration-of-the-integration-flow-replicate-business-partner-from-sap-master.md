# Configuration of the Integration Flow - Replicate Business Partner from SAP Master Data Integration to CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/10d9997570f54ae7a67dca2cbfe363ca.html?locale=en-US&state=PRODUCTION&version=2603
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
Configuration of the Integration Flow - Replicate Business Partner from SAP Master Data Integration to CPQ

Procedure

Access the SAP Cloud Integration Web UI from the provisioning email. It should be in the format, http://<tenant management node URL>/itspaces.

Choose the Design and select the copied integration package.

Choose Artifacts  Actions  Configure for the integration flow, Replicate Business Partner from SAP Master Data Integration to CPQ.

The configuration of the sender system (in this case, SAP S/4HANA Cloud), the receiver system (in this case, SAP CPQ), and additional information is explained in the following topics:

Sender Tab

Field Name

	

Value




Sender

	

S4HANA




Adapter Type

	

SOAP




Address

	

For example, </scpmasterdata/bpreplicationtocpq>




Authorization

	

User role




User Role

	

ESBMessaging.send

Receiver Tab

The receivers can be configured individually by choosing from the receiver dropdown:

Field Name

	

Value




Receiver

	

SAP_CPQ_ACCESS_TOKEN_API




Adapter Type

	

HTTP




SAP CPQ Host

	

URL of the SAP CPQ host. For example, <www.yourdomain.cpq.cloud.sap>




Authentication

	

For Basic or Client Credentials Authentication using the Access Token select None from the dropdown.Note

Note

Make sure that the Credentials – “CPQCredentials” is created in SAP Cloud Integration.

For Client Certificate Authentication select Client Certificate from the dropdown then provide Private Key Alias of the certificate.

Field Name

	

Value




Receiver

	

CPQ




Adapter Type

	

HTTP




Address

	

SAP CPQ API for creating new Business Partner, for example, <https://<SAP CPQ Host>/api/businesspartner/v1/businesspartner> for the API Endpoint /api/businesspartner/v1/businesspartner




SAP CPQ Host

	

URL of the SAP CPQ Host without ‘https://’, for example, <www.yourdomain.cpq.cloud.sap>

Field Name

	

Value




Receiver

	

BusinessPartnerReplicationPostExit




Adapter Type

	

Process Direct




Address

	

Endpoint URL, for example, </S4/CPQ/ BusinessPartnerReplicate_PostExit>

More Tab

Field Name

	

Value




Type

	

Select All Parameters from the dropdown.




CPQCredentials

	

User credentials created for SAP CPQ, for example, <COM_USER_CPQINT_CLOUD>.




Post Processing Extensions Implemented

	

By using an extension, it is possible to call a customer-specific integration flow in the Extension subprocess.

The default value is false.




CPQ Grant Type

	

This parameter is used for setting grant type to decide what Authentication type (Basic or Client Credentials) iFlow is using. This works with CPQ_AuthenticationType parameter when the value is None.

Possible values password, client_credentials.

For Basic authentication, value must be password.

For Client Credentials authentication, value must be client_credentials.

Default value is password.

Deployment

Choose Save after completing the configuration.

Choose Deploy after completing the whole configuration.

Choose Monitor from the left navigation bar.

Choose All from Manage Integration Content.

Check if the deployment was successful. The Status should be Started.

On this page
Procedure
Sender Tab
Receiver Tab
More Tab
Deployment
Yes
No