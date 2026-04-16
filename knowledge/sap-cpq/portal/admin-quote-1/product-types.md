# Product Types | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/a7ec1c9839e74ee499ee557f9b5f9a01.html?locale=en-US&state=PRODUCTION&version=2603
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
Product Types

Product Types can be used in tracking quotation and order information. You can also separate subtotals in the quote for each product type, which gives users the ability to use different discounts for different product types.

Each product created in the system can be assigned one Product Type. Multiple product types within a product can be achieved by setting attributes within a product to a different product. This is discussed more in depth later.

Selecting the Product Types link under the Products menu gives you access to the Product Types administrative section. Here, Product Types can be Deleted or Edited. You can add a new Product Type by clicking the Add New button.

Adding Multiple Product Types to a Product

Products can have only one product type. However, it's possible for a product to have multiple product types. To achieve this, you need to configure attributes within the product to a different product type. This is done through the Ref Product field in the product attributes definition screen.

The Ref Product field is used for connecting an attribute to another product. In this way, it’s possible to create a parent child relationship between products. There are many benefits in doing this, including the ability to configure the child product within the parent product. This is discussed more in depth in the Product Display Types topic.

One benefit of creating this parent child relationship between products is the sharing of product types. When you reference another product in an attribute through the Ref Product field, the attribute takes on the same product type as the product it’s referencing. This is useful when the referenced product has a product type other than the parent product.

To take full advantage of a referenced product’s different product type, it's best to mark the attribute that references the product as a line item. This way the attribute shows up separately from the main item in the quote and includes a different product type. The quote then has separate product type subtotals, which can be discounted (assuming you have the permission to do so).

Here is a simple example of how an attribute can be set up to have a separate product type from the main product. We’ll use the SMB2 Desktop Computer product, which has a product type of Hardware in this example. This product contains an attribute called Software that we set up with a product type of Software.

First we need to make sure that we have a separate product with the product type of Software. This product can be a simple product without any attributes. Next we’ll go to the SMB2 Desktop Computer and go to the attribute’s administration. In the Reference Product field we need to click the Select button. This displays a pop-up window where you can search for the product that you’re going to reference. Here we will choose the Software product. It’s named the same name as the product type to help us quickly identify it. Once it’s selected the product is entered in the Referenced Product field.

Note

In this example, we’re using the Product Editor to define the referenced product. This can also be done through the manual product definition, but instead of a Select button you see a dropdown box.

Finally, we set the attribute as a line item so that we’re able to see the attribute listed separately from the main item in the shopping cart. We’ll also see the subtotals for Software and Hardware in the Product Types section of the cart.

Yes
No