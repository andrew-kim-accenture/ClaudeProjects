# Pricing/Calculations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/f2578f7dcfbc4aceb184e403c62bd7d0.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Migration Guide to Quote 2.0 EngineVersion: 2603English
Provide feedback on our search

	
SAP CPQ Migration Guide to Quote 2.0 Engine
	
About Quote 2.0 - Benefits and Compatibility
	
Quote 2.0 Migration Process
	
Migration Effort Estimate


	
Quote 1.0 vs Quote 2.0 - Feature Differences
	
Feature Specific Migration Instructions


	
Pricing/Calculations
	
Products
	
Quotes
	
Customers/Customer Roles
	
Users
	
CRM Integration
	
Providers
	
UI Design
	
Workflow/Approval
	
Develop
	
General
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
Migration Effort Estimate Legend
	
Quote 2.0 Migration Checklist
	
Support Procedure for Migration to Quote 2.0
	
Quote 1.0 to Quote 2.0 Migration FAQ
Pricing/Calculations

*Migration Effort Estimate Legend

Migration Overview

Setup Section Name

	

Availability in Quote 2.0

	

Status in Quote 2.0

	

Description

	

Migration Effort Estimate

	

Migration Instructions




Market Visibility

	

Available

	

Improved

	

Some of the related CTX tags have changed.

	

S

	

Migration Instructions




Discounts/Multipliers

	

Discounts are available and Multipliers are obsolete

	

Redesigned

	

New option in Quote 2.0 for discounts - Calculate discounts only for changed items. Multipliers are obsolete in Quote 2.0.

	

M

	

Migration Instructions




Cart Fields Administration

	

Available

	

Redesigned

	

Quote calculations are now configured in Fields, Calculations, Layout in the Quotes section.

	

L

	

Migration Instructions




Rounding Setup

	

Available

	

Redesigned

	

Some options have been deprecated.

	

S

	

Migration Instructions




Shipping

	

Not Available

	

Obsolete

	 	 	 


State Sales Tax

	

Available

	

Redesigned

	

Some options have been redesigned

	

M

	

Migration Instructions




Total Amount Limit

	

Not Available

	

Obsolete

	 	 	 


Promotions/Special Pricing

	

Available

	

Redesigned

	

Some options have been redesigned

	

M

	

Migration Instructions




Pricing Procedures

	

Available

	

Quote 2.0 Exclusively

	

Quote 2.0 offers an out-of-the-box solution for pricing that in Quote 1.0 you need to set up manually. Pricing procedures are relevant only for the integrations with SAP S/4HANA Sales Order and Solution Quote.

	

S

	

Migration Instructions




State Sales Taxation

	

Available

	

Redesigned

	

Sales taxation is applied on item level on Quote 2.0

	 	 

Migration Instructions
Market Visibility

Step 3 of the Market Visibility page allows the use of CTX tags. Some CTX tags have changed in Quote 2.0. For example, the CTX tags for customers have been deprecated and new tags for involved parties are added.

To check if you need to make any changes, go to Setup  Pricing/Calculations  Market Visibility. Scroll down to Step 3 (in your 1.0 environment). If the Visibility condition has a 1 (Always) or 0 (Never), no changes are required.

If there is a formula/tag, check to see if the tag is available in Quote 2.0 by browsing through tags in this list. If a tag in use is not available in Quote 2.0, the formula/tag will need to be rewritten with a supported tag. For example, if you were using the End User to drive what Markets were visible, you can rewrite with the following:

Deprecated Tag:



<*END_USER_INFO (FirstName)*>

Updated Tag:



<*CTX( Quote.InvolvedParties.PartnerFunctionKey(BP).FirstName )*>
Discounts/Multipliers

Multipliers have been deprecated in Quote 2.0.

To check if you need to make any changes, edit every entry in Setup  Pricing/Calculations  Discount/Multipliers in your Quote 1.0 environment. Note every entry where the minimal value, default value, or maximum value are anything other than 1 for the Multiplier and Recurring Price Multiplier rows. If the value is 1 (100% of the price), no changes are required.

If there are any formulas, or tags, or a number other than 1, this suggests that multipliers may be in use. One way to confirm this is by checking Setup  UI Design  Quote Layout and Setup  Quote Layout and Setup  Quotes  Quote Layout Permissions to see if multiplier fields are visible to any user group.

If you are using multipliers in Quote 1.0, you would need to reimplement your multipliers as either discounts or custom calculations in Quote 2.0.

Cart Fields Administration

The Cart Fields Administration section has been redesigned in Quote 2.0. All quote field custom calculations and editability settings in Cart Fields Administration in the Quote 1.0 environment need to be reimplemented in Setup  Quotes  Fields, Calculations, Layout in the Quote 2.0 environment. The Fields, Calculations, Layout section in the new engine comprises three sections from the old engine: Cart Fields Administration, Quote Layout, and Quote Layout Permissions.

In Quote 1.0, calculations are based on editable field groups - you add fields to an editable group and then you choose the calculations that will trigger when the value in those fields is changed. You do this for unique combinations of quote statuses and user types. This concept is obsoleted in Quote 2.0. In the new engine, you choose for each field the calculations that will trigger when the field's value is changed. It is no longer possible to group fields and assign them the same calculations. In Quote 2.0 you would need to choose the calculations for each field separately. Additionally, in Quote 2.0, the field editability and calculations are administered separately. In Quote 2.0, you choose the fields that are editable for each permission group in each quote status.

All new tenants, both Quote 1.0 and Quote 2.0, have system calculations set up by default. If you haven't changed anything in the default calculations in Quote 1.0, you won't need to change anything in Quote 2.0 after the migration because the same calculations are set up by default in the new engine as well. There are three system calculations in Quote 1.0 (All Item Fields - Direct ver. 1, Product Type All Fields - Direct, and Total All). In Quote 2.0, they are broken down into separate calculations so instead of three, by default there are multiple system calculations in Quote 2.0.

All calculations other than these system calculations in Quote 1.0 are custom quote calculations that you need to recreate in Quote 2.0. For each quote status/user type in Quote 1.0, check the list of calculations in Calculations on Add/Copy/Delete Item to see which are custom (custom are all those other then the three system calculations). Go to Develop  Custom Quote Calculations, find the custom calculation and recreate each one in Quote 2.0 (Quotes  Fields, Calculations, Layout  Fields and Calculations  Calculations on Add/Copy/Delete Item  Add calculation). After that, in Quote 2.0, add the calculation to the list of calculations that trigger on item add/copy/delete.

Additionally, check the editable groups and which calculations they trigger. In quote 2.0, for each field in the editable group set up which calculations need to be triggered and in which order.

After setting up the calculations, you need to define the editability settings. In Quote 1.0, open each quote status/user type, and find the Editable Field Groups and Related Calculations. Go to Quote 2.0, Quotes  Fields, Calculations, Layout   Field Editability, find the same user type, then the quote status, and then select which fields are editable.

The following images show the mentioned interfaces in both engines:

Quote 1.0

Quote 2.0

Rounding Setup

The option to always round up (for example, 91.2 to 92) has been deprecated in Quote 2.0.

Also, the option Fix Quote Amount After Currency Conversion to stick fractional differences after quote conversion to the items or totals has been deprecated in Quote 2.0. For example, if after currency conversion, the item price for 3 items is 33.33 and the total price is 100, in Quote 1.0 there was an option to add 0.01 to one of the items.

In Quote 2.0, an improvement is made in regards to how rounding works. In Quote 2.0, it is possible to include and exclude certain rounding rules for each currency. For example, a rounding rule can be added to specifically round the net prices to four decimal places for the Japanese Yen.

Shipping

No change in functionality, please review manually to ensure that all your Shipping rules migrated over after the initial copy. Please additionally double check if you are using any deprecated CPQ tags.

Total Amount Limit

No change in functionality, please review manually to ensure that all your Total Amount Limit rules migrated over after the initial copy. Please additional double check if you are using any deprecated CPQ tags.

State Sales Tax

The State Sales Tax has been redesigned in Quote 2.0. With new design,you need to choose the business partner function for which they want to define a tax rate per country/region. The tax rate is applied to the quotes where the involved parties with this function are assigned. For more details please review Sales Tax

Promotions/Special Pricing

Promotions/Special Pricing has been redesigned in Quote 2.0. For more details please review Promotions 2.0

Pricing Procedures

In Quote 1.0, you were able to map pricing conditions from back-end pricing procedures to SAP CPQ quote fields using scripting to a limited degree. In Quote 2.0, pricing condition mapping can be done in an improved way on the user interface using the dedicated Pricing Procedures feature. You will need to define pricing condition mappings again in your Quote 2.0 environment. More information is available in Pricing Procedure Mapping.

On this page
Migration Overview
Migration Instructions
Yes
No