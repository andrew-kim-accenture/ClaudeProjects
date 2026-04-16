# Business Partner Sales Area Tab | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/00fe347ee02b40a4a77a8b15058cdda6.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners


	
What are Business Partners and Partner Functions?
	
Involved Parties and Customers – Differences
	
Create Business Partner in SAP CPQ


	
Business Partners General Fields
	
Business Partner Custom Fields
	
Business Partner Sales Area Tab
	
Business Partner Permissions
	
Managing Relationships Between Business Partners
	
Create Business Partner in External Systems and Import into SAP CPQ
	
Partner Functions
	
Create Partner Functions in External Systems and Import into SAP CPQ
	
Synchronize Business Partners and Partner Functions
	
Involved Parties
	
Bulk Business Partner Import/Export
	
Business Partner Relationship Category
	
Bulk Delete Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Business Partner Sales Area Tab

In the Sales Area tab, you can view, define, or modify configurations for business partners that are specific to a sales area. The tab is visible only if you have enabled the Sales Area feature.

Note

In SAP CPQ, you define a sales area for business partners using three key entities: a sales organization, a distribution channel, and a division.

When you click Add New, a new screen appears. Here, you can define the following characteristics of a business partner based on the selected sales organization, distribution channel and division. Note that when you enable the sales area feature, the business partner data is replicated from SAP S/4HANA.

Field/Option

	

Description




Sales Organization (required)

	

The name of a sales organization replicated from SAP S/4HANA. A default sales organization is displayed in the dropdown with the values that have been replicated from SAP S/4HANA.




Distribution Channel (required)

	

The name of a distribution channel replicated from SAP S/4HANA. Based on the selected sales organization, a list of available distribution channels is displayed, according to the Sales Area Assignments table.




Division (required)

	

The name of a division replicated from SAP S/4HANA. Based on the selected sales organization, a list of available divisions is displayed, according to the Sales Area Assignments table.




Sales Office

	

The name of a sales office replicated from SAP S/4HANA.




Sales Group

	

The name of a sales group replicated from SAP S/4HANA.




Currency

	

The preferred currency replicated from SAP S/4HANA.

Note

When you use the sales area concept, the currency is decoupled from the market code.

When users add the involved party with the sold-to partner function to the quote, the system reads the currency from the business partner. It sets this currency in a quote if it differs from the existing one. If the involved party has different partner functions, the system attempts to set the default currency from the sales organization. If this currency isn't maintained in SAP CPQ, the system displays the default currency from the Setup  Pricing/Calculations  Currencies table in the quote.




PP Customer Procedure

	

The customer pricing procedure replicated from SAP S/4HANA.

Note

If you don't want to use the customer pricing procedure from the master data (SAP S/4HANA), you can override it by defining the customer pricing procedure in the Settings tab in Setup  Pricing/Calculations  Pricing Procedures.

In the Determinations tab of a selected pricing procedure in Setup  Pricing/Calculations  Pricing Procedures, you can define the sales area for which customer and document pricing procedures should get executed.




Exchange Rate Type

	

The exchange rate type replicated from SAP S/4HANA.

Note

If you don't want to use the exchange rate type from the master data (SAP S/4HANA), you can override it by defining the exchange rate type on the General Attribute Mappings page under Setup  Providers  SAP Integrations.




Shipping Conditions

	

The name of the shipping conditions as defined in SAP S/4HANA.




Payment Terms

	

The name of the payment terms as defined in SAP S/4HANA.




Incoterms

	

The name of the incoterms as defined in SAP S/4HANA.




Incoterms Location 1

	

The name of the incoterms location 1 as defined in SAP S/4HANA.

Note

Saved configurations for each sales area can be modified or deleted.

When you save a business partner configuration for a sales area and then open it for viewing or editing, you can't modify the fields for the sales organization, distribution channel, and division, as these three fields are used to define a sales area. All other fields can be modified.

Related Information
Sales Area
Yes
No