# Attribute Trigger | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/5fea1659ef4d4378b472435e3ab1fb4f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products


	
Create Products


	
Product Definition Tab
	
Product Pricing Tab
	
Product Attributes Tab
	Product Rules and Messages Tab

	
Product Rules and Messages Tab for Variant Configuration Products
	
Product Rules and Messages Tab for CPQ Products


	
Formula Rules
	
Attribute Trigger
	
Simple Rules
	
Product Messages
	
Product Scripts Tab
	
Products Layout Tab
	
Products Advanced Settings Tab (Code Matching)
	Product Actions
	
Categories
	
Attributes
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	
Custom Configurator XSLT
	
Pricing/Calculations
	
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
Attribute Trigger

Triggers allow you to perform an action, or actions, when an event occurs on a product attribute. They’re useful for situations when you want to reset an attribute when another attribute is selected or has changed selections.

Note

Triggers run before product rules in the system's processing order.

For example, there’s a Unit of Measure attribute that determines what length is going to be entered in another attribute, Length. Unit of Measure includes the values Inches and Centimeters. If a user selects Inches, types in 12 in the Length attribute, but then decides to change Unit of Measure to Centimeters, then we need to reset Length so that the user knows to enter a centimeter measurement instead of an inch measurement.

You can define triggers for each individual attribute in Rules and Messages  Attribute Trigger. There are three types of triggers that can be defined:

Change Trigger - activates when the user changes the previously selected value within the attribute.

Select Trigger - activates when the user selects any values from the attribute without the previous selection.

Reset Trigger - activates when the user deselects a previously selected value within the attribute.

It's also possible to have multiple triggers in the same attribute, and multiple actions in each trigger (separated by a semicolon). Conditional expressions can also be used within each trigger to determine whether or not an action tag can be run. Triggers can be entered manually, or by using the Formula Builder. In the Formula Builder window, the Actions box under Triggers/Rules only contains actions appropriate for triggers. Conditional Tags that return TRUE or FALSE, such as the ANYSEL tag, aren't available for Trigger expression-building in the Formula Builder, but they can be used.

Yes
No