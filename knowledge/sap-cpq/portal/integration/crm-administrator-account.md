# CRM Administrator Account | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/910d394d972e41a4a9c9ac82ba8db7f4.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions
	
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


	
General
	
CRM Objects
	
Custom Fields Mapping
	
Customer Roles Mapping
	
Partner Functions Mapping
	
Opportunity Status
	
CRM Item Mappings
	
Price Book Market Mappings
	
User Mappings
	
CRM Quote
	
CRM Administrator Account
	
Send Document To CRM
	
New Authentication method for COD integration
CRM Administrator Account

This section is used for defining the administrator username and password used to access the CRM Application. The account is used to access the CRM application for lookups in administrative sections.

In addition, it is used in the integration approach method of starting from SAP CPQ. The account set here as the administrator account will be used to connect to the CRM to create and update opportunities and accounts/contacts.

You can define multiple administrator accounts if desired. This can be useful if you have multiple installations of the CRM application, such as a development installation and a production installation. You can then switch between the installation that SAP CPQ integrates with by setting the administrative account of the installation you would like to use as the active account. Keep in mind, though, that doing this will only work if the same fields, opportunity status, and other mappings are the same in the development and production installations.

Go to Setup  CRM Integration  CRM Administrator Account.

The page with all CRM administrators in SAP CPQ is listed.

Click Add New to define a new CRM administrator.

The account definition page displays.

Select the type of CRM that the account refers to.

Enter a username and a password.

(Optional) Select the Is Administrative Account to set this account as the active administrator account.

Note

All passwords are encrypted in the database for security reasons.

Salesforce Security Token
Due to Salesforce security measures, a security token must be added to the password. If you do not know what your security token is, you can obtain it from Salesforce by logging into SFDC and going to Setup  Personal Setup  My Personal Information  Reset My Security Token. If you activate this action, a new security token will be sent to your email address. You should then enter (in SAP CPQ administration) your Salesforce username, and in the password field, you should enter your password and security token joint together (if password = “mypassword” and security token = “XXXXXXXXXX”, you should enter “mypasswordXXXXXXXXXX” ).
Landing from Salesforce to SAP CPQ
When you are landing to SAP CPQ for the first time from Salesforce, a new user is automatically created for you in SAP CPQ. However, if a regular user wishes to land to SAP CPQ for the first time, it is necessary for their SFDC system administrator to have a CRM administrator account in SAP CPQ. Therefore, Is Administrative Account must be set to True on the CRM Administrator Account page.
On this page
Salesforce Security Token
Landing from Salesforce to SAP CPQ
Yes
No