# Common Settings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/0738451a245d4f9693c15866f0c961a7.html?locale=en-US&state=PRODUCTION&version=2603
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


	
SAP Commerce Cloud Integration for Quote 1.0
	
SAP Commerce Cloud Integration for Quote 2.0


	
SAP Commerce Cloud User Scenarios for Quote 2.0
	
Setting Up SAP Commerce Cloud Integration for Quote 2.0


	
Enable SAP Commerce Cloud Integration for Quote 2.0
	
Common Settings
	
Set Up Subscription to Events
	
Set Up Workflow in SAP CPQ
	
Field Mapping and Data Exchange
	
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
Common Settings

In the Common Settings, you need to define the SAP Cloud Integration endpoints to enable the quote payload to reach SAP Commerce Cloud via SAP Cloud Integration.

Go to Providers  Providers  SAP  Integration Suite.

Turn on the Enable integration toggle.

In Hana Cloud Platform Integration - Authentication details, fill out the following fields:

Authentication mode - BasicAuth

Integration username - the username of the integration userField Mapping and Data Exchange configured in the SAP Cloud Integration tenant

Inegration password - password configured for the integration user Field Mapping and Data Exchange

In General settings, define the following:

Send customers along with quote payload - when the toggle switch is enabled, SAP CPQ sends customer details such as bill-to, ship-to and end user details, together with the quote data to the SAP system. The quote data is sent in XML format.

Dates in quote standard fields (e.g. Date Created, Date Modified…) will be converted into this time zone - You can select either UserZone or UtcZone.

Enter a value for the Transaction Label ID, which will be displayed on the Quote page. The default value is "Sales Order Id". For more information, see Dynamic Label for the Target Transaction ID.

The actual number of days in months and years – the system uses the actual number of days and years as in the calendar when selected.

Fixed number of days – the system uses the fixed number of days in months and years, when selected.

Note

The number of days is used to calculate the total number of months and years in a contract duration. For example, to calculate the total contract value for a contract duration of 12 months and 10 days, the system divides the total number of days by the number of days in a month (as defined here) and multiplies it by the monthly rate.

In SAP Cloud Integration Service API Details, enter the following:

REST API base URL address - the base REST API URL address of the SAP Cloud Integration – SAP CPQ specific package. The value is delivered by the administrator and should not be changed. In addition, the value identifies a specific SAP Cloud Integration tenant.

Endpoint that gets SAP object data details - a relative endpoint address of the SAP Cloud Integration artifact that gets an object from the SAP system over SAP Cloud Integration. The call acts as a proxy to SAP Data services and can query any publicly visible object from SAP Commerce Cloud.

Endpoint that processes posted data in xml format - a relative endpoint of the SAP Cloud Integration artifact that processes the posted data in the XML format.

Endpoint that sends CPQ quote to SAP systems - a relative endpoint of the SAP Cloud Integration artifact that sends the SAP CPQ quote to SAP systems.

Related Information
Set Up Subscription to Events
Set Up Workflow in SAP CPQ
Field Mapping and Data Exchange
SAP Commerce Cloud User Scenarios for Quote 2.0
SAP Commerce Cloud Documentation
Yes
No