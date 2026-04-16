# Maintain Pricing Procedure in SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/17e867d52fa242a1a73f8820a3f90f0f.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Maintain Pricing Procedure in SAP CPQ
	
Create Markets
	
Create Pricebook
	
Discounting (Optional)
	
Discounting Priorities (Optional)
	
Setup Calculations on Item Add/Copy/Delete
	
Setup Calculations on Field Value Changes
	
Rounding Setup
	
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
Maintain Pricing Procedure in SAP CPQ

The Pricing Procedure maintained in SAP S/4HANA Cloud is to be mapped to SAP CPQ Quote Item fields.

Procedure

Login to your SAP CPQ system using an Administrator User.

In the left menu bar, choose Setup  Setup.

In the left navigation bar, choose Pricing/Calculations  Pricing Procedures  Add New Pricing Procedure.

Choose the Pricing Procedure maintained in SAP S/4HANA Cloud, for example, <Z17024> and choose Add.

Choose Details for the added Pricing Procedure.

In the Pricing Condition Mappings tab, choose Manage Conditions and select Steps 20, 90, 210, 240, 280, 290, 295, 700 and 800.

Choose Save.

Map the Quote Item to Pricing Conditions as mentioned below:

Step

	

Pricing Condition

	

Name

	

Pricing Frequency

	

Rate/Value

	

Quote Item

	

Quote Header

	

Order Item Type




20

	

PPR0

	

Price

	

One-Time

	

Rate

	

One-Time List Price

	 	

Sales


 	 	 	 	

Value

	

One-Time Net Price

	 	

Sales




210

	

DRN1

	

% Net Amount 1

	

One-Time

	

Rate

	

One-Time Discount Percent

	 	

Sales


 	 	 	 	

Value

	

One-Time Discount Amount

	 	

Sales




220

	 	

Sub Total One Time

	

One-Time

	

Value

	

One-Time Extended Amount

	 	

Sales


 	 	 	 	

Value

	 	

Item Total One-Time Extended Amount

	 


230

	

PSI1

	

Price f.Srv.Cntr.Itm

	

Monthly

	

Rate

	

Recurring List Price

	 	

Service Contract




240

	

DRV1

	

Fixed Amount 1

	

Monthly

	

Rate

	

Recurring Discount Amount

	 	

Service Contract




280

	

DSP1

	

Service Profile

	

Monthly

	

Rate

	

Service Profile

	 	

Service Contract




290

	

DSP2

	

Response Profile

	

Monthly

	

Rate

	

Response Profile

	 	

Service Contract




598

	

ZRN1

	

% Net Amount 1

	

Monthly

	

Rate

	

Recurring Discount Percent

	 	

Service Contract


 	 	 	 	

Value

	

Recurring Discount Amount

	 	

Service Contract


 	 	 	 	

Rate

	 	

Item Total Recurring Discount Percent

	 
 	 	 	 	

Value

	 	

Item Total Monthly Recurring Discount Amount

	 


599

	 	

Sub Total Recurring

	 	

Value

	 	

Item Total Monthly Recurring Extended Amount

	 


700

	 	

Net Value2

	

Monthly

	

Value

	

Recurring Extended Amount

	 	

Service Contract


 	 	 	 	

Value

	 	

Recurring Total

	

Service Contract




800

	 	

Total Value

	

One-Time

	

Value

	

One-Time extended List Price

	 	

Sales


 	 	 	 	

Value

	 	

Item Total One-Time Extended List Price

	

Sales



Choose Save.

Yes
No