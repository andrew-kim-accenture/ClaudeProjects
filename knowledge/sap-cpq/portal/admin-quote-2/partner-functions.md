# Partner Functions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/3ca393db44f9410e8fb6e661e340a910.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Create Business Partner in External Systems and Import into SAP CPQ
	
Partner Functions


	
Translate Partner Function
	
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
Partner Functions

Partners functions are managed on the dedicated page in the Quotes section. There are some partner functions which are available by default, so before you start creating a partner function, check to see if it’s already there.

Context
Note

The following partner functions come out-of-the-box with the Business Partner feature: Sold-to part, Ship-to party, Bill-to party, Payer, Contact person, and Sales representative.

Procedure

To create a partner function, perform the following steps:

In Setup, go to Quotes  Partner Functions.
Click Add new partner function.
Fill out the fields as described in the following table.
Field	Description


Name (required)

	

The name of the partner function, as it will display on quotes.




Key (required)

	

The unique identifier of the partner function, input type string, usually four characters. Used for mapping partner functions between SAP systems.




Valid From

	

The date after which the partner function is available in the Involved parties tab.




Valid To

	

The date until which the partner function is available in the Involved parties tab.




Show by default on new quotes

	

If enabled, the partner function will be added to the Involved parties tab by default on all new quotes.




Can be used only once on quote

	

If enabled, the partner function can’t be reused in the Involved parties tab (for example, you can’t have two Ship-to party functions.)

Save the changes.

The partner function is created.



Translate Partner Function

The name of a partner function can be translated to any of the system languages.
On this page
Context
Procedure
Yes
No