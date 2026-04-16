# Fields and Calculations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/7cf994eb52be4ef4ab766e4ace9f82e4.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Quote Item Custom Fields
	
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
Fields and Calculations

The Fields and Calculations tab allows you to manage existing quote default and custom fields in the system and to add new fields.

After clicking Add New Field, a window pops up for defining basic settings (field name, label, type (Number, Date, Currency, and Text) and dependency from the knockout context). The field displays automatically in the list of fields and you can additionally manage it on the Quote Item Custom Fields page. To handle the field's activity, use the Active toggle.

After you select a field from the list, a list of calculations attached to it will display on the right. Calculations execute from top to bottom. To change the order or calculations, click on  next to a calculation and move it up or down. To remove a calculation, click .

Note

Due to dependency between certain default calculations, the system must execute them in a specific order described in Item Update Calculations Order. Ordering calculations differently may cause an error.

To attach another calculation, click Add calculation below the list of existing calculations. A pop-up shows all the remaining calculations that can be attached to a field by clicking . Additionally, the system lets you define calculations that are triggered when a new item is added. The list of calculations shows on the right if you click Calculation on Add/Copy/Delete Item. These calculations should also be organized in a predefined order as shown in Item Add Calculations Order.

Note

When Quote 2.0 engine is enabled, a parameter Calculate discounts only for changed items is visible on the Discounts page. Selecting the parameter optimizes calculations by checking discount rules only on affected (changed) items.

In Quote 2.0, every calculation represents only one calculation that is executing in the system. Administrators have a full control over the order of calculations and they can easily insert a custom calculation between standard calculations. For example, they can insert an item custom field between two standard fields and insert a calculation so that the custom field affects the standard fields, without having to completely rewrite the entire quote calculation for quote lines. Those calculations have items that are affected by the calculation in the context (context.AffectedItems). This applies also to sections and product types.

ICustomMathScriptArgs - Represents Custom math event argument

The concept of editable groups is removed from the system with Quote 2.0. In the new engine, calculations are managed on field level for all users on the tenant. Calculations are to be set up for each field separately, one field at a time. The system allows you to make all quote fields editable (main items, line items, product types, and totals).

Note

When on a quote, users just need to double-click the underlined amount in a column and all amounts in the column become editable. After changing a value, users can trigger the calculations by clicking Reprice, clicking anywhere outside the active field or by pressing Enter.

On the Quote Fields and Calculations page, the list on the left shows all fields calculated via formulas that display on quotes. Once you click a field, the list on the right will display all calculations that are triggered in the system after the value in the field has changed. Changing a value causes a chain reaction in which calculations are performed one after another. When changing the default order of calculations, make sure to organize them so that the system has the value of all constituent elements before triggering the calculation.

Tip

To organize calculations properly, administrators should understand which values does a calculation use and according to their specific customization, organize calculations in a logical manner.

Additionally, you can create custom calculations via scripting. To access the window for creating scripts, click Add calculation  Add New Calculation. In the pop-up, define the following:

Name - script name.

Row Type - quote level on which the calculation is executed.

Description - detailed explanation of the script.

Force Proxy Generation - if enabled, the system loads and refreshes the WSDL web service.

Note

Scripting Documentation - Calculation Flow Best Practices

Avoid editing an item in a calculation and then updating the quote. Doing so re-triggers the default calculation process. This can cause multiple conflicting flows and inconsistent results.

For additional help with creating scripts, access:

Check Syntax - checks if the script is written properly.

Workbench - enables developing and debugging scripts.

Scripting Methods List - list of relevant methods.

More details on scripting are available in Scripting for Quote 2.0.

To see the editing rights for a field, click Show editing permissions for this field. The pop-up displays the permission groups that have the rights to edit the field and quote statuses in which editing is enabled.

Yes
No