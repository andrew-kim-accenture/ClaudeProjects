# Verify Successfully Notified Logs in SAP CPQ Log | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/321eb439e3ca411a9cd2f88be128b61e.html?locale=en-US&state=PRODUCTION&version=2603
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
Verify Successfully Notified Logs in SAP CPQ Log

By checking the following pipeline, you can verify that successfully notified logs exist in the SAP CPQ log.

The Product Added, Product Updated, Product Deleted or any other event is triggered.

In the event log there should be a message Sent message to producer with Key:. The key should be {cpq url};{domain};{eventKey of triggered event}.

After that the following sequence should take place:

A message from Kafka was received in Notifier MS.

Notification saving was started.

Notifier MS received a message and attempted to match with the appropriate webhook.

Notification was saved.

Match was found.

Successfully notified 1/1 - the Notifier MS successfully sent a notification about a matched webhook. Alternatively, the Notifier MS failed to notify because the webhook (target URL) is not available or reachable, or the authentication is wrong. In case notifying fails, check your target URL and authentication.

Note

Notifier can notify about more than 1 event in a single batch if more events of same type are received within short time period.

Related Information
Subscription to Events
Yes
No