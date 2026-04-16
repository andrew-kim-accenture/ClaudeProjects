# Visibility Restrictions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/e8440bc147d1446cb33e13d29002faa0.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Visibility Restrictions
	
Product Messages
	
Product Rules and Messages Tab for CPQ Products
	
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
Visibility Restrictions

You can create Disallow rules for attributes and attribute values that impact the product's behavior during configuration.

Each rule is created with a condition that determines whether or not the action will run, and an action (Disallow Attributes/Disallow Values) that tells the system what to do when the condition is true. Each rule is, in essence, an IF statement. If the IF condition is true, the THEN action field will run. SAP CPQ tags are used specifically for rules to create the condition. The action statement is limited to only two actions: Disallow Attributes/Disallow Values.

You can also import and export formula rules and rank them in the order of execution.

Field

	

Description




Name (required)

	

Used as a reference and a brief description of a rule, it is recommended to use associative names, such as Processor Blocks Memory or Color Selects Widget. This makes it easier to find the rule later if it needs to be edited.




Description

	

Used for additional explanations or notes, it can make it easier for other administrators to understand the purpose of the rule or how it fits in with other rules and the product configuration.




Active

	

Manually turn the rule on or off. This is useful for diagnostic or testing purposes.




Rank

	

Determines the priority of the rule’s execution.




Condition (required)

	

The rule's execution is restricted in certain cases. If the condition is fulfilled (true), the rule will be executed, and vice versa. You can use the Formula Builder for assistance when creating a condition expression. The maximum allowed number of characters is 3000.




Action (required)

	

Disallow Attributes/Values.




Disallow Attributes/Values

	

Depending on the selected action, an attribute or value to be hidden must be selected.

Building Rules in Formula Builder

The topic "Attribute Data Tags" contains a list and descriptions of all the tags available for rule expressions. For example, the following expression would be created for a rule that needs to state that when the value "Blue" is selected in the attribute "Color," then the value "Red" from the attribute "Color" and the value "High" from the attribute "Level" need to be selected. The condition field would contain: <ANYSEL(Color:Blue)>. This will return TRUE when "Blue" is selected from the attribute "Color." Once the Condition (required) field returns a value of TRUE, the system looks at the action statement and performs the action "Disallow Attributes" or "Disallow Values" on the Attributes or Values in the last field "Disallow Attributes/Values."

Yes
No