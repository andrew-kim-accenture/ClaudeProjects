# Identity Provisioning Service Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/1d61f1603ee94390a2e4a58a5890c8c3.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Integrate SAP CPQ and Identity Provisioning Service (Example Scenario)
	
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
Identity Provisioning Service Integration

The integration with the Identity Provisioning Service enables provisioning users and user groups between SAP CPQ and Identity Provisioning.

Users and user groups are provisioned via the SCIM API.

Learn more about SCIM API

Check the endpoints for managing users

Check the endpoints for managing user groups 

Supported Scenarios

When integrated with Identity Provisioning, SAP CPQ can be set up as either the source system, target system or proxy system.

SAP CPQ as Source System

When SAP CPQ is set up as the source system, it contains users and user groups that are provisioned to Identity Provisioning. This scenario is applicable for clients who get a new Identity Provisioning tenant and want to provision existing users and user groups from SAP CPQ.

Learn how to set up SAP CPQ as the source system

SAP CPQ as Target System

Users and user groups can be sourced from Identity Provisioning and provisioned to SAP CPQ which, in that case, should be set up as the target system. This is the most common scenario for user provisioning.

Learn how to set up SAP CPQ as the target system

SAP CPQ as Proxy System

SAP CPQ can be set up as a proxy connector for executing hybrid provisioning scenarios. In such scenarios, SAP CPQ provisions its users and user groups to another (external) back-end system by request, and then CRUD operations are executed back in the SAP CPQ system, whenever the external back-end system makes such a request.

Learn how to set up SAP CPQ as the proxy system

Note

To use Identity Provisioning as an identity provider, you need to set up the federated single sign-on in SAP CPQ. Consult Federated Single Sign-On for detailed instructions and Integrate SAP CPQ and Identity Provisioning Service (Example Scenario).

Note

Once you've integrated SAP CPQ with Identity Provisioning, you can set up multi-factor authentication for each role for additional security.



Integrate SAP CPQ and Identity Provisioning Service (Example Scenario)

Yes
No