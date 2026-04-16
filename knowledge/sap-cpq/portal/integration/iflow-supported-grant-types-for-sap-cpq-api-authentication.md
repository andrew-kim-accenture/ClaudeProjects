# iFlow: Supported Grant Types for SAP CPQ API Authentication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/8cde6661e655496ba8285e1c3e8793ba.html?locale=en-US&state=PRODUCTION&version=2603
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
iFlow: Supported Grant Types for SAP CPQ API Authentication

The CPI iFlow will support the following grant types for obtaining access tokens from SAP CPQ to authenticate SAP CPQ APIs:

Basic (username and password).

Client Certificate.

Client Credentials (client ID and client secret).

Basic

Create Security Material with User Credentials type.

Type: User credentials.

User: SAP CPQ user name.

Password: SAP CPQ password.

Repeat Password: SAP CPQ password.

In the iFlow configuration, select the Receiver tab, then select SAP_CPQ_ACCESS_TOKEN receiver.

Authentication: None.

In the iFlow configuration, select the More tab, then fill the following fields:

Field

	

Value




CPQ Grant Type

	

Password.




CPQ Credentials

	

Name of credentials created in the security material with User Credentials type.




CPQ_AuthenticationType

	

None.

Client Certificate

Upload the certificate.

In the iFlow configuration, select the Receiver tab, then select SAP_CPQ_ACCESS_TOKEN receiver.

Authentication: Client certificate.

Private Key Alias: Name of the certificate.

Client Credentials
SAP CPQ Side configuration

Select Trusted Applications (Setup  Security  Security  Trusted Applications).

Add new Trusted Application.

Set Client Credentials Grant to true.

Select the running user.

Note

To make user visible in the search, the user must have Is SSO User checkbox enabled.

CPI Side Configuration

Create Security Material with User Credentials or OAuth2 Client Credentials type.

User Credentials:

Type: User credentials.

User: Generated on SAP CPQ Client ID.

Password: Generated on SAP CPQ Client Secret.

Repeat Password: Generated on SAP CPQ Client Secret.

OAuth2 Client Credentials:

Token Service URL: Follow the format, 'https://{{SAP CPQ Host}}/oauth2/token' where 'SAP CPQ Host' is the absolute path to your CPI instance.

Client ID: Generated on the SAP CPQ Client ID.

Client Secret: Generated on the SAP CPQ Client Secret.

Client Authentication: Send as Request Header.

Content Type: application/x-www-form-urlencoded.

In the iFlow configuration, select the Receiver tab, then select SAP_CPQ_ACCESS_TOKEN receiver.

Authentication: None.

In the iFlow configuration, select the More tab, then fill the following fields:

Field

	

Value




CPQ Grant Type

	

client_credentials.




CPQ Credentials

	

Name of credentials created in Security material with User Credentials or OAuth2 Client Credentials type.




CPQ_AuthenticationType

	

None.

On this page
Basic
Client Certificate
Client Credentials
Yes
No