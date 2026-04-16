# Configure Single Sign-On in SAP Cloud for Customer | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/6348ed56b44942d69f08123539bedf58.html?locale=en-US&state=PRODUCTION&version=2603
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


	
SAP Sales Cloud Version 2 - SAP Sales Cloud Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 1.0


	
General Prerequisites
	
Configuration


	
Configuration in SAP CPQ
	
Configuration in SAP Sales Cloud


	
Scoping
	
Fine Tuning
	
Configure Single Sign-On in SAP Cloud for Customer
	
Configuration in SAP Cloud Integration
	
Ticket Components
	
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0
	
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
Configure Single Sign-On in SAP Cloud for Customer

This section describes how to access the target SAP CPQ system without a need to enter the login credentials.

Purpose

With Single Sign-On enabled for both SAP Cloud for Customer and SAP CPQ system using a common Identity provider, business user can access the target SAP CPQ system without a need to enter the login credentials.

Pre-requisite

You should have a license of SAP Cloud Platform Identity Authentication Services.

Procedure

Login to your SAP Cloud Identity Provider account with your admin user.

From the Left Panel, Navigate to Application and Resources  Tenant Settings.

Choose SAML 2.0 Configuration.

On the new Screen, Click on Download Metadata File.

Note

This Metadata is needed when you setup the trust in your SAP Cloud for Customer.

Login to your SAP Cloud for Customer system.

Navigate to the following work center view.

Work Center

	

ADMINISTRATOR




View

	

COMMON TASK

Choose Configure Single Sign-On.

Download SP Metadata file.

Note

This Metadata file is needed when you setup the trust in your SAP Cloud Identity Provider.

In the General Pane. Check the Manual Identity Provider.

Under the section Single Sign-On URL Handling, select the URL sent to Employee as Non-SSO URL and SSO URL.

Choose Identity Provider tab.

Click on New Identity Provider tab. In the pop-up window, import the Metadata file of your SAP Cloud identity provider.

Enter an Alias name for your SAP Cloud identity provider.

Click Save.

Choose Activate Single Sign-On and choose OK on the pop-up dialog box that appears.

Login to your SAP Cloud Identity Provider account with your admin user.

Click on Applications tile to create your SAP Cloud for Customer application.

Click on Add and enter your SAP Cloud for Customer system name.

For Example: C4C-CPQ

Click Save.

In the new Screen, Click on Home URL and enter your C4C SSO URL.

For Ex: https:// <yourTenant>.sso.vlab.sapbydesign.com

Click Save.

In the Trust, Choose SAML 2.0 Configuration and Import the C4C metadata file you have downloaded earlier.

Click Save.

Configure Name ID Attribute as Subject Name Identifier.

Click Save.

Configure Default Name ID Format as Unspecified.

Click Save.

Go Back to the Home Page and Navigate to Users & Authorizations  Import User.

Create a CSV file for all the C4C user you want to enable SSO.

Choose Import.

Choose Send E-mails and Click Send.

Activation E-Mail to all the user will be triggered.

Note

Once the user set their password for the IdP, they can login SAP Cloud for Customer using the SSO URL.

On this page
Purpose
Pre-requisite
Procedure
Yes
No