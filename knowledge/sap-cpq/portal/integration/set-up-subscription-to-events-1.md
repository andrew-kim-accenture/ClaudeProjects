# Set up Subscription to Events | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/dfabab7a59f94d02a0ed972c06bd759e.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions
	
Subscription to Events


	
Set up Subscription to Events
	
Verify Successfully Notified Logs in SAP CPQ Log
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Set up Subscription to Events

Once you are in Setup  Providers   Subscription to Events, you can see the list of existing subscriptions to events. They are divided into several columns:

Actions - this column contains the Edit and Delete buttons.

Name - this column contains descriptions for each of the listed subscriptions.

Description - this column contains descriptions for each of the listed subscriptions.

Webhook URL - this column contains URLs to which the notifications are sent once the events are triggered.

Event name - this column contains names of the events to which you subscribe.

In order to create subscriptions to events, that is, to establish a connection between a triggered event and an external URL, follow the steps provided below. Once you create a subscription, notifications will be sent to the specified external URL whenever the events occur:

Go to Setup  Providers   Subscription to Events.

The page in which the existing domain events are listed displays.

Click Add new Subscription to Event.

The page for adding a new subscription to events displays, containing the following options:

General

Name (required)

	

Needs to contain the name of the subscription.




Use for Subscription Billing products

	

Should be ticked in order to subscribe to events tied to products which use the subscription billing pricing mechanism (relevant for product domain events only)




Description

	

Can contain a subscription description.




Webhook URL (required)

	

Needs to contain the URL to which you want notifications to be sent whenever the event is triggered.




Webhook HTTP method (required)

	

Needs to contain a HTTP method for sending requests whenever the event is triggered.




Event name (required)

	

Needs to contain the name of the event you wish to subscribe to.




Authentication type (required)

	

You can choose between Basic, OAuth 2.0 - Resource owner password credentials,OAuth 2.0 - Client credentials, OAuth 2.0 - SAML 2.0 bearer assertion and Client certificate.




Username

	

Displays if Basic authentication is selected. The field needs to contain your username.




Password

	

Displays if Basic authentication is selected. The field needs to contain your password.




Send Credentials Through (required)

	

Displayed if OAuth 2.0 - Client credentials is selected. Depending on it's value, Client Id and Client Secret is sent through either the Body or the Header.




Client ID (required)

	

This field needs to contain the client ID.




Client Secret (required)

	

Client secret should be entered here.




Select certificate

	

Displays if Client certificate authentication is selected. Click the button to select which one of the existing certificates will be used for authentication.




Profile

	

Displayed if OAuth 2.0 - SAML 2.0 bearer assertion is selected. Admin should select one of the profiles from Providers   SAML Profiles




Authentication Test Button

	

Test button is available for Basic OAuth, OAuth and SAML Bearer authentication types and will check if Access token is generated. Depending on the outcome user will get error or success message.

Custom headers

Key (required)

	

Custom headers allow you to set additional headers for the HTTP request which is sent to the API which you have provided. The custom header key must begin with x- (for example x-key1).




Value (required)

	

Needs to contain the value of the custom header.




Add custom header entry

	

Creates a new custom header.

Click Save if you wish to save the subscription and remain on the page.

Click Save & Go Back if you wish to go back to the page with listed domain events.

Once you are on the Subscription to Events page, you can also edit or delete subscriptions to events by clicking Edit or Delete buttons.

Once the new subscription to events is created, notifications will be sent to the provided Webhook URL seven times at most (by default), before the unsuccessful attempt is recorded in the Log. However, no further attempts at sending notifications to the specified Webhook URL will be made as soon as the first successful attempt occurs.

You can filter the existing subscriptions to events by writing their names, webhooks or related actions in the intended textbox located above the listed subscriptions. The corresponding subscriptions will be listed as soon as you finish typing one of these pieces of information.

You can select which columns you wish to be displayed in the Subscription to Events page in Display Settings.

Yes
No