# Attributes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/bda34ed74631402583e4ba6294e2f43b.html?locale=en-US&state=PRODUCTION&version=2603
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
Attributes

Attributes provide users with additional preferences they can choose from when configuring products to be added to a quote.

For example, if the configurable product is a Desktop Computer, its attributes can be RAM Memory, Hard Drive and Processor. Attributes usually contain values. In the case of the RAM Memory attribute, the values can be 32GB and 64GB (one value can be selected here, but in some cases multiple choice is possible). In short, you can select a specific set of characteristics for the product before adding it to a quote

Attributes are most commonly used for product characteristics, but apart from that, they can be used for:

Calculations – formulas can be added as attribute values to perform calculations separate from the Responder.

Free input by the user – users can populate attribute values in the Configurator.

Display of text to the user – certain information added to attribute values during attribute creation can be displayed to users in the Configurator.

Attributes can be created, edited, copied and viewed in Setup  Product Catalog  Attributes. Here, you can see the list of all existing attributes in the system. Attributes can also be created in the Attributes tab during editing or creation of a configurable product. In both sections you can create one attribute at a time. If you wish to import multiple attributes at once, you can do so in the Import/Export Setup section.
Note

SAP CPQ does not support attribute versions. An issue has been observed with SAP Variant Configuration and Pricing integration when the Attribute Type and Display Type do not match, which is caused by changes in the attribute definition. Since attribute definitions are shared across all product versions, any modification affects all versions. SAP CPQ supports only the latest attribute display type per product.



Create Attributes

Initial four steps for creating attributes are the same for all attribute types and they are described in the following procedure. Step 5 is used for creation of all attribute types except containers, autocomplete and measurement attributes.
Attribute Types

There are several attribute types you can choose from when creating an attribute.
Dynamic Attribute Values

Attribute Quantity

Attribute quantity and its values can be managed in multiple ways.
Yes
No