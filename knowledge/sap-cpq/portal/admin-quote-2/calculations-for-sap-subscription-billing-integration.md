# Calculations for SAP Subscription Billing Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/c559929c2a1f4fc3b74c83106664c582.html?locale=en-US&state=PRODUCTION&version=2603
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
Calculations for SAP Subscription Billing Integration

When integration with SAP Subscription Billing is enabled, the SubscriptionItem section displays in Fields and Calculations. This section contains only standard quote fields available on quotes when the two applications are integrated. SAP Subscription Billing products don’t support quote item custom fields.

Quotes with SAP Subscription Billing products contain standard quote fields and the standard fields available only for SAP Subscription Billing products. Calculations for the SAP Subscription Billing integration should be managed and set up in the same way as other calculations in Quote Fields and Calculations.

Note

Discount fields on rate plan charges are only editable on the quote if they are defined as parameters in the rate plan template.

These are the standard quote fields and calculations introduced specifically for SAP Subscription Billing products:

Quote Field

	

Calculation

	

Description

	

Formula




Contract End Date

	

Subscription Billing - Calculate End Dates from Start Date and Months

	

Calculates end dates from the start date and the contract duration. This calculation is by default present on the fields Start Date, Item Effective Date, Contract Length, and Minimum Term.

	

Contract End Date = Start Date + Contract Length (months)




One-Time Charge Discount

	

Subscription Billing - Calculate Item One-Time Net Price from One-Time Charge

	

Calculates item One-Time net price from one-time charge.

	

ItemOne-TimeNetPrice = SUM(OneTimeChargeListPrice - OneTimeChargeListPrice* OneTimeChargeDiscountPercent/100)




Recurring Charge Discount

	

Subscription Billing - Calculate Item Recurring Net Price from Recurring Charge

	

Calculates item Recurring net price from recurring charge.

	

ItemRecurringNetPrice = SUM(RecurringChargeListPrice - RecurringChargeListPrice*RecurringChargeDiscountPercent/100)




One-Time Discount Percent and any fields affecting the discount percent via calculations

	

Subscription Billing - Calculate One-Time Charge from Item One-Time Discount Percent

	

Calculates one-time charge from item One-Time discount percent.

	

affectedChargesTotalListPrice = SUM(OneTimeChargeWithDiscountListPrice) - sum of one-time charge list prices that could be discounted. If affectedChargesTotalListPrice is equal to zero, an error message displays, stating that all one-time charges have fixed prices and couldn’t be discounted.

averageChargeDiscount = item.ListPrice * item.DiscountPercent / affectedChargesTotalListPrice - Apply averageChargeDiscount to all one-time charges that can be discounted.




Recurring Discount Percent

	

Subscription Billing - Calculate Recurring Charge from Item Recurring Discount Percent

	

Calculates recurring charge from item Recurring discount percent.

	

affectedChargesTotalMrcListPrice = SUM(RecurringChargeWithDiscountListPrice) - sum of recurring charge list prices that could be discounted. If affectedChargesTotalMrcListPrice is equal to zero, an error message displays, stating that all recurring charges have fixed prices and couldn’t be discounted.

averageChargeDiscount = item.MrcListPrice * item.MrcDiscountPercent / affectedChargesTotalMrcListPrice - Apply averageChargeDiscount to all recurring charges that can be discounted.


In Quote Fields and Calculations, calculations for those SubscriptionItem fields that contain them should be set in the following order:

Field

	

Order of Calculations




Start Date

	

Subscription Billing - Calculate end date from start date and months




Item Effective Date

	

Subscription Billing - Calculate end date from start date and months




Contract Length

	

Subscription Billing - Calculate end date from start date and months




Minimum Term

	

Subscription Billing - Calculate end date from start date and months




One-Time Charge Discount

	

Subscription Billing - Calculate item One-Time net price from one-time charge

Item One-Time Discount Amount (from One-Time Net Price)

Item One-Time Discount Percent (from One-Time Net Price)

Item One-Time Extended Amount

Total One-Time Net Price

Total Amount

Product Type One-Time Discount Percent

Product Type One-Time Discount Amount




Recurring Charge Discount

	

Subscription Billing - Calculate item Recurring net price from recurring charge

Item Recurring Discount Amount (from Recurring Net Price)

Item Recurring Discount Percent (from Recurring Net Price)

Item Recurring Extended Amount

Total Recurring Net Price

Total Recurring Amount

Related Information
Quote 2.0 Calculations
Order of Calculations when Changing Quote Field Values
SAP Subscription Billing Integration for Quote 2.0
Yes
No