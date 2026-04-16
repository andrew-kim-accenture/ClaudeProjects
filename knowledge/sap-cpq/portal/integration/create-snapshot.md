# Create Snapshot | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/f380f6001e8e42b6987114ec2f96955a.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Prerequisites
	
Setup Adjustments on the SAP CPQ Side
	
Basic Integration Scenario
	
Create SAP Subscription Billing Product
	
Set Values for Rate Plan Template Charges


	
Create Snapshot
	
Use SAP Subscription Billing Products on User Side
	
Quote Item Fields on SAP Subscription Billing Products
	
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
Create Snapshot
Context
Note

This integration is deprecated.

Procedure
Go to Setup   Product Catalog  Products  Add New Product  Pricing   Extended Rate Plan.
In the Add Snapshot field, select the starting date for the snapshot.

The starting date is when the snapshot prices begin to apply. To use a snapshot, you need to set an effective date encompassed by that snapshot for the SAP Subscription Billing product in the quote.

Click Add.

A snapshot column is added to the Parameters table, next to the Initial Value column and any previous snapshots. The heading of the column is the effective date you selected in the previous step.

Fill out the parameter values in the snapshot column.
(Optional) In the Charges section, select the effective date of the snapshot under Show.

A detailed overview of the charges with the snapshot values is displayed.

Click Save.

The snapshot of the rate plan is now saved for the selected SAP Subscription Billing product. If the effective date of this product on the quote matches the period when the snapshot is active (starting with the snapshot initial date), the prices defined for the snapshot are displayed, instead of the prices defined in the Initial Value column of the rate plan.

Related Information
Create SAP Subscription Billing Product
Set Values for Rate Plan Template Charges
On this page
Context
Procedure
Related Information
Yes
No