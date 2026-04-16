# Setup Alternative and Variant Configurations - Responsive Design | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/d7f56a913cf44de683e8c41d83a7a16d.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Item Types - Alternative and Variant in Quote 2.0
	
Setup Alternative and Variant Configurations - Responsive Design
	
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
Setup Alternative and Variant Configurations - Responsive Design

If you wish to know how to enable adding alternative and variant items to the base quote items in Responsive Design, refer to the following steps.

Procedure
Go to In Setup   UI Design  Quote Layout.
Move the ItemType column to the Selected Columns list box.
Go to Setup  Quotes  Quote Layout Permissions.
Define visibility of the ItemType column for the particular group.
Go to Setup  Pricing/Calculations  Cart Fields Administration.
Choose the appropriate user group and quote status where a user needs to use this feature.
Add MainItem - ItemType and LineItem - ItemType to the appropriate editable group.
Note

It’s important to make item alternative or variant options available only on main items. By setting the main item to alternative or variant, its line items become alternative or optional.

Results

When the feature is enabled, a column labeled Item Type is displayed in the quote. You’re able to change the item type by selecting the appropriate type in this column. If you want to set some main item as an alternative for another item, you can use the dropdown box to select the desired quote item.

On the left side of the quote, each quote item is marked with the appropriate color, based on the type you selected. Additionally, at the top of the quote there’s a Manage items button. By clicking this button, a few additional buttons are displayed. One of them is a labeled Set Item Type. Also, check boxes are displayed at the beginning of Main items. You can select either all Main Items by selecting the top check box or select Main items separately. Once you make a desired selection, you can click Set Item Type button and set the type.

On this page
Procedure
Results
Yes
No