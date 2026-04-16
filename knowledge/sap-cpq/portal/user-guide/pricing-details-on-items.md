# Pricing Details on Items | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/f4fcd3274ce64cf38ff1ce0ebef11d96.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey
	
Load Existing Quotes
	
Quote


	
Quote and Item Actions
	
Pricing Details on Items
	
Sales Units of Measure
	
Discounts and Multipliers
	
Other Discounts
	
Quote Markets
	
Adding Products to Quote
	
Documents
	
Customer Information
	
MRC Quote Calculations
	
Quote Tabs and Fields
	
Alternative and Variant Configurations
	
Application Parameter for Preventing Users to Add Simple Products to a Quote
	
Adding Products from Quote (Quick Add)
	
Parallel Work on Quote 1.0 (User Side)
	
Multi-User Quote Collaboration
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
Pricing Details on Items

The Pricing Details feature allows you to view or edit pricing details for quote items on products synchronized from SAP Variant Configuration and Pricing.

In SAP CPQ, the system presents all pricing conditions next to each quote item. Pricing Details table shows only the pricing conditions that have values. Each pricing condition appears as a row in the table, as shown in the screenshot below.

The Pricing Details table displays all relevant pricing information available in SAP CPQ at the item level. The tabular view closely matches the data representation in SAP S/4HANA. As a result, you don't need to switch between systems to find a detailed breakdown of the pricing procedure.

Prerequisites
Before you begin, ensure the following requirements are met:

You are using the SAP CPQ Quote 2.0 engine.

Your admin has enabled you to see the View Pricing Details button in the item action menu.

Products originate from SAP S/4HANA.

Products have the Variant Pricing type and are synchronized from Backoffice.

The pricing procedure is set in both SAP S/4HANA and SAP CPQ.

You are using the Quote-First approach.

You start with an empty quote and define first the involved parties, markets, and pricebook (or sales area) before adding products to the quote.

Viewing Pricing Details

To access pricing details, click on three dots to access the item actions menu and then select View Pricing Details action. The Pricing Details table opens with the display of standard fields as they appear in SAP S/4HANA, including step numbers and both active and inactive pricing conditions.

You can display additional columns by clicking the gear icon. For example, you can add columns for rounding differences, variant keys and factors, or you can add a column to show whether a condition is statistical.

All pricing conditions in the table also appear as columns above the table. If some columns are not visible, move the slider to the right to see more.

Modifying Pricing Details

To modify pricing details, select the Edit button. You can manually change existing pricing conditions with associated charges or add new ones, if allowed. Editable table cells indicate that changes are permitted.

For example, you can add a pricing condition returned in the payload from SAP Variant Configuration and Pricing, even if that condition is not present in the current SAP CPQ mapping. The available pricing condition types appear as options in the dropdown menu.

Note

You can change either the condition rate and the condition unit, or the condition value, but not both at the same time.

When you're done with your changes, save them. Saving manually added conditions from the pricing procedure triggers price recalculation.

Related Information
Pricing Details on Items
On this page
Prerequisites
Viewing Pricing Details
Modifying Pricing Details
Related Information
Yes
No