# Configuration in DocuSign | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/e0aac8ebce7a4e708d9e3ed56613ba30.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Configuration in DocuSign
	
Configuration in SAP CPQ
	
DocuSign Integration for Quote 1.0
	
DocuSign Integration for Quote 2.0
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Configuration in DocuSign

Using these instructions, you can configure the SAP CPQ - DocuSign integration on the DocuSign side. The instructions can be used with both quote engines, and differences specific to Quote 2.0 are highlighted as notes.

To get started, you must create a DocuSign account. You’ll receive an email from DocuSign to activate the account.

DocuSign integration account/user needs to have two settings checked on the account otherwise the integration WILL NOT work. This has to be done by DocuSign Support so a support ticket has to be logged to DocuSign if these settings aren’t checked for the integration user.

In-session- Checked (that is, Enabled)

Certificate Enforcement Status - Checked (that is, Don't Enforce In Session Certificate)

Note
If you are using Quote 2.0, in order for the integration to work, you must disable options in the administrator settings that are related to Delegation of Authority. Complete the following steps:

Open your DocuSign administrator account and go to Settings  Signing Settings.

Deselect the following options:

Allow recipients to change signing responsibility

Allow recipients to assign delegated signer

Save your changes.

In addition, in order for the integration to work in Quote 2.0, the connect key from DocuSign needs to be activated in your environment. You can directly update the DocuSign provider page with the secret key which you obtain from your DocuSign account. Complete the following steps:

Open your DocuSign administrator account and go to Settings  Connect  Connect Keys.

Click Add Secret Key.

Update the Connect Key on the DocuSign provider page in the Setup with the connect key from DocuSign.

The application and integration key should be added in the section Settings  Apps and Keys in DocuSign, and other parameters in that section should be configured (including Authentication and Redirect URIs).

DocuSign Envelope Expiration

When document is sent from SAP CPQ to DocuSign, DocuSign Envelope is created and its expiration time is set. The default expiration period is 120 days. This can be changed in DocuSign Settings  Preferences  Account Administration   Reminders & Expirations.

For more details, refer to this article: DocuSign - Reminders and expirations.

DocuSign Time Out

Clicking on link received through email, DocuSign recipient token is created for current recipient / signer. Recipient token expires five minutes after it’s issued by DocuSign. If a recipient token URL is accessed after token expiration, the user is redirected to SAP CPQ callback URL with event code “TTLExpired”.

For more details, please refer to this page: DocuSign Time Out

Set up API Request Logging

To follow all requests and responses to and from DocuSign API, you should enable API logging. To do so, on in DocuSign Settings go to Preferences  Member Options  Permissions. Under the DocuSign API Options group, select the Enable API Request Logging checkbox.

Related Information
Configuration in SAP CPQ
On this page
DocuSign Envelope Expiration
DocuSign Time Out
Set up API Request Logging
Related Information
Yes
No