# Product Rules and Messages Tab for CPQ Products | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/dd4012c771524b688028eeadd3e506fb.html?locale=en-US&state=PRODUCTION&version=2603
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
Product Rules and Messages Tab for CPQ Products

Formula rules, attribute triggers, simple rules, and product messages are displayed under the Rules and Messages tab.

Rules can be used for limiting the configuration of the product. This ensures that the user is only able to create an accurate and valid configuration of the product based on rules you've established in Setup. The Rules and Messages tab allows creating complex rules through the use of SAP CPQ tags. The Formula Builder, which can be accessed during the creation of every rule, can help in creating these rules in a user-friendly way.

Order of Execution

While modeling a product you may use different administrative methods of performing actions on attributes to achieve desired results. These may include triggers or rules. When using both, you may run into trouble if the actions begin to affect the same attributes. Knowing the order that these actions are run in the system may help you when modeling your product. The system runs these methodsin the following order:

Triggers

Simple rules

Formula rules

Any time the user makes a selection or a product is loaded, these processes are run in this order. This is important because if you create a trigger that selects the Color Red then have a rule created that selected the Color Blue, then Blue will be the final selection despite the rule ranking of either the Trigger or the Rule.

Related Information
Non-Deterministic Product Rules Execution in SAP CPQ Engine
On this page
Order of Execution
Related Information
Yes
No