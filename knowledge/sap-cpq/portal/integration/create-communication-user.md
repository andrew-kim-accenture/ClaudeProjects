# Create Communication User | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/b0b98de904af40968194efd7aea4380f.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Communication User


	
Client Certificate Authentication in SAP CPQ
	
Enable the Integration with SAP Cloud Integration
	
Enable Integration with SAP S/4 HANA ERP
	
Enable Integration with SAP Variant Configuration and Pricing
	
SAP General Attribute Mappings
	
Pricing Setup
	
Configure Workflow in SAP CPQ
	
Partner Functions
	
Product Replication Setup
	
Enable Quote and Item Comments
	
Configuration in SAP Event Mesh
	
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
Create Communication User

A communication user must be created in the SAP CPQ system, which will be used in SAP Cloud Integration for basic authentication to SAP CPQ.

Procedure

Log on to the SAP CPQ system using an Administrator user.

In the left menu bar, choose Setup  Setup.

In left navigation bar, select Users  Users  Add New User.

Enter the First Name, Last Name, and Email for Communication User under General tab.

Enter Username, for example <COM_USER_CPQINT>.

Choose User Type, for example <Sales>.
Note

You must ensure that the Show Prices and Allow Adding Incomplete Items options are enabled for the selected user type in Setup  Users  User Types. For more information about this, refer to Add a New User Type.

Set the Administrator flag.

Select Company.

Choose Save.

Note

After creating the user, the communication user will receive the following two e-mails, one for the SAP CPQ user registration and other for the SAP CPQ password creation. You can login to the SAP CPQ system using the above username and reset the password. The same password must be used in SAP Cloud Integration while creating user credentials.

Set Quote Visbility Rules

By default, users can only view quotes that they have created, in the My Quotes tab of the Quote List page. However, given the appropriate permissions, users can also access other quotes in the Other Quotes tab. To allow a user to see the other quotes, you must create quote visibility rules as explained inthis topic .

Yes
No