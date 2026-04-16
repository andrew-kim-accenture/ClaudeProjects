# Controlling Attribute Access Rights via Iron Python | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/c9d2ba27b4f943dfa44b9e641d8de512.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Product Scripts Tab


	
Basic Scripting Elements for Attributes


	
Controlling Attribute Access Rights via Iron Python
	
Attaching IronPython Script on Button Attributes
	
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
Controlling Attribute Access Rights via Iron Python

Using Iron Python, you can define whether an attribute is read-only, editable, or hidden.

There are three levels of attribute accessibility:

Read-only – attribute is disabled but it’s possible to set or change attribute value through Iron Python and regular rules. In other words, the attribute behaves as if it was editable (in its default state), except that the end user can’t interact with the attribute on the UI.

Editable – attribute is enabled. This is default state of each attribute

Hidden – attribute isn’t displayed in the Configurator.

This feature allows administrators to have attributes appear differently to various user types, or become read-only once the quote reaches a certain status, or have a set of attributes that are read-only for certain user-types, and so on. The Hidden option in Iron Python is an extension and override of Attribute Visibility Restrictions that you can define in the Setup. Whatever you configure there’s reflected on the Hidden property of the attribute, with the ability to be overridden by an Iron Python script.

Example 1
The snippet demonstrates how an Iron Python script can be used to check whether the particular attributes should be made read-only based on the user-type. The script triggers when the configurator is entered to configure the product. This


if User.UserType.Name == 'Customer':
 Product.Attr("Interior Color").Access = AttributeAccess.ReadOnly 
 Product.Attr("Exterior Color").Access = AttributeAccess.ReadOnly
script checks if SAP CPQ is being accessed by a user that belongs to the user type "Customer". If this is true, attributes “Interior Color” and “Exterior Color” become read-only. However, if the user doesn’t belong to the “Customer” user-type, then all the attributes are enabled.
Example 2
In this example, the Iron Python script disables two attributes – “Interior Color” and “Exterior Color” only if the quote status is Negotiation. The script triggers when the configurator is used to configure the product. When


if Quote is not None:
 if Quote.OrderStatus.Name == "Negotiation":
    Product.Attr("Interior Color").Access = AttributeAccess.ReadOnly
    Product.Attr("Exterior Color").Access = AttributeAccess.ReadOnly
the quote gets its status changed to Negotiation, two attributes get disabled.
Example 3
This example demonstrates how administrators are able to update the attribute value even if the attribute is marked as read-only. The underlying Iron Python script of the Update value button is as follows:


Product.Attr("Interior Color").Access = AttributeAccess.ReadOnly
Product.Attr("Exterior Color").Access = AttributeAccess.ReadOnly
myAttribute = Product.Attr("Exterior Color")
myAttribute.SelectValue("gray")
Clicking the button updates the attribute-value through scripting even though the attribute is read-only.
Related Information
Attributes
On this page
Example 1
Example 2
Example 3
Related Information
Yes
No