# Quotes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/fbd691d6411c4eab97cb466ced885fa0.html?locale=en-US&state=PRODUCTION&version=2603
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
Quotes

Migration Efforts

See Migration Effort Estimate Legend.







Migration Overview

Setup Section Name

	

Availability in Quote 2.0

	

Status in Quote 2.0

	

Description

	

Migration Effort Estimate

	

Migration Instructions




Fields, Calculations, Layout

	

Available

	

Improved

	

This new administrative section consolidates Cart Fields Administration, Quote Item Custom Fields, Quote Layout and Quote Layout Permissions from Quote 1.0 into one page.

	

L

	

Migration Instructions




Document Generation Templates

	

Available

	

Improved

	

Tags referencing customer roles Bill To, Ship To, or End Customers will need to be updated.

Also, any tags that have been deprecated or updated in Quote 2.0 will need to be changed accordingly.

	

L

	

Migration Instructions




Quote Tables

	

Available

	

Improved

	

The feature works in the same way in both engines. However, there is one minor change made to the way quote tables are managed in the database.

	

S

	

Migration Instructions




Custom Fields

	

Available

	

Redesigned

	

Formulas are not supported. The features allowing the quote to be saved every time a custom field is changed, and allowing the custom field to be saved Always and Every time quote has been modified have been deprecated.

	

L

	

Migration Instructions




Quote Item Custom Fields

	

Available

	

Improved

	

Quote item custom fields are now configured in Fields, Calculations, Layout in the Quotes section.

	

M

	

Migration Instructions




Key Attributes

	

Not Available

	

Obsolete

	

This can be reimplemented using item custom fields in Quotes  Fields, Calculations, Layout.

	

M

	

Migration Instructions




Search Fields

	

Improved

	

Improved

	

Some fields like Customer_ID and Customer Name have been removed, but other custom fields are available.

	

S

	

Migration Instructions




Bulk Deletion

	

Not Available

	

To Do

	

This feature is currently not available in Quote 2.0.

	 	 


Quote Visibility

	

Available

	

Redesigned

	

Setting visibility conditions using SAP CPQ tags has been deprecated.

	

M

	

Migration Instructions




Reports

	

Not Available

	

Obsolete

	

This feature is obsolete in Quote 2.0.

	 	 


Cart Level Aggregates

	

Not Available

	

Obsolete

	

Cart level aggregates can be implemented using quote item custom fields and scripting.

	

L

	

Migration Instructions




Email Customers / Quote Acceptance Settings

	

Available

	

Improved

	

In Quote 2.0, a new tag has been introduced that allows administrators to put the link anywhere in the email.

	

S

	

Migration Instructions




Quote Layout Permissions

	

Available

	

Improved

	

Quote Layout Permissions are now configured in the Quotes section in Fields, Calculations, Layout.

	

M

	

Migration Instructions




Partner Functions

	

Available

	

Quote 2.0 exclusively

	

This new Setup section allows administrators to define partner functions like Bill To, Ship To, Sold To and as many others as needed.

	 	 
Migration Instructions
Fields, Calculations, Layout

This new subsection in Quote 2.0 combines multiple other administrative subsections from Quote 1.0. In this new page, you will be able to control your cart field administration, quote item custom fields, quote layout, and quote layout permissions. Detailed descriptions and how-to procedures are available in Quote 2.0 Calculations.

Document Generation Templates

There is no change in the logic behind the feature, it works the same in both quote engines.

Note

You may be using deprecated SAP CPQ tags and we highly recommend you review the list in CTX Tags - Quote 1.0 vs Quote 2.0.

Quote Tables

There is no change in the logic behind the feature, it works the same in both quote engines.

Note

While the functionality has not changed, there is one minor change to the way quote tables are managed in the database and this results in the fact that you no longer need to use QuoteTable.Save(). In Quote 2.0, quote tables are automatically saved in scripts. Please remove QuoteTable.Save() from any scripts that interact with quote tables.

Custom Fields

In Quote 2.0, instead of formulas, you need to use scripts. In Quote 2.0, two calculation types are available: None and Once, when quote is created. To rewrite your formulas to scripts, consult the Develop section. Have in mind that modifying custom fields via scripts or APIs no longer triggers any attached global scripts On the Custom Field Changed event.

Quote Item Custom Fields

In Quote 2.0, it's not possible to define formulas on quote item custom fields like in Quote 1.0. Instead, in Quote 2.0 you need to write scripts instead of formulas and attach it to an event, usually the AfterProductAddedToQuote event. More information about scripting can be found in the Develop section. Alternatively, you should write a calculation in Fields, Calculations, Layout and attach it to a field so that the calculation triggers when the field's value changes..

Key Attributes

This feature has been deprecated in Quote 2.0 and will need to be reimplemented using the Fields, Calculations, Layout administrative subsection. In Quote 2.0, you need to create an item custom field and add a script to it that will summarize the amount of all the fields.. More information about scripting can be found in the Develop section. Also, here you can find examples of how to assign values to item custom fields.

Search Fields

The list of available standard fields has changed in Quote 1.0. Compare the lists in the two engines and make the necessary updates.

Quote Visibility

Whereas Quote Visibility 1.0 requires SAP CPQ tags to configure visibility rules, in Quote Visibility you use advanced conditions. You migrate your tags to the new conditions logic by creating advanced conditions according to your needs.

Example

The expression [EQ](<* CU_INFO(USER_ZIP_CODE) >,< CustomerZipCode *>) enables users to view quotes of customers with the same zip or postal code as them. The corresponding advanced condition looks as follows:

Object User+ Property Zip Code + Operator Equal + Object Involved Party "Ship-to Party" + Property PostalCode

Cart Level Aggregates

Cart Level Aggregates have been deprecated in Quote 2.0.

To replicate the Cart Level Aggregates functionality in Quote 2.0, create a new quote item custom field in Setup  Quotes  Fields, Calculations, Layout and create a global script that loops through all the items in the quote to set the item custom field to 1 or 0 (for example, item.Item["aggregate"] = 1 (based on the aggregate condition), keep a running total in the loop and assign the total to the Total of the item custom field, for example, context.Quote.Totals.Item["aggregate"] = total).

Example


count = 0
for item in context.AffectedItems:
    attribute = [attr for attr in item.SelectedAttributes if attr.Name == 'YesOrNo']
    Log.Write('From Add/Update/Delete Event')
    isYes = 0
    if attribute:
        if attribute[0].Values[0].ValueCode == 'Yes':
            isYes = 1
            count = count + 1
    item.Item["aggregate"] = isYes
context.Quote.Totals.Item["aggregate"] = count

Email Customers / Quote Acceptance Settings

The quote acceptance link is automatically inserted at the end of the email in Quote 1.0. In Quote 2.0, a new tag has been introduced that allows admins to put the link anywhere in the email (<*CTX( Quote.Link.CustomerAcceptance )*>). Also, you can only use User's Mail Client in Emails are Sent by option. Please see this page for more details: Quote Acceptance Settings 1.0.

Quote Layout Permissions

This feature has been moved into Fields, Calculations, and Layout. More information can be found in Fields and Calculations.

On this page
Migration Efforts
Migration Overview
Migration Instructions
Yes
No