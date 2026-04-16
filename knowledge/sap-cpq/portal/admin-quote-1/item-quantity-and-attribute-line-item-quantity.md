# Item Quantity and Attribute Line Item Quantity | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/7e3fb7fc00b442fc986a86ffb9450e8d.html#quantity-inheritance-in-multi-level-line-item-structure
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


	
ItemQuantity Attribute
	
Item Quantity and Attribute Line Item Quantity
	
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
Item Quantity and Attribute Line Item Quantity

Quantity in SAP CPQ can be defined on item level, attribute level, and attribute value level.

ItemQuantity Attribute

To allow defining quantity of product items in the Configurator, you need to add the ItemQuantity attribute to a product and list it as line item. The attribute is predefined in the tenant when you register. The Quantity field displays in the Catalog when configuring that product.

In quotes that contain simple products, editable Quantity field displays automatically. You don't need to add the ItemQuantity attribute to simple products if you don't want to reference it somewhere in the application (for example, container or for attribute values).

The following scenarios describe how the ItemQuantity attribute is typically handled:

In the tier pricing model, pricing is based on ItemQuantity, and users are enabled to edit the quantity in quotes by selecting User Can Enter Quantity. Example: a product costs $15 when buying one, $12 when buying two, or $8 when buying three. If a user adds the product to a quote with a quantity of 1, the price is $15. After changing the quantity to 2, the system passes it to the Configurator through the ItemQuantity attribute. As pricing is based on this attribute, the price of the product changes accordingly to $12.

You can expose the attribute to users so that they pick the quantity when configuring an item..

Calculate ItemQuantity via formulas as a hidden attribute. The formula is based on other selections a user makes in SAP CPQ. The quantity is reflected on the quote.

In case of parent/child configurations, the system treats the ItemQuantity attribute and properly propagates the quantity set up in the Configurator to quotes.

Attribute and Attribute Value Quantity

For two attribute types (User Selection w/ Quantity Inputs for each Attribute Value and User Selection w/ Attribute Quantity Input) added as line items to products, the quantity box displays automatically in the Configurator.

There are four quantity-related options that administrators can manage for all attributes listed as line items (applies to all attribute types):

User Can Enter Quantity - a checkbox in Products   Product Attributes/Options  Attribute Definition. Selecting this option enables users to enter quantity to line items independently from the main item. Whatever quantity is entered in the quote, it’s propagated back in the Configurator. The quantity users enter in quotes overrides the default quantity, if defined.

Inherit Quantity from Parent - a checkbox in Products  Product Attributes/Options   Attribute Definition. When this option is enabled, the quantity of the line item is multiplied with the quantity of the main item every time the quantity of the main item changes. The quantity is multiplied locally in the quote and not propagated in the Catalog. If you go back to the Catalog, the product quantity remains as initially defined.

Default quantity (if not 1) - you can define default quantities of values in an attribute line item, so that whenever the attribute is listed as a line item, the selected quantity is shown for each value. To define default quantity, edit an attribute assigned to a product and in the Attribute Values section, select Show More Columns. The Default quantity (if not 1) column is shown for editing quantity. The default quantity is always overridden by the quantity users define in quotes or the quantity inherited from the parent item. The NRC price of the item is multiplied by the default quantity and the multiplied price is shown in the quote. However, the default quantity doesn't affect the recurring price, meaning that the recurring price isn't multiplied by the default quantity like it’s the case with the NRC price.

Formula for Calculating Attribute Quantity - to define a formula for calculating quantity on attribute level, edit the attribute and find the field in the Additional Attribute Definition section. The maximum allowed number of characters is 2500.

Application Parameters for Quantity

The following application parameters affect quantity:

Execute rules on attribute value’s quantity change – the system triggers rules after changing the quantity of attribute values in the Configurator.

Calculate Auto-Reconfigure only items with modified ItemQuantity attribute – defines whether SAP CPQ automatically reconfigures only those items whose item quantity attribute value is changed.

Quantity Sign – enables administrators to select if the quantity is ONLY NON-NEGATIVE, ONLY POSITIVE, or POSITIVE AND NEGATIVE.

Attribute and Attribute Value Quantity - Specific Behavior

Managing attribute and attribute value quantity can differ depending on the type of the attribute listed as line item. What follows are specific scenarios explained through an example:

Item	Quantity


1.Laptop computer

	

1




1.1. Keyboard

	

1




1.2. Wireless mouse

	

1




1.3. Pen

	

1

User Selection w/ Attribute Quantity Input

When you enable users to enter quantity for attribute line items, the attribute quantity in the Configurator displays the quantity of the last edited attribute in the quote.

Example
If you change the quantity of the line items in this order (Wireless mouse (Qty 2) > Pen (Qty 4) > Keyboard (Qty 2)), the quantity of the item in the quote is 2.
If the attribute inherits quantity from the parent item and has default values set for attribute values, the default quantity of the value that was edited first displays in the Configurator.
Example
If you change the quantity of the line items in this order (Wireless mouse (Qty 4) > Pen (Qty 3) > Keyboard (Qty 2)), the quantity of the item in the quote is 4. The default value of the first selected item applies as quantity to all other attribute values in the quote and can be overridden by changing the value of the parent item. If the quantity of the parent item changes, the quantity of the line items changes accordingly. The same behavior applies if users define the quantity of the attribute value and if there are default values defined in Setup. The quantity of the value that was edited first applies to all quantities in the Configurator. If users change the quantity of items in the quote, the quantity of the last edited item propagates back to the Configurator and it applies to all quantities. After updating the quote, the new value applies to all items.
Container

For container attribute line items, there are two additional fields you need to manage when adding columns to a container attribute:

Column Type - select Product Attribute.

Attribute - displays only if the column type is Product Attribute. Here you select the attribute that the column references.

Note

To handle quantity, a column in a container attribute needs to reference the ItemQuantity attribute.

Quantity Inheritance in Multi-Level Line Item Structure
Example

Starting premise:

PARENT_001 – product

Type: Parent/Child System (List) of Configurable Products

ATTR_001/ATTR_004/ATTR_007 - attribute (line item)

Inherit quantity from parent – NO

User can enter quantity – NO

Type: User selection

ATTR_002/ATTR_005/ATTR_008 - attribute (line item)

Inherit quantity from parent – NO

User can enter quantity – YES

Type: User Selection w/ Quantity Inputs for each attribute Value

Note

Quantity of line item is editable only in this option

ATTR_003/ATTR_006/ATTR_009 - attribute (line item)

Inherit quantity from parent – YES

User can enter quantity – NO

Type: User Selection w/ Attribute Quantity Input

DM_CHILD_001/CHILD_002 – container attributes

Inherit quantity from parent – YES

User can enter quantity – NO

Item

	

Qty




PARENT_001

	

5




1.1 ATTR_001

	

1




1.2 ATTR_002

	

1




1.3 ATTR_003

	

5




1.4 CHILD_001

	

50




1.4.1 ATTR_004

	

1




1.4.2 ATTR_005

	

1




1.4.3 ATTR_006

	

50




1.4.4 CHILD_002

	

1000




1.4.4.1 ATTR_007

	

1




1.4.4.2 ATTR_008

	

1




1.4.4.3 ATTR_009

	

1000

System expected behavior (if the value on DM_PARENT_001 is changed from 5 to 6, red values are changed via the inheritance option):

Item

	

Qty




PARENT_001

	

5->6




1.1 ATTR_001

	

1




1.2 ATTR_002

	

1




1.3 ATTR_003

	

6




1.4 CHILD_001

	

60




1.4.1 ATTR_004

	

1




1.4.2 ATTR_005

	

1




1.4.3 ATTR_006

	

60




1.4.4 CHILD_002

	

1200




1.4.4.1 ATTR_007

	

1




1.4.4.2 ATTR_008

	

1




1.4.4.3 ATTR_009

	

1200

Example

Starting premise (Inherit quantity from parent – YES):

Level

	

Item

	

Quantity




1

	

Computer

	

1




1.1

	

Monitor

	

1




1.2

	

Case

	

1




1.2.1

	

Hard drive

	

2




1.2.2

	

Motherboard

	

2




1.2.2.1

	

RAM

	

2




1.2.2.2

	

GPU

	

1

If users change the quantity of Computer to 3, the quantity of the underlying line items changes accordingly:

Level

	

Item

	

Quantity




1

	

Computer

	

3




1.1

	

Monitor

	

3




1.2

	

Case

	

3




1.2.1

	

Hard drive

	

6




1.2.2

	

Motherboard

	

6




1.2.2.1

	

RAM

	

12




1.2.2.2

	

GPU

	

6

On this page
ItemQuantity Attribute
Attribute and Attribute Value Quantity
Application Parameters for Quantity
Attribute and Attribute Value Quantity - Specific Behavior
User Selection w/ Attribute Quantity Input
Example
Example
Container
Quantity Inheritance in Multi-Level Line Item Structure
Yes
No