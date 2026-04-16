# Sales Area Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/fbac2ce4623d436a9cccd120c34accc4.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration


	
Sales Area Assignments
	
Sales Organizations
	
Distribution Channels
	
Divisions
	
Payment Terms
	
Shipping Conditions
	
Incoterms
	
Sales Organization Visibility
	
Sales Area Parameters
	
Quotes Administration
	
Business Partners
	
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
Sales Area Parameters

Modify the default behavior for quote reconfiguration events and partner function mappings.

Events

Select the sales-relevant fields that trigger the quote reconfiguration when changed.

By default, the quote reconfigure event is triggered when users change the sales area or currency. On this page, you can add extra rules that trigger quote reconfiguration. You do this by selecting any of the following fields:

Payment Terms

Shipping Conditions

Incoterms

Incoterms Location

Partner Functions

Select a partner function to determine how the values for payment terms, shipping conditions, incoterms and incoterms location get populated on the quote.

When a quote is created, the fields for shipping conditions, payment terms, incoterms, and incoterms location are initially blank. By default, it is only when users add a business partner with the sold-to partner function to involved parties that these fields get populated with the values present in the selected business partner for the defined sales area.

You can modify this default behavior on this page. You can select a different partner function for each of these four fields, and the changes will be reflected on the quote.
Example

As an admin, navigate to Partner Functions sections in Setup  Sales Area  Parameters, and select the bill-to partner function for payment terms and the ship-to partner function for shipping conditions. Leave incoterms and Incoterms location blank, and save your changes.

Let’s assume that on a quote, a user selects the sales area by selecting the sales organization, distribution channel, and division. At this point, there are no values for shipping conditions, payment terms, incoterms, and incoterms location because involved parties haven’t been defined yet.

The user moves onto the Involved Parties tab to add the partner function bill-to and to select the business partner "XYZ Electronics" from the list of available business partners for the selected sales area. They also add the ship-to partner function and select the “Mobile Electric” business partner from the list.

As a result of these changes, on the quote’s Quotation tab, the payment terms are populated with the value that is stored for the business partner with the bill-to partner function as defined in Setup. Similarly, the shipping conditions get populated with the value stored for the business partner with the ship-to partner function. In this case, the payment terms get populated with the value stored for “XYZ Electronics”, while the shipping conditions get populated with the value stored for “Mobile Electric”. The values for incoterms and incoterms location remain empty because the involved party with the sold-to partner function hasn't been created yet.

Tip

When you add a business partner on the Involved Parties tab and double-click the partner function, the stored values for the selected business partner are displayed in the right-hand sidebar. You can inspect the values for the sales area in the Sales Area section.

On this page
Events
Partner Functions
Yes
No