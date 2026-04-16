# General Tab  | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/be2af9a3ec8c410881418814058b6c06.html?locale=en-US&state=PRODUCTION&version=2603
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
General Tab

Note

The maximum capacity for a container attribute type is 1000 products. This limit applies to all methods of adding products, including through the UI, attribute import, or API.

The container will use

	

No products - The container does not reference any products, but its columns can reference other attributes.

Selected products – The container references the selected products which are displayed as rows in the Configurator. You can define the maximum number of times users can add new rows in the Configurator, as well as the minimum number of rows which need to be filled to complete the product configuration. 

Products looked up by their part number – If selected, product part numbers can be looked up from the Configurator, to extract values from the products they belong to. In the Columns tab, you need to add a Stand-alone Column with the Selector Check Box display type. Also, you need to add the Product Part Number column and select one of the two display types:

Text Box – if you wish a user to enter a part number manually during configuration 

Label – if you wish to use rules or scripts to populate the column with product part numbers. 

Note

Only simple products can be looked up by their part numbers.




Enable Paging for Container

	

Breaks down the extensive number of rows added during configuration into several pages. 




Default number of rows per container page 

	

Determines the number of rows displayed per a page by default (can be edited by users during configuration).




Min Container Rows 

	

The minimum number of rows that need to be added during configuration. 




Max Container Rows 

	

The maximum number of rows that can be added during configuration.

Yes
No