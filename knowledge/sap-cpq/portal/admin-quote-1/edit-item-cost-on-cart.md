# Edit Item Cost on Cart | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/4bd5b25aa1144d7db054b4b8e6e90f09.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations


	Setup Help

	
Pricebooks
	
Markets
	
Market Visibility
	
Currencies
	
Discounts/Multipliers
	
Cart Fields Administration


	
Status - User Group Grid
	
Adding/Removing Editable Fields
	
Editable Quote Comment Field
	
Recurring Rolled-Up Fields
	
Rolled-Up Cost and Margin
	
Edit Item Cost on Cart
	
Rounding Setup
	
Discount Priorities
	
Shipping
	
Total Amount Limit
	
State Sales Tax
	
Country/Region Sales Tax
	
Margin Health
	
Promotions
	
Recurring and Non-Recurring Prices
	
Quotes Administration
	
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
Edit Item Cost on Cart

When item is being edited in the quote and cost has been previously changed in the quote, based on the value of parameter ‘When item’s cost is edited in the quote, upon changing item’s configuration, cost will be recalculated’, SAP CPQ will recalculate cost based on configuration (if value is TRUE) or leave cost amount that was entered by user in the quote (if value is FALSE).

Same logic will be applied during ‘Reconfigure’ action.

Please note that this will only be applicable when item cost can be edited in the quote.

When item’s cost is edited in the quote, upon changing item’s configuration, cost will be recalculated parameter is placed in Setup  General  Application Parameters  Shopping Cart and Quotes.

Default value for parameter is FALSE.

Some XSLT transformation for cart doesn't have COST as field instead they have EXTENDEDCOST.

Here are all the steps to edit cost in the cart in that situations:

Set the application parameter “Allow Edit Cost on the Cart” to TRUE in Setup  General  Application Parameters  Shopping Cart and Quotes.

Add “Child Item - Cost” and “Main Item - Cost” to an Editable Field Group in Setup  Pricing/Calculations  Cart Fields Administration.

Change all occurrences of “ExtendedCost” to “Cost” in all user type XSLT files where the costs should be editable. This can be done by:



a. Downloading the Shopping Cart Visual Style in Setup => Users => User Types => 
  b. Editing the applicable user type => 
  c. Downloading the "Visual styles (Shopping cart / Quotes)" XSLT file => 
  d. Replacing all occurrences of "ExtendedCost" with "Cost" => 
  e. Saving the updated file with a ".xslt" extension =>
  f. Uploading the new XSLT file to " Visual styles (Shopping cart / Quotes)" =>
  g. Selecting "Save" to save the changes to the user type.
  h. Selecting "Exit Setup" to refresh the user type settings and viewing an existing quote.

Yes
No