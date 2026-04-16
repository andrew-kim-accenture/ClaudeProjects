# Creating User Credentials in SAP Cloud Integration System | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/10c34a97b2d34549826f1053d8af3d04.html?locale=en-US&state=PRODUCTION&version=2603
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


	
SAP S/4HANA Sales Order Integration for Quote 1.0


	
Purpose
	
Preparation
	
Configuration


	
Configuration in SAP S/4HANA
	
Configuration in SAP Cloud Integration


	
How to get the SAP Cloud Integration client certificate
	
View prepackaged iFlows using SAP Cloud Integration Web UI
	
Creating User Credentials in SAP Cloud Integration System
	
Configure and Deploy the iFlows Using Web UI
	
Value Mapping for CPQ integration with SAP S/4HANA
	
Configuration in SAP CPQ
	
Initial Data Load
	
Manual Build Steps
	
SAP S/4HANA Sales Order Integration for Quote 2.0
	
SAP Billing and Revenue Innovation Management Integration
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
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

Connect to the tenant management node of the SAP CPI system with the URL http://<tenant management node URL>/itspaces.

Go to the Monitor tab, then Click on Security Material under Manage Security.

Click Add and select User Credentials.

Enter the User detail for SAP CPQ.

Field

	

Value




Name

	

COM_USER_CPQ




User

	

COM_USER_CPQ#{DOMAIN of CPQ System}




Password

	

Enter the password maintained for Communication User in SAP CPQ.

Click Deploy.

Click Add and select User Credentials.

Enter details for user of SAP S/4HANA.

Field

	

Value




Name

	

CPQS4HINTEG




User

	

CPQS4HINTEG




Password

	

Enter the password of User CPQS4HINTEG.

Click Deploy.

Note

In case you have SAP CPS Integrated with SAP S/4HANA, then

Click Add and select OAuth2 Credentials.

Enter details for OAuth2 Credentials of SAP CPS.

Field

	

Value




Name

	

CPSSERVICE




Grant Type

	

Client Credentials




Description

	

CPSSERVICE




Authentication URL

	

Maintain CPS authentication URL e.g. https://cpsservices.authentication.eu10.hana.ondemand.com/oauth/token




Client ID

	

Client ID of CPS system e.g. sb-cpsservices-cpscalliduscloud!t0001




Client Secret

	

Enter the password of the client




Client Authentication

	

Send as Body Parameter




Include Scope

	

Should be ticked




Scope

	

Maintain the scope e.g. uaa.resource




Content Type

	

Application/x-www-form-urlencoded

Click Deploy.

Yes
No