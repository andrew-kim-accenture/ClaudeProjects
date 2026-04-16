# Adding/Removing Editable Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f77f84813eb44ee08b7bdca65f8dcb2a.html#editable-field-groups-and-related-calculations
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
Adding/Removing Editable Fields

Clicking the button, User Group name, Status name, or Set all link in the Status - User Group Grid (See Status - User Group Grid)will bring up a screen where user may define Editable Fields and Calculations.

Available Fields and Calculations

Fields – The Fields list box allows for the selection of available fields, which are not editable.

Row Types – Editable fields from the Fields list box can be filtered by selecting the appropriate row type from the Row Types drop down menu.

Calculations – The Calculations list box lists all available calculations. When you click on a calculation, you will see a detailed explanation of what that calculation exactly does.

Copy From – The Copy From option allows you to copy existing settings from other User Group - Status combinations.

Note

If you select List Price to be an editable field, you will also need to adjust the Allow Edit List Price on the Cart application parameter. See Application Parameters for more details.

If this parameter is set to Cannot Change List Price, List Price will not be editable even if specified in Cart Fields Administration.

For List Price to be editable, Allow Edit List Price on the Cart should be set to one of the following values:

Can Change List Price if it's 0 – the user can change the price only if the product’s price is zero.

Can only increase List Price – the user is only allowed to increase the product's price.

Can change any List Price – the user can change the price without restrictions.

Item Add/Update Calculations

Calculations listed in this section will be executed when add item or update actions are invoked. The three calculations listed in this section (See the figure above) are the base calculations used for calculating all fields in the cart.

Editable Field Groups and Related Calculations

The Editable Field Groups and Related Calculations section of the definition screen shows the Editable Groups and related calculations.

The Add new field set link adds a new Editable Group. An Editable Group can be marked as default by selecting the Default checkbox. This means that these fields will be editable when you enter the cart for the first time. If no group is set as default, the system will sort visible columns (columns from the personal quote layout page) based on the system sorting mechanism and make the editable group of the first column default. One active editable group always needs to exist, which is why it's recommended to always set one as default. Only one of the groups can be editable at a time, but more than one field can be a part of an Editable Group.

For settings shown in previous two figures, the cart will appear as shown in the following figure. The first time you enter the cart, the Total Net Price is editable, but by clicking on Sub -Total this field becomes editable.

In this case, if you enter 8,000 for the Total Net Price and press ENTER or click on Calculate, calculations in Editable Field Group 4 will be executed. In this example, SAP CPQ calculates the discount percentage that will generate 8,000 for the Total Net Price as shown in the following figure.

Adding fields and calculations is explained in the following example:

First, select ProductType - Multiplier and ProductType – DiscountPercent from the Fields list. Click on  (marked with a green circle in the figure above). This will add these fields to Editable Field Group 2, and remove them from the list of available fields.

Note

One field can belong to only one editable group.

From the Calculations list box in the Available Fields and Calculations section, select the calculations you wish to add to these fields (use the Ctrl key to select multiple calculations). Click on  (marked with a red circle in the figure above). Sort the calculations by clicking on  (marked with a blue circle in the figure above).

Note

The order of the calculations is important. If you are having problems with the cart check to see if the order of the calculations is correct. Usually the last three calculations for a group should be the ones listed in the Item Add/Update Calculations section, in that order.

If you wish this Editable Field Group to be default, select the Default check box (marked with a yellow circle in the figure above).

Finally, when you have finished defining the Editable Fields, click on Save at the bottom of the screen.

Note

If an editable group is in focus on the quote, the calculations tied to that group are executed even if users change the value of some other field that is not in that editable group. Consequently, it may happen that users change the value of one custom field and then the value of another field, but the system triggers the calculations tied for the first field because that field is still in focus.

On this page
Available Fields and Calculations
Item Add/Update Calculations
Editable Field Groups and Related Calculations
Yes
No