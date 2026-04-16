# Promotions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/fe7d4f61f2394dc7ba45395789dba058.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
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
	
Discounts
	
Rounding Setup
	
Discount Priorities
	
Sales Tax
	
Margin Health
	
Promotions
	
Recurring and Non-Recurring Prices
	
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
Promotions

SAP CPQ feature “Promotions” allows SAP CPQ administrators and sales representatives to configure and offer special pricing or discounts for a particular product or a group of them. Administrators can define different promotions that could be customized based on various conditions.

Note

If you want to use promotions in SAP CPQ, keep in mind the following restrictions:

Promotions are not supported in scenarios with Variant Configuration products or any other back-end products..

The CXAI feature can't be used simultaneously with promotions. You can use only one feature at a time.

Enablement and Setup of Promotions

To enable promotions, the value of the parameter Enable Promotions must be set to TRUE. By default, all Quote 2.0 tenants have this value set to FALSE. You can find this parameter under Setup -> General -> Application Parameters -> General Parameters -> Enable Promotions.

To set up promotions, go to Setup -> Pricing/Calculations -> Promotions. On this page, you will see a list of promotions that have already been defined.

To add a new promotion, click Add New. This will take you to the promotion definition page, which consists of two tabs: Definition and Pricing Details.

Definition Tab

Name: Define the Name of the promotion.

System ID: The System ID is automatically filled based on the name of the promotion.

The toggle switch labeled Active can be used to set the promotion as active or inactive. Inactive promotions cannot be applied to a quote.

Start Date and End Date: The Start Date and End Date fields define the period in which the promotion is active. These fields are optional, so a promotion can be set to be always active.

Rank: The Rank field determines the priority of the promotion when there are conflicting conditions with other promotions.

Description: A description of the promotion can be provided on this tab.

Promotion Visibility

Under the Permission section on the Definition tab, administrators can define who will be able to see the promotions on a quote based on various criteria such as Company, Custom Permission group, Brands, Markets, User Types, or Users. You can also make all promotions visible to all users by setting the toggle switch labeled Visible to everyone to Yes.

Promotion Details

Under the Promotion details tab, admin users can select the product, product type, or product category on which to offer a discount. Conditions are set for triggering promotion on a quote (if these conditions are met, users will be able to apply promotions on a quote).

The Discount is Applied On field determines whether the promotion is applied to a specific Product, Product Type, or Product Category. By clicking on the Select Products (or Product Type or Product Category) button next to this field, the admin user can choose the specific items the promotion will apply to. The Promotion type can be either One Line or Scale.

One line allows for simpler discount scenarios on selected Products, Product Types, or Product Categories. The Discount Type determines the type of discount offered:

Discount Percent: A percentage of the original price is deducted as a discount.

Discount Amount: A specific amount is deducted from the original price as a discount.

Exact Price: A new promotional price is set for the product and a discount is calculated based on this new price.

The Discount Type functions the same for both One line and Scale.

Example of One Line

In this example, the product PC Computer is at 10% discount.

Scale supports more complex scenarios that involve combining quantity OR amount ranges while offering discount percent, discount amount, or exact price. When Scale is selected, the Calculation Type field becomes available. Two options in this field determine how the discount will be calculated:

Standard: This option applies the same discount actions equally to all items.

Cumulative: This option applies different discounts to items based on quantity or amount breaks.

After selecting the Calculation Type, the admin user can add Quantity Breaks or Amount Breaks. While multiple breaks can be added, only one type (Quantity or Amount) can be chosen.

Quantity Breaks:

In this section, the admin user defines quantity ranges to which the pricing and discounts will be applied:

Example 1: If you select the option Standard under Calculation type and set up Quantity Breaks as follows:

Discount Type

	

Value

	

QTY From

	

QTY To




Discount Percent

	

10

	

1

	

5




Discount Percent

	

20

	

5

	

10




Discount Percent

	

30

	

10

	

15

In this scenario, adding 4 items to the quote will result in a 10% discount for each item. Similarly, if 13 items are added, each item will receive a 30% discount. It's important to note that the same Promo Discount Percent is applied to each item in the quote.
Example: 2 If you select the option Cumulative under Calculation type and set up Quantity Breaks as follows:

Discount Type

	

Value

	

QTY From

	

QTY To




Discount Percent

	

10

	

1

	

5




Discount Percent

	

20

	

5

	

10




Discount Percent

	

30

	

10

	

15

After the user adds four items to the quote, each of these items will be discounted by 10%. In case the user buys a total of 13 items, five of them will be discounted by 10%, five of them will be discounted by 20%, and three of them will be discounted by 30%. It is important to note that the term Quantity refers to the number of promotional items included in the quote.

Amount Breaks: Similar to Quantity Breaks, the admin user can define ranges in terms of amounts to which the pricing and discounts will be applied. The same logic as Quantity Breaks applies to Amount Breaks.

Scale Example:

This example demonstrates the application of discounts based on the quantity of the product "PC Computer". If the quantity is less than or equal to 3, a 10% discount will be applied. If the quantity is between 4 and 6, a 20% discount will be applied. If the quantity is between 7 and 10, a 30% discount will be applied.

Conditions can be defined on the Promotion details tab to determine if the promotion can be applied to a quote. By clicking on the Add Condition button, admin users can enter multiple conditions. The admin user must first select whether the condition is applicable to the Quote Header, Quote Item, or Involved Parties.

For the Quote Header, options include Status, Market, Custom Field, or Total Value. For Quote Item, options include Product, Product Type, or Product Category. For Involved Parties, options are available to choose the type of Involved Party. Depending on the selection made, additional fields such as operators and value must be filled out to provide flexibility in setting up various scenarios in which the promotion can be applied.

There is an option to choose the logic between multiple conditions. With the AND logic, all conditions must be met for the promotion to be applied to a quote. With the OR logic, at least one condition must be met for the promotion to be applied. Additionally, with Custom logic, a combination of AND and OR operators can be used.

Example of the condition

To be eligible for promotion on a quote, several conditions must be fulfilled as stated below:

The quote must have an Approved status.

The quote must include a product named Configurable PC with a quantity exceeding 3.

The Involved Party's name on the quote (Sold-to-party) must be "Michael".

The custom field on the quote (CEO-Approval-Required) must be marked as Yes.

Quote

If all the requirements for a promotion are fulfilled, the user will see a yellow light bulb indicating the available promotions in the top right corner of the quote. Applying a promotion to a quote will result in adding a promotional item if the promotion is set up to apply to the specific product. Alternatively, adding an item to the quote will automatically calculate a discount if the setup includes promotions for the product type or category. When the yellow light bulb is pressed, a dialog box will appear, allowing the user to select the promotion they want to apply to a quote.

When a promotion is set for a Product, users have the flexibility to select the specific products from the promotion that they wish to include in a quote. Additionally, users can specify the desired quantity of promotional products. Once the user has chosen a product and quantity and confirmed the promotion, the selected product(s) will be displayed on the quote with a distinct icon denoting their promotional nature. By hovering over this item, users can effortlessly identify the promotion from which the item originated on the quote.

If the user selects a promotion for a specific Product Type or Product Category, they can only apply the entire promotion. Once applied, the user can manually add products from the promoted Product Type or Product Category to the quote and the discount will be automatically calculated for those items. The manually added items will behave the same as the automatically added items.

Once a promotion has been applied, it cannot be applied again. However, the user can discard the promotion from the same dialog where it was applied. When discarded, the item will remain on the quote but the discount will be set to either 0 or the default discount for that product. After discarding the promotion, the user will have the option to apply the same promotion again.

If the promotional item(s) are deleted, the user will also have the option to apply that promotion again. However, copying promotional items is not allowed. If conditions for already applied promotion are broken, all promotional items will remain on a quote. Users will receive a suggestion to remove the promotion in the indicated dialog (depicted as a yellow light bulb).

It is important to note that the CXAI feature currently cannot be used simultaneously with promotions. Only one feature can be used at a time.

Yes
No