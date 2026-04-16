# Enable the Integration with SAP Cloud Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/4e30a3e1d4de4ff8a81c058343b04dfc.html?locale=en-US&state=PRODUCTION&version=2603
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
Enable the Integration with SAP Cloud Integration

Login to your SAP CPQ system using an Administrator User.

Choose Setup in left menu bar and choose Setup.

Select the SAP Integrations under the Providers in left navigation bar.

From the Available SAP Providers, select the Mandatory Settings tile.

Turn on the Enable SAP Cloud Integration.

In the General settings, define the following:

Enter a value for the Transaction Label ID, which will be displayed on the Quote page. The default value is "Sales Order Id". For more information, see Dynamic Label for the Target Transaction ID.

Turn on the Send customers along with quote payload.

The actual number of days in months and years – the system uses the actual number of days and years as in the calendar when selected.

Fixed number of days – the system uses the fixed number of days in months and years, when selected.
Note

The number of days is used to calculate the total number of months and years of a contract duration. For example, to calculate the total contract value for a contract duration of 12 months and 10 days, the system divides the total number of days with the number of days in a month (as defined here) and multiplies it with the monthly rate.

Yes
No