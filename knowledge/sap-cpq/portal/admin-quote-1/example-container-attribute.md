# Example Container Attribute | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/b28e36eab92540718f756cc49c37906c.html?locale=en-US&state=PRODUCTION&version=2603
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


	
User Selection
	
User Selection with Attribute Quantity Input
	
User Selection w/ Quantity Inputs for each Attribute Value
	
User Input or Computed – Date, Number or String
	
Container Attributes


	
Create Container Attributes 
	
Container Rows


	
Containers and IronPython Events
	
Example Container Attribute
	
Autocomplete Attributes
	
Measurement Attributes
	
Contract Duration Attributes
	
Billing Cycle Attributes
	
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
Example Container Attribute

Here, you can see how a complex product such as a computer system with several configurable parts can be created with container attributes.

If you want to give users an option to customize a complex product, such as a computer with several configurable parts, you can do so by creating several User Selection attributes, which you will later store in a single container attribute. For example, you can create a user selection attribute Operating System which will be sold with the computer and add values such as Windows 7 and Windows 10 to it.

You can add more user selection attributes such as Computer Type, Manufacturer, Model and so on.

All of these attributes can then be stored into a container attribute as columns in the Configurator (user side). This is done in the Columns tab of a container attribute.

Note

The selected column type is Stand-alone Column and the display type is DropDown in this example.

Each of the attribute values you select will be displayed in rows in the Configurator, in the form of a dropdown list, for example.

Next, you need to establish according to which criteria you want the product to be priced. In this example, we’ve added a Price column to the container attribute, which calculates the product price according to the Term users select during configuration (for example, 12 months). To establish the pricing mechanism which calculates the price according to the term, we’ve added the following CTX tag into the calculation formula while setting up the Price column:

<*EVAL(<*CTX( MyContainer.CurrentRow.Column(Term).Get )*>* 20)*>

This tag multiplies each term by $20 for a monthly support fee per a computer.

After this is done, you can add the container attribute to the configurable product of your choice. It’s important to add the pricing mechanism to the product, as well, to make sure the tag you’ve supplied during container attribute creation works in the Configurator. This is done in the Pricing tab during the product creation.

The CTX tag structure which should be added here to apply the pricing mechanism from the container attribute is:

<*CTX( Container(ContainerAttributeName).Sum(Price) )*>

Once all of this is done, the product configuration should be displayed like this in the Configurator:

Yes
No