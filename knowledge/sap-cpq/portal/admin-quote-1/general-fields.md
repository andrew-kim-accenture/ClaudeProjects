# General Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f77b6b36cbba4f098d7ea4e48801e72b.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products
	
Categories
	
Attributes


	
Create Attributes


	
General Fields
	
Long Description for Configurable Products
	
Attribute Types
	
Dynamic Attribute Values
	
Attribute Quantity
	
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
General Fields

This table contains description of general fields that should be populated when creating or editing each attribute type.

Attribute Name

	

Required field that should contain the name under which the attribute is going to be displayed to the user.

Recommendation

We recommend to avoid duplicate attributes names, as this may lead to problems with later processes such as fetching the attribute names in a formula.




System ID

	

Automatically populated according to the value entered in the Attribute Name field. If an identical attribute system ID already exists within the system, “_1” is added automatically at the end of the generated value, as it needs to be unique.




Attribute External ID

	

It allows you to create another attribute identifier independent of SAP CPQ IDs.

The field is populated with the logic from a client’s external system, so it will not be checked by SAP CPQ.

It is impossible to access the value of this field with SAP CPQ tags and it does not need to be unique.




Attribute Type

	

Refer to Attribute Types for more information.




Check if attribute is in use

	

See which products currently reference this attribute. This button isn't interactive when a new attribute is created, since it isn't yet in use.

Note

Rules that are created before the 2208 release and use CTX tags are not displayed on the Check if attribute is in use list. As a workaround, open the rule that has the CTX tag and save it again without making any changes. After this, the rule should be visible on the list of used attributes.




Contains Personally Identifiable Information

	

By selecting this checkbox, you confirm that the information in the attribute can be used to identify an individual uniquely (passport number, for example), or that the information can be used in combination with other information to recognize an individual (for example, race and date of birth).




Suppress Information Logging

	

The toggle can be activated only if the Contains Personally Identifiable Information toggle is active. By activating it you confirm that the attribute contains information whose old and new values shouldn't be logged, as the unauthorized acquisition could be harmful to the concerned individual.

Related Information
Create Attributes
Product Attributes Tab
Attributes
Attribute Types
Yes
No