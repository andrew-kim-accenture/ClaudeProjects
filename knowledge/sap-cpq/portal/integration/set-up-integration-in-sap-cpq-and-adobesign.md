# Set Up Integration in SAP CPQ and AdobeSign | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/edab3207199c440c8f7a14a297715d39.html?locale=en-US&state=PRODUCTION&version=2603
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


	
AdobeSign Signing Process Example
	
Set Up Integration in SAP CPQ and AdobeSign
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Set Up Integration in SAP CPQ and AdobeSign

The integration with AdobeSign needs to be set up both on the SAP CPQ and the AdobeSign side.

Procedure
In SAP CPQ, go to Setup  Providers  Third-Party Integrations  AdobeSign.
Enable the switch Enable AdobeSign integration.
In the field Base URL (required), enter the URL of your AdobeSign account.
In a new browser tab, log in to your AdobeSign account.
Go to Acrobat Sign API  API Applications.
Click the plus icon to create a new application.
In the pop-up window that displays, specify a name, display name, and select CUSTOMER or PARTNER for the domain, depending on your requirements.
Save your changes and exit the window.
In the API tab in AdobeSign, click on the active row (the application you just created) and click View/Edit.
Copy the Application ID and Client Secret and save these values elsewhere.

You need to save these values in your notes in order to add them in SAP CPQ in one of the subsequent steps.

Close the window.
While the active row is still selected, click Configure OAuth for Application.
Check the redirect URL. If your SAP CPQ environment URL isn't there, add it at the end in the following format: ;https://{CpqEnvironmentUrl}/admin/EsignAuthentification.aspx and save your changes.
Return to the tab where the SAP CPQ page AdobeSign Provider Settings is open.
Paste the previously copied application ID from AdobeSign into the Client ID field, and paste the client secret from AdobeSign into the Client Secret field.
Click Set Administrator Account and log in using your AdobeSign credentials.
Once you are successfully logged in, click Close to proceed further.

You are now redirected to the SAP CPQ settings page.

Click Test Authentication Settings to verify that the settings you have entered are correct.
Click Save.

The integration setup is now complete.

Note

Make sure that the parameter Hide Send Email Form after document generation in Setup  Quotes  Email Customers / Quote Acceptance Settings is set to FALSE to be able to send a document for e-signing.

Note

In case your account requires the new API version, and cannot work with the old version, click Enable OAuth 2.0 on the AdobeSign provider page in SAP CPQ to enable the new API.

Yes
No