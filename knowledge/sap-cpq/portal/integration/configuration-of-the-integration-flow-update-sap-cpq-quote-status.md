# Configuration of the Integration Flow - Update SAP CPQ Quote Status | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/9a2641b939364861a8ae871172623e46.html?locale=en-US&state=PRODUCTION&version=2603
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
Configuration of the Integration Flow - Update SAP CPQ Quote Status

Procedure

Access the SAP Cloud Integration Web UI from the provisioning email. It should be in the format, http://<tenant management node URL>/itspaces.

Choose the Design and select the copied integration package.

Choose Artifacts  Actions  Configure for the integration flow, Update CPQ Quote Status.

The configuration of the sender system (in this case, SAP Event Mesh), the receiver system (in this case, SAP CPQ), and additional information is explained in the following topics:

Sender Tab

Field Name

	

Value




Sender

	

SAPEventMesh




Adapter Type

	

AMQP




Host

	
EMS Host, for example, <enterprise-messaging-messaging-gateway.cfapps.sap.hana.ondemand.com>
Note

EMS host name can be fetched from the uri of the service key of EMS instance with protocol ‘amqp10ws’. Make sure to remove wss:// and other url parameters from the uri.




Port

	

443




Path

	

/protocols/amqp10ws




Credential Name

	

Credentials created above for SAP Event Mesh, for example, <COM_USER_EM_CLOUD>




Queue Name

	

Queue name with the format ‘queue:queue path created in SAP Event Mesh’ for example as, for example, <queue:sap/CPQS4HC/SOLUTIONORDER/S4HCCPQQueue>




Number of Concurrent Processes

	

1

Receiver Tab
The receivers can be configured individually by choosing from the receiver dropdown:

Field

	

Value




Receiver

	

SAP_CPQ_ACCESS_TOKEN




Adapter Type

	

HTTP




SAP CPQ Host

	

URL of the SAP CPQ host. For example, <www.yourdomain.cpq.cloud.sap>




Authentication

	

For Basic or Client Credentials Authentication using the Access Token select None from the dropdown.

Note

Make sure that the Credentials – “CPQCredentials” is created in SAP Cloud Integration.

For Client Certificate Authentication select Client Certificate from the dropdown then provide Private Key Alias of the certificate.

Field Name

	

Value




Receiver

	

CPQRead

CPQSend




Adapter Type

	

HTTP




Address

	

SAP CPQ API to update the quote. (Prepopulated)




CPQ Host

	

URL of the SAP CPQ Host without ‘https://’




Timeout (in ms)

	

Time until connection timeout.

Default value is 60000.

Field Name

	

Value




Receiver

	

S4HC




Adapter Type

	

HCIOData




Address

	

Address of SAP S/4HANA Cloud API to post solution order (Prepopulated)




S4HANA Cloud Tenant

	

SAP S/4HANA Cloud tenant address without ‘https://’, for example, <my300470-api.s4hana.ondemand.com>




Authentication

	

Basic




Credential Name

	

Credentials created for SAP S/4HANA Cloud, for example, <COM_USER_S4C_CLOUD>

Field Name

	

Value




Receiver

	

SAP EventMeshRetry




Adapter Type

	

AMQP




Host

	
SAP Event Mesh Host, for example, <enterprise-messaging-messaging-gateway.cfapps.sap.hana.ondemand.com>
Note

EMS host name can be fetched from the uri of the service key of EMS instance with protocol ‘amqp10ws’. Make sure to remove wss:// and other url parameters from the uri.




Port

	

443




Path

	

/protocols/amqp10ws




Credential Name

	

Credentials created for SAP Event Mesh, <COM_USER_EM_CLOUD>




Destination Name

	

Queue name with the format ‘queue:queue path created in SAP Event Mesh for Retry’ for example as, for example, <queue:sap/CPQS4HC/SOLUTIONORDER/S4HCCPQQueueRetry>




Expiration Period (in s)

	

For example, <3600>

More Tab

Field Name

	

Value




Type

	

Choose All Parameters




CPQ_StatusID_OrderCreatedWithErrors

	
Status ID of the Status Order Created with Errors from SAP CPQ, for example, <42>
Note

Status ID can be fetched from SAP CPQ, Setup  Setup  Workflow/Approval  Statuses  Edit for the Status Name Order Confirmation Pending

If the Status Name Order Confirmation Pending is not available in the list, create it by choosing Add New




CPQ_StatusID_OrderPlaced

	

StatusID in SAP CPQ for the status “Order Placed”. For example, <2>




MaximumRetries

	

Defines how the processing of an event is retried until the processing is ended. For example, <5>




CPQCredentials

	

User credentials created for SAP CPQ, for example, <COM_USER_CPQINT_CLOUD>. For Basic Authentication using Access Token make sure that the credentials are created in SAP Cloud Integration Configuration.




CPQ Grant Type

	

This parameter is used for setting grant type to decide what Authentication type (Basic or Client Credentials) iFlow is using. This works with CPQ_AuthenticationType parameter when the value is None.

Possible values password, client_credentials.

For Basic authentication, value must be password.

For Client Credentials authentication, value must be client_credentials.

Default value is password.


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