# Formula Rules | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/fc56bcbf796049ba95a490685136762d.html?locale=en-US&state=PRODUCTION&version=2603
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
Formula Rules

You can create complex rules which impact the product behavior during configuration.

Each rule is created with a condition, which determines whether or not the action will run, and an action, which tells the system what to do when the condition is true. Each rule is, in essence, an IF statement. IF the condition is true, THEN the anything in the action field will run. There are SAP CPQ tags used especially for rules (and attribute triggers) to create the condition and the action statements.

You can also import and export formula rules, and rank them in the order of execution.

Name (required)

	

Used as a reference and a brief description of a rule. It’s recommended to use associative names, such as Processor Blocks Memory, or Color Selects Widget. This makes it easier to find the rule later, if it needs to be edited.




Description

	

Used for additional explanations or notes. It can make it easier for other administrators to understand what the purpose of the rule is, or how the rule fits in with other rules and the product configuration.




Active

	

Manually turns the rule on or off. This is useful for diagnostic or testing purposes.




Start Date/End Date

	

The dates between which the rule will be applicable.




Rank

	

Determines the priority of the rule’s execution.




Condition (required)

	

Restricts the rule’s execution in certain cases. If the condition is fulfilled (true), the rule will be executed, and vice versa. You can use the Formula Builder for assistance when creating a condition expression. Maximum allowed number of characters is 3000.




Action (required)

	

The action which occurs when the rule is executed. You can use the Formula Builder for assistance when creating an action expression. Maximum allowed number of characters is 3000.

Building Rules in Formula Builder

The Attribute Data Tags topic contains a list and descriptions of all tags available for rule expressions. For example, the following expression would be created for a rule which needed to state that when the value Blue in the attribute Color is selected, then the value Red from the attribute Color and the value High from the attribute Level need to be selected. The condition field would contain: <*ANYSEL(Color:Blue)*>. This will return TRUE when Blue is selected from the attribute Color. Once the Condition (required) field returns a value of TRUE, the system looks at the Action (required) field and runs that expression. The action field should contain: <*SELATV(Level:high)*>; <*SELATV(Color:Red)*> or <*SELATV(Level:high,Color:Red)*>. This orders the system to select the attribute value (SelectAttributeValue) High and Red in the attribute Level and Color. Both statements in the example are correct. One statement may work better in a certain situation depending on the rest of the expression. Make sure the Active check box is checked in order for the system to run the rule.

If <*DisallowAttribute(NameOfAttribute)*> is used, all preselected attribute values will be unchecked.

Related Information
Guided Selling
Yes
No