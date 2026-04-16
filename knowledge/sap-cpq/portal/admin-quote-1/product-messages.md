# Product Messages | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/060b8a2fe38e43728eca5b3b42147c27.html?locale=en-US&state=PRODUCTION&version=2603
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
Product Messages

Messages can be displayed to users either in the Configurator (for example, in attribute labels) or in the Responder. They’re also used for enforcing product business rules because, if displayed, they can render product incomplete.

Product validation messages are similar to product rules, but instead of executing an action during the configuration change, they display as a message if the condition is satisfied. They’re executed after the configuration change (that is, when a user selects attribute value in the Configurator).

Message conditions are evaluated after product rules have been executed (after user selects an attribute, product rules are executed followed by message condition evaluation).

Product messages have the following structure: validation name + condition stating when the message displays + the message that is displayed in the Configurator or in the Responder . If message condition evaluates to 1 (true), this message is displayed in the Responder, and the product configuration is rendered incomplete.
Note

Inactive, or expired (current date is outside of the specified start and end dates) validation messages are ignored.

If Make product incomplete is checked, and the condition evaluates to 1 (true), and message is displayed, the product is still incomplete even though all required product attributes are selected.

If Make product incomplete isn't checked, and Show in responder isn't checked, and the condition evaluates to 1 (true), the message isn't displayed, but can be checked with a CTX tag Product.Validation(validation name).

The CTX tag Product.Validation(validation name) is meant to only be used in attribute labels, to show a message in addition to the responder. If used in product rules it returns unexpected results depending on the rule order and configuration, since all rules haven't been executed and configuration hasn't been stabilized.

Message can be displayed in the Responder and in the attribute label (via the tag) at the same time.

In order to translate content of product message, syntax {{Dictionary_Key}} can be used. It retrieves the value from selected dictionary with the key Dictionary_Key.

Yes
No