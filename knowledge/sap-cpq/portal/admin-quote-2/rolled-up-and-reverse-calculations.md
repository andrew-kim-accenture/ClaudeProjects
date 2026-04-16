# Rolled-up and Reverse Calculations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/85e424ba63bf4744b284dbfeb3ea0a88.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Fields, Calculations, Layout


	
Quote 2.0 Calculations


	
Fields and Calculations
	
Quote Field Calculations
	
Quote Field Editability
	
Order of Calculations When Adding, Copying, or Deleting Quote Items
	
Order of Calculations when Changing Quote Field Values
	
Rolled-up and Reverse Calculations
	
Calculations for SAP Subscription Billing Integration
	
Quote Custom Sections
	
Quote Layout
	
Quote Layout Permissions
	
Item Types
	
Shipping
	
Effective Date on Quote Item
	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Fields
	
Quote Tab Permissions
	
Quote List Settings
	
Bulk Quote Deletion
	
Quote Visibility
	
Quote Acceptance Settings
	
Partner Functions
	
Solution Design
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
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
Rolled-up and Reverse Calculations

When handling calculations in Quote 2.0, users can use standard, rolled-up and reverse calculations. Unlike Quote 1.0, Quote 2.0 allows you to handle reverse rolled-up calculations.

Rolled-up Calculations
Rolled-up fields, one-time or recurring, belong to standard fields:

Rolled-Up List Price

Rolled-Up Extended List Price

Rolled-Up Cost

Rolled-Up Extended Cost

Rolled-Up Net Price

Rolled-Up Extended Amount

Rolled-Up Discount Percent

Rolled-Up Discount Amount

Rolled-Up Gross Margin

Rolled-up fields apply only to main items because the related logic is implemented exclusively for them. For line items, these fields aren't calculated: their values are copied from the corresponding standard fields. In other words, calculations are performed only for main items, not for line items.

Procedure

On the Fields and Calculations tab under Setup  Quotes  Fields, Calculations, Layout, choose Calculations on Add/copy/Delete Item to display all calculations already set for add, copy and delete actions on quote items.

Click Add calculations button on the right side of the screen to add calculations per rolled-up field.

Note

Calculations for any field depend on the fields configured to trigger them and the fields they update. By clicking the “i” (info) button, you can see whether a calculation depends on other fields.

Repeat the previous step until you have added all calculations for rolled-up fields that you need.

Reorder calculations as explained in the next section.

Save your changes.

Order of Calculations

The order of calculations is very important. Calculations must be executed in the correct sequence to ensure accurate results.

The general order of calculations is the following:

Calculations for items (main and line items)

Calculations for product types

Calculations for totals

Rolled-up calculations are related to items so they should be placed right after calculations for items:

Calculations for items (main and line items)

Rolled-up calculations

Calculations for product types

Calculations for totals

Rolled-up calculations need to be triggered immediately after other item-level calculations because their values often depend on non-rolled-up fields.. For example, Rolled-Up Discount Percent and Rolled-Up Gross Margin Percent need other rolled-up values to be calculated first.
Note

The Line Item and Product Type fields aren't shown if you've enabled the integration with SAP Variant Configuration and Pricing and turned on the Use Back-End Pricing on Quote Totals toggle under Pricing/Calculations   Pricing Procedures.

Formulas for One-Time Rolled-Up Calculations
Note

Formulas for recurring rolled-up calculations are the same — just working with the recurring values.

One-Time Rolled-Up List Price - Sums up the One-Time List Price of all children and parent items. Quantity doesn't affect the rolled-up list price values.

RolledUpListPrice = Sum(itemListPrice)

Prerequisites: Before performing this calculation, the List Price must be calculated for each item.

Example:

10 + 20 + 30 = 60

 	

ListPrice

	

Quantity

	

RolledUpListPrice




1.

	

30

	

1

	

60




1.1.

	

20

	

2

	

20




1.2.

	

10

	

3

	

10

One-Time Rolled Up Extended List Price - Sums up the One-Time Extended List Price of all children and parent items.

RolledUpExtendedListPrice = Sum(itemExtendedListPrice)

Prerequisites:Before performing this calculation, the Extended List Price must be calculated for each item.

Example::

3*10 + 2*20 + 1*30 = 100

 	

ListPrice

	

Quantity

	

ExtendedListPrice

	

RolledUpExtendedListPrice




1.

	

30

	

1

	

30

	

100




1.1.

	

20

	

2

	

40

	

40




1.2.

	

10

	

3

	

30

	

30

One-Time Rolled Cost - Sums up the One-Time Cost of all children and parent items. Quantity doesn't affect the rolled-up cost values.

RolledUpCost = Sum(itemCost)

Prerequisites:: Before performing this calculation, the Cost must be calculated for each item.

Example::

5 +10 + 15 = 30

 	

Cost

	

Quantity

	

RolledUpCost




1.

	

15

	

1

	

30




1.1.

	

10

	

2

	

10




1.2.

	

5

	

3

	

5

One-Time Rolled Up Extended Cost - Sums up the One-Time Extended Cost of all children and parent items.

RolledUpExtendedCost = Sum(itemExtendedCost)

Prerequisites:: Before performing this calculation, the Extended Cost must be calculated for each item.

Example::

3*5 + 2*10 + 1*15 = 50

 	

Cost

	

Quantity

	

ExtendedCost

	

RolledUpExtendedCost




1.

	

15

	

1

	

15

	

50




1.1.

	

10

	

2

	

20

	

20




1.2.

	

5

	

3

	

15

	

15

One-Time Rolled Up Net Price - Sums up the One-Time Net Price of all children and parent items. Quantity doesn't affect the rolled-up list price values.

RolledUpNetPrice = Sum(itemNetPrice)

Prerequisites:: Before performing this calculation, the Net Price must be calculated for each item.

Example::

9 + 18 + 27 = 54

 	

ListPrice

	

Quantity

	

DiscountPercent

	

NetPrice

	

RolledUpNetPrice




1.

	

30

	

1

	

10

	

27

	

54




1.1.

	

20

	

2

	

10

	

18

	

18




1.2.

	

10

	

3

	

10

	

9

	

9

One-Time Rolled Extended Amount - Sums up the One-Time Extended Amount of all children and parent items.

RolledUpExtendedAmount = Sum(itemExtendedAmount)

Prerequisites:: Before performing this calculation, the Extended Amount must be calculated for each item.

Example::

27 + 36 + 27 = 90

 	

ListPrice

	

Quantity

	

DiscountPercent

	

NetPrice

	

ExtendedAmount

	

RolledUpExtendedAmount




1.

	

30

	

1

	

10

	

27

	

27

	

90




1.1.

	

20

	

2

	

10

	

18

	

36

	

36




1.2.

	

10

	

3

	

10

	

9

	

27

	

27



One-Time Rolled Up Discount Amount - Sums up the One-Time Discount Amount of all children and parent items.

RolledUpDiscountAmount = Sum(itemDiscountAmount)

Prerequisites:: Before performing this calculation, the Discount Amount must be calculated for each item.

Example::

9 + 18 + 27 = 54

 	

ListPrice

	

Quantity

	

DiscountPercent

	

NetPrice

	

DiscountAmount

	

RolledUpDiscountAmount




1.

	

30

	

1

	

10

	

27

	

3

	

10




1.1.

	

20

	

2

	

10

	

18

	

4

	

4




1.2.

	

10

	

3

	

10

	

9

	

3

	

3



One-Time Rolled Up Discount Percent - Calculates One-Time Rolled Up Discount Percent for each main item from One-Time Discount Amount and One-Time Rolled Up Extended List Price.

RolledUpDiscountPercent = RolledUpDiscountAmount / RolledUpExtendedListPrice * 100

Prerequisites:Before performing this calculation, One-Time Rolled Up Discount Amount and One-Time Rolled Up Extended List Price must be calculated.

Example::

10/100*10 = 10

4/40*10 = 10

3/30*10 = 10

 	

ListPrice

	

Quantity

	

ExtendedListPrice

	

DiscountPercent

	

NetPrice

	

DiscountAmount

	

RolledUpCost

	

RolledUpNetPrice

	

RolledUpDiscountPercent




1.

	

30

	

1

	

30

	

10

	

27

	

3

	

10

	

100

	

10




1.1.

	

20

	

2

	

40

	

10

	

18

	

4

	

4

	

40

	

10




1.2.

	

10

	

3

	

30

	

10

	

9

	

3

	

3

	

30

	

10



Rolled Up Gross Margin Percent - Calculates Rolled-up Gross Margin Percent for each main from RolledUpNetPrice and RolledUpCost.

RolledUpGrossMarginPercent = 100 * (RolledUpNetPrice - RolledUpCost) / Math.Abs(RolledUpNetPrice)

Prerequisites:Before performing this calculation, One-Time Rolled Up Net Price and One-Time Rolled Up Cost must be calculated.

Example::

10/100*10 = 10

4/40*10 = 10

3/30*10 = 10

 	

ListPrice

	

Cost

	

Quantity

	

ExtendedListPrice

	

ExtendedCost

	

DiscountPercent

	

NetPrice

	

RolledUpCost

	

RolledUpNetPrice

	

RolledUpGrossMarginPercent




1.

	

30

	

15

	

1

	

30

	

15

	

20

	

27

	

30

	

48

	

37.5




1.1.

	

20

	

10

	

2

	

40

	

20

	

20

	

18

	

10

	

16

	

37.5




1.2.

	

10

	

5

	

3

	

30

	

15

	

20

	

9

	

5

	

8

	

37.5


Reverse Rolled-up Calculations

Reverse rolled up calculations are available only in Quote 2.0. This calculation type lets you change the rolled up amount so that the system would calculate the respective amount for each item.

For example, if you change the rolled up extended amount of a main item, the system will calculate the rolled up amount of each item and consequently the extended amount of each item.

When a rolled up amount is changed, the discount percent will first change accordingly. From there on, other calculations will be executed to calculate the amount of each item. In the calculation setup, only the discount percent calculations are set up by default. Administrators should add subsequent calculations based on their model of SAP CPQ.

Note

You can set up the calculation order for rolled up fields only for main items. Therefore, line item rolled up fields should not be editable on quotes.

Reverse Calculations

Reverse calculations in Quote 2.0 let you change the amount in Product Types and Total fields so that the value in the respective item fields changes accordingly (the discount percent is first changed and then other fields set up for the calculation).

Relative Discount Calculations
On this page
Rolled-up Calculations
Reverse Rolled-up Calculations
Reverse Calculations
Relative Discount Calculations
Yes
No