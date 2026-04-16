# Simple Rules | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/4ec3ee44f9ac4aabb9e536cc9dc40164.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Product Implementation


	
Create Products


	
Product Definition Tab
	
Product Sales Area Tab
	
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
	
Product Categories
	
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
	Integrations
	
Pricing/Calculations
	
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
Simple Rules

In the Rules and Messages tab, you can create simple rules that are less complex than formula rules.

Simple Rules are displayed if the application parameter Display table for simple product rules is set to TRUE.
Note

Simple rules cannot be exported, but they can be ranked.

When you click Add Simple Rule a new screen is displayed where you can define the rule:

Rule name (required)

	

The name of the rule.




Description

	

The optional description of the rule.




Start Date/End Date

	

The dates between which the rule will be applied.




If

	

You can look up product attributes and their values in this dropdown. If a specific product attribute value is selected in the Configurator, the condition for rule execution will be met.




Then

	

The dropdown contains three actions which will occur if the condition is met - Disallow, Select and Reset & Select.

Note

If the application parameter Show Allow Option for Simple product rules is set to TRUE, the action Allow is also displayed in the dropdown.




Selected Values

	

Here, you can add the values which will be impacted by the action selected in the Then dropdown

Related Information
Products
Guided Selling
Formula Rules
Yes
No