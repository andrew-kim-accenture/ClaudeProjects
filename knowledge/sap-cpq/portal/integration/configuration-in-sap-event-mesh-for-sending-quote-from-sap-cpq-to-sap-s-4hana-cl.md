# Configuration in SAP Event Mesh for Sending Quote from SAP CPQ to SAP S/4HANA Cloud | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/3cac88f9c11642e2adeafe2ea532d339.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Configuration in SAP Event Mesh for Sending Quote from SAP CPQ to SAP S/4HANA Cloud
	
Configuration in SAP CPQ
	
Configuration in SAP Event Mesh for updating the status of SAP CPQ quote from SAP S/4HANA Cloud after Error Resolution
	
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
Configuration in SAP Event Mesh for Sending Quote from SAP CPQ to SAP S/4HANA Cloud

Purpose

The pre-packaged integration content uses the SAP Event Mesh to process events for the quote integration from SAP CPQ to SAP S/4 HANA Cloud. The sending system does not send the complete document but only a notification about a change of state as an Event.These events are stored in queues in SAP Event Mesh and are picked up from there by the respective integration flows, via the AMQP protocol. To increase stability, the integration uses a retry mechanism to reprocess the event in case of temporary processing errors. To enable this retry mechanism, the integration uses a so-called retry-queue in addition to the main processing queue. For the initial setup of SAP Event Mesh please refer to Setting Up SAP Event Mesh in BTP Cockpit.

Procedure
The following steps describe how to enable the event processing in SAP Event Mesh.

Create Service Key: In the SAP BTP Cockpit navigate to the details of the Event Mesh instance and Create a service key. Provide a service key name, leave the field for the parameters in JSON format empty, and choose Create.

Create a queue for the Business Solution Quote events in SAP Event Mesh: To process the events from SAP CPQ, a queue must be created in SAP Event Mesh.

Navigate to your Cloud Foundry space and select your Event Mesh service instance.

In the left pane, choose Service Instances  Actions  Open Dashboard for the SAP Event Mesh service instance.

In the messaging administration page, choose Message Clients and the Message Client that was created when the instance was created in SAP BTP cockpit.

Select the Queues  Create Queue.

Enter the following details:

Field	Value


Queue Name

	

Enter a queue name, for example, <CPQS4HCQueue>




Access Type

	

NON_EXCLUSIVE




Max Queue Size in bytes

	

Enter a value, for example, <1572864000>




Max Message Size in bytes

	

Enter a value, for example, <10000000>




Max Unacknowledged Messages per Consumer

	

Enter a value, for example, <10000>




Max Redelivery Count

	

Enter a value, for example, <0>




Dead Message Queue

	

None




Respect Time to Live

	

NO

Choose Create.

Choose Actions  Queue Subscriptions for the above created Queue.

Enter a Topic in the format <Namespace>/Topic name, for example, <sap/emcc8/1/CPQORDERPLACEDTOPIC>. You must use the same topic name that is used in Configuration in SAP CPQ.

Choose Add  Close.

The integration flow is using a retry mechanism in case of a temporary error (like a system is not reachable). For this, a so-called retry queue is used in SAP Event Mesh. Follow the below steps to create a queue for retry:

Navigate to your Cloud Foundry space and select your Event Mesh service instance.

In the left pane, choose Service Instances  Actions  Open Dashboard for the SAP Event Mesh service instance.

In the messaging administration page, choose Message Clients and the Message Client that was created when the instance was created in SAP BTP cockpit.

Select the Queues  Create Queue.

Enter the following details:

Field	Value


Queue Name

	

Enter a queue name, for example, <CPQS4HCQueueRetry>

Tip

Use the same name you used for the queue created above and add “Retry” at the end of the name




Access Type

	

EXCLUSIVE




Max Queue Size in bytes

	

Enter a value, for example, <1572864000>




Max Message Size in bytes

	

Enter a value, for example, <10000000>




Max Unacknowledged Messages per Consumer

	

Enter a value, for example, <10000>




Max Redelivery Count

	

Enter a value, for example, <0>




Dead Message Queue

	

Choose the queue that is created above, for example, <CPQS4HCQueue>




Respect Time to Live

	

YES




Max Time to Live in seconds

	

Enter for example, <18000>. If you require a higher interval than 5 hours between retries in the message processing, you can increase this parameter. This parameter sets the maximum time between retries, the actual time can be configured in the integration flow

Choose Create.

On this page
Purpose
Procedure
Yes
No