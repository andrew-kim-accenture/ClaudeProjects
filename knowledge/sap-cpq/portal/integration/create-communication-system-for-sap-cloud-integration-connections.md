# Create Communication System for SAP Cloud Integration Connections | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/5e81dba11e594ce586651c836a09e3e2.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Communication System for SAP Cloud Integration Connections
	
Create Communication System for SAP Master Data Integration Connections
	
Create Communication Arrangements
	
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
Create Communication System for SAP Cloud Integration Connections

Purpose

This communication system is used to connect SAP S/4HANA Cloud to the SAP Cloud Integration.

Procedure
Log on to your SAP S/4HANA Cloud system as an Administrator user.
Note

Your user must have a business role that contains the business catalog SAP_CORE_BC_COM (Communication Management). For example, the business role SAP_BR_ADMINISTRATOR (Administrator) contains this catalog.

Open the Communication Systems app.

Choose New.

In the dialog box, enter the following data and choose Create.

Field

	

Value




System ID

	

Choose a System ID that clearly identifies your Cloud Integration instance, for example <SCI_DEV>




System Name

	

Recommended to use the same name as the System ID, for example, <SCI_123>

Maintain the Host Name of the fully qualified SAP Cloud Integration runtime URL.

Field

	

User Action or Value




Host Name

	

<XXXX-iflmap.avtsbhf.eu1.hana.ondemand.com>.

Note

Ensure that https:// is not included in the host name.

Maintain the Logical System and Business System.

Field

	

User Action or Value




Logical System

	

Recommended to use the same name as the System ID, for example, <SCI_123>




Business System

	

Recommended to use the same name as the System ID, for example, <SCI_123>

Optionally, maintain Contact Information.

Under Users for Inbound Communication, choose Add (+).

In the Username, select the communication user that created in Create Communication User. From the Authentication Method dropdown list, select Username and Password.

Field

	

User Action or Value




Username

	

Enter the communication user, for example, <COM_USER_S4C>




Authentication Method

	

Choose the preferred authentication method

Choose OK.

Under Users for Outbound Communication, choose Add (+).

From the Authentication Method dropdown list, select Username and Password.

Enter the SAP Cloud Integration Suite technical user credentials
Note

Username and Password are the Client ID and Client Secret, respectively, from the service key of the SAP Cloud Integration instance in the SAP BTP.

Choose Create.

Choose Save to save the communication system.

On this page
Purpose
Procedure
Yes
No