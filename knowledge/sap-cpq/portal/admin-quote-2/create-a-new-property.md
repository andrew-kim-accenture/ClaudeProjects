# Create a New Property | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/0a7251cfe0ae4b61a9c41f11858b5428.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Product Implementation
	Product Actions
	
Product Categories
	
Attributes


	
Create Attributes
	
Attribute Types


	
User Selection
	
User Selection with Attribute Quantity Input
	
User Selection w/ Quantity Inputs for each Attribute Value
	
User Input or Computed – Date, Number or String
	
Container Attributes


	
Create Container Attributes 


	
General Tab 
	
Columns Tab
	
Properties Tab


	
Create a New Property
	
Actions Tab 
	
Validation Tab
	
Container Rows
	
Autocomplete Attributes
	
Measurement Attributes
	
Contract Duration Attributes
	
Billing Cycle Attributes
	
Dynamic Attribute Values
	
Attribute Quantity
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	Integrations
	
Pricing/Calculations
	
Sales Area Administration
	
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
Create a New Property

To create a property, follow the procedure in this topic.

Procedure
Click Add New Property. 

A popup window displays.

In the Name (required) field enter the name of the property.
In the Calculation Formula field, enter a formula or use the Formula Builder to create one.

The formula will be evaluated on each configuration modification. You can also leave the calculation formula empty and apply container property from a parent product rule with a CTX tag.

In the Data Type (required) select one of the following: String, Number, Currency or Date.

If you select Number or Date, enter the number of decimal places the property will contain.

Enable the Include in JSON toggle switch if you wish it to be available in knockout context, so it can be sent through a JSON file via the HTTP response. 
Next Steps

Once you add properties, you can edit their ranks by clicking the Ranking button. The Rank popup window displays, and you can drag and drop available properties in any order you wish.

On this page
Procedure
Next Steps
Yes
No