# Example Procedure for Mapping Pricing Conditions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/3d71e08398424fe98245443a0a422737.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Variant Configuration Integration


	
Introduction to the Variant Configuration Integration
	
Integrate SAP CPQ with SAP Variant Configuration and Pricing
	
Define SAP General Attribute Mappings
	
Knowledge Base Diagnostics
	
Technical Overview
	
Pricing


	
Pricing Procedure Mapping


	
Pricing Procedures from SAP Variant Configuration and Pricing


	
Select Pricing Procedure in SAP CPQ
	
Determinations
	
Define Pricing Condition Mapping
	
Allowed Value Combinations
	
Pricing Condition Mapping on Quote
	
Calculations for Variant Pricing Items
	
Calculations for Combined SAP CPQ and Variant Pricing Items
	
CPQ Line Items Calculations and Fields
	
CTX Tags for Fields Mapped from Pricing Conditions
	
Example Procedure for Mapping Pricing Conditions
	
Order Creation/Update Mapping
	
Set Up Pricing Procedure in SAP ERP
	
Map Pricing Response to Quote Columns
	
Pricing Details on Items
	
Pricing Behavior for Products Created/Edited via SOAP API
	
SAP Variant Configuration and Pricing Log
	
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
Example Procedure for Mapping Pricing Conditions

The following examples illustrate how to create and correctly set up mappings for some of the pricing conditions used in integrations with back-end systems, and to make the fields visible and editable on the quote.

Note

The mappings provided here serve only as examples. The mappings which you will create in SAP CPQ are dependent on the way pricing procedures are set up in your SAP S/4HANA system, which is why they will differ from the process described here. You can use this procedure as a point of reference for creating your own mappings.

Go to Setup  Pricing Calculations  Pricing Procedures.

Edit the pricing procedure you are using and which you have previously synchronized, and create the mappings as illustrated below.

This is an example for mapping the one-time list price:

Step

	

Pricing Condition

	

Name

	

Pricing Frequency

	

Rate/Value

	

Quote Item

	

Quote Header

	

Order Item Type

	

Display Unit




20

	

PPR0

	

Price

	

One-Time

	

Rate

	

One-Time List Price

	

/

	

Sales

	

/


This is an example for mapping the discount for one-time prices:

Step

	

Pricing Condition

	

Name

	

Pricing Frequency

	

Rate/Value

	

Quote Item

	

Quote Header

	

Order Item Type

	

Display Unit




201

	

RA01

	

% Disc.from Gross

	

One-Time

	

Rate

	

One-Time Discount Percent

	

/

	

Sales

	

/


 	

Value

	

One-Time Discount Amount

	

/

	

Sales

	

/




Rate

	

/

	

Item Total One-Time Discount Percent

	

Sales

	

/




Value

	

/

	

Item Total One-Time Discount Amount

	

Sales

	

/


This is an example for mapping the condition which can be used as the extended amount for one-time prices:

Step

	

Pricing Condition

	

Name

	

Pricing Frequency

	

Rate/Value

	

Quote Item

	

Quote Header

	

Order Item Type

	

Display Unit




300

	

/

	

Sub Total One Time

	

One-Time

	

Value

	

One-Time Extended Amount

	

/

	

Sales

	

/


 	

Value

	

/

	

Item Total One-Time Extended Amount

	

Sales

	

/


This is an example for mapping the recurring list price:

Step

	

Pricing Condition

	

Name

	

Pricing Frequency

	

Rate/Value

	

Quote Item

	

Quote Header

	

Order Item Type

	

Display Unit




410

	

PSMB

	

Monthly Subscr Fee

	

Monthly

	

Rate

	

Recurring List Price

	

/

	

Subscription

	

/


This is an example for mapping the discount for recurring prices:

Step

	

Pricing Condition

	

Name

	

Pricing Frequency

	

Rate/Value

	

Quote Item

	

Quote Header

	

Order Item Type

	

Display Unit




520

	

ZPD1

	

Percentage Discount

	

Monthly

	

Rate

	

Recurring Discount Percent

	

/

	

Subscription

	

/


 	

Value

	

Recurring Discount Amount

	

/

	

Subscription

	

/




Rate

	

/

	

Item Total Recurring Discount Percent

	

Subscription

	

/




Value

	

/

	

Item Total Monthly Recurring Discount Amount

	

Subscription

	

/


This is an example for mapping the condition which can be used as the extended amount for recurring prices:

Step

	

Pricing Condition

	

Name

	

Pricing Frequency

	

Rate/Value

	

Quote Item

	

Quote Header

	

Order Item Type

	

Display Unit




590

	

/

	

Sub Total Recurring

	

Monthly

	

Value

	

Recurring Extended Amount

	

/

	

Subscription

	

/


 	

Value

	

/

	

Item Total Monthly Recurring Extended Amount

	

Subscription

	

/



Click Save.

Go to Quotes  Fields, Calculations, Layout  Fields and Calculations.

Note

Additional information on managing this section is available in Fields, Calculations, Layout 2.0.

Under Quote Fields, click each of the fields listed in the table below and ensure that the correct calculations are assigned to every field.

For each individual quote field from the Quote Field column, you should assign every calculation from the corresponding field on the right-hand side from the Calculations column.

Quote Field

	

Calculations




One-Time Discount Percent

	

Variant Pricing – All Item Fields

Variant Pricing – All Item Total Fields

Total Amount




One-Time Discount Amount




Item Total One-Time Discount Percent




Item Total One-Time Discount Amount




One-Time Extended Amount




Item Total One-Time Extended Amount




Recurring Discount Percent

	

Variant Pricing – All Item Fields

Variant Pricing – All Item Total Fields

Item Estimated Billing Value

Item Estimated Total Contract Value

Total Estimated Total Contract Value

Total Recurring Amount




Recurring Discount Amount




Item Total Recurring Discount Percent




Recurring Extended Amount




Item Total Recurring Extended Amount

In the Field Editability tab, define which fields you want to be editable on the quote.

To choose which fields are editable, you need to select a permission group and a quote status.

In Layout and Layout Permissions, create the layout of the quote and determine the layout in which the fields to which you previously mapped pricing conditions will be displayed.

Click Save.

The pricing conditions are now successfully mapped, and the fields display correctly on the quote.

Yes
No