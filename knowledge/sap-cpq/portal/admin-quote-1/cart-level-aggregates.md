# Cart Level Aggregates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f73d7cdeab5a40bbb28c16694bb48b19.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Cart Level Aggregates

Other than attribute values, in the product rules administration page you may set and read global variables (globals, GI). Global variables are stored at cart level and are common for each main item/product configuration in the cart. Global variables may be used to model the interactions between items and to define action availability within the configuration. For details see the chapter on Global Variables.

Cart Level Aggregates are special Global Variables. When you define an aggregate you provide its name and formula. This formula is evaluated for each main item in the cart. The evaluated formula is then converted to a numeric value. If it can not be converted to a numeric value, the aggregate value for that particular item is set to be zero. SAP CPQ will implicitly multiply each formula with the quantity of the item. The final value of an aggregate is assigned to a Global Variable with the same name as the aggregate. This means that when you define an aggregate you actually define a Global Variable.

Tip

Since Quote Properties are also global, you must be careful to define unique aggregate names.

Cart Level Aggregates are a favorable method for calculating the sum of the numeric values in the cart. They are calculated when an item is added to the cart, and during the Reconfigure action. Cart tags and some CTX Tags should be used in its formulas.

Example 1

Aggregate Name: “Item Count”

Formula: 1

Note

As stated earlier, SAP CPQ will implicitly multiply each formula with the quantity of the item. This is why the formula reads “1” – because if your item count is 3, the end result will be 3. In other words, this will create a global variable “Item Count” and its value will be equal to a count of the main line items – number of added configurations – in the cart.

Example 2

Aggregate Name: “Total Hard Drives”

Formula: <*CTX(Quote.CurrentItem.Attribute(attributename).Value)*>

This will create a global variable “Total Hard Drives” and its value will be equal to a product of quantities of “Hard Drive” attributes in each item in the cart. If an item or a configuration does not have a “Hard Drive” attribute, the aggregate value for that particular item will be set to zero, thus such items will not affect the final aggregate sum value.

This aggregate/global variable can also be used in an action condition, for example:

[GT](<*GI(Total Hard Drives)*>,10)

This condition will allow an action if global “Total Hard Drives” is greater than 10. For more details on conditional workflow actions see the chapter on Workflow Actions.

Yes
No