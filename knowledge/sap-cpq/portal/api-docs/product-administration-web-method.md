# PRODUCT ADMINISTRATION WEB METHOD | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/6d11f1e9d0ad474a83e67289c706a256.html#value-code-in-product-attribute-value
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API


	
Simple Product Administration SOAP API


	
Input and Output Parameters
	
Input XML Example
	
Input XML Schema
	
Output XML Example
	
Output XML Schema
	
PRODUCT ADMINISTRATION - Input XML Examples
	
PRODUCT ADMINISTRATION WEB METHOD
	
Sorting and Ranking Attributes
	
Customer Administration SOAP API
	
User Administration SOAP API
	
ImportMaterialsFromERP SOAP API
	
Company Administration SOAP API
	
Link Opportunity SOAP API
	
Custom Table Administration SOAP API
	
Get Catalogue Data SOAP API
	
Get Quote Data SOAP API
	
Get Quote Items Attributes SOAP API
	
Request for Quotation SOAP API
	
Search Quotes SOAP API
	
Search Quotes from SF SOAP API
	
New Quote SOAP API
	
Place Order SOAP API
	
Validate Catalogue Codes SOAP API
	
Get Cart Properties SOAP API
	
Get Cart Actions SOAP API
	
Perform Cart Action SOAP API
	
Add Items Data SOAP API
	
Perform Quote Action SOAP API
	
Set Cart Properties SOAP API
	
Set Cart Properties For Every Quote In Opportunity SOAP API
	
Set Cart Item Properties SOAP API
	
Create New Quote and Get Quote Data SOAP API
	
SOAP API Authentication
	
SOAP API Error Codes
	
Pricing API
	
DoYouSeeMe API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
PRODUCT ADMINISTRATION WEB METHOD

Function name: ProductAdministration

Function description: ProductAdministration function can be used to:

Add Products

Delete Products

Update Product information

Add/Update/Delete product data in multiple languages

The Simple Product Administration SAP CPQ API can maintain simple products in SAP CPQ, and it’s capable of creating/updating configurable products to some extent. Note that the current SAP CPQ API does not permit the creation of more complex configurable products.

The following use cases must be supported when using the ProductAdministration API to create and update products in SAP CPQ. Note that you can view Product Administration Input XML Examples here.

Display Type
When sending product data, a flag will be supported that allows users to define a product display type.

Supported values:

Simple

Configurable

System

Collection

Parent/Child

To set a product display type, the <Product> input XML node you must include the following child node: <DisplayType>. The full XPATH should look this way: Products/Product/DisplayType.

This node is optional - If the node is not present in input XML, the system will move on without crashing or returning error messages.

Error message “Value in Node Display Type is not supported” will appear in the Response field if the value sent in this note is not supported. If the node is not present or it is left vacant, the system will read it as a Simple product display type.

System ID
To enable users to set the Product System ID, you must include the following child node: <ProductSystemId.> The full XPATH should look this way: Products/Product/ ProductSystemId.

Product System ID supports all values, there is no restriction. It is used as an object identification when migrating objects from Sandbox to Production environment. If you use an existing System ID, SAP CPQ will return the following message: “Product with the same System ID already exist in the system. Please specify different Product System ID”

The node is optional - if the node is not present in input XML or it is left vacant, the system will move on without crashing or returning error messages.

When updating products, the system first looks at what is in the <Identificator> node. This means that:

If it contains PartNumber, the product will be searched based on the provided part number provided in the <PartNumber> node.

If it contains “ProductName,” the product will be searched based on the provided product name (provided in node <ProductName>).

If it contains any other field, the product will be searched by the SAP CPQ ID provided in node <CPQProductID>.

Note that the <Identificator> can also contain the “PricingCode” which should be used in combination with the “PartNumber.” In <Indentificator> node we should use PriceCode, and to pass the pricing code value we should use node <PricingCode> It should look as follows:



<Products SkipCategoriesOnProductUpdate="True">
  <Product>  
     <Identificator>PriceCode</Identificator>
     <PricingCode>65</PricingCode>
    <Categories>
      <USEnglish><![CDATA[Hardware]]></USEnglish>
    </Categories>
     <Description>
      <USEnglish>test1243</USEnglish>
            </Description>
       </Product>
</Products>

Performing a search with the <Identificator> node can return more than one product, so multiple products can be updated with the same data.

In case you do not define the System ID, SAP CPQ will generate it for you and add _cpq at the end. The best way to identify a product is by using two identificators.

Product search is performed by whatever the Identification column suggests and, if that fails, the search is performed by the CPQProductID (if provided). If no products are found, a new product will be created.

If the identification node contains “ProductSystemId,” the product will be searched based on the provided Product System ID.

Attribute Type

To enable users to set the Attribute Type, you should add a new child node, <AttributeType>, to the <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/AttributeType

The node supports the following values:

UserSelection

Date

String

Number

Att.Quantity

AttValue.Quantity

ExternalValue

Measurement

Container

This node is optional - if the node is not present in input XML, the system will move on without crashing or returning error messages.

If the node is not present, or is empty, the system will set User Selection as the attribute type.

The Attribute type container can be created over API call, and the system will be able to add an attribute type container to a product if that attribute already exists within SAP CPQ. When the Container Attribute type is created over API call, this attribute will not have any other property (columns, properties, validation messages) set up over API call.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node ATTRIBUTE TYPE is not supported.”

Attribute Display Type

To enable users to set the Attribute Display Type, add a new child node, <DisplayType> to the <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/DisplayType

Not all display types are supported by all attribute types. And not all display types support multiple attribute values.

The table outlined below shows the connection between

Attribute display type and the attribute type

Attribute display types and the number of attribute values

The following table displays what error messages will pop up when an incompatible combination is sent.

This node is optional - If the node is not present in input XML, the system would move on without crashing or returning error messages.

If the node is not present or it’s empty, the system will set Drop Down as the attribute display type.

Display type Custom control is not supported on API call.

If a value sent in this node is not supported, the system will return the following error message: “Value in the node ATTRIBUTE TYPE is not supported”

Measurement Attribute Type

To enable users to set the Measurement Attribute Type, add a new child node, <UnitOfMeasurement> to the <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/Measurement/UnitOfMeasurement

Supported values include Measurement Types previously defined in SAP CPQ. It is not possible to create a new Measurement Type via API call.

Note that this node is required if the attribute type is Measurement. In case this node is not present when attribute type is Measurement the system will return the following message: “Node UnitOfMeasurement is required.”

If the value of this node is not supported in SAP CPQ, the system will return the following message: “Measurement type not found in SAP CPQ.”

If the attribute type is not “UnitsOfMeasurement.” and if the node is not present in input XML, the system would move on without crashing or returning error messages.

Attribute System ID in Attribute

To enable users to set the Attribute System ID, you should add a new child node, <AttributeSystemId> to the <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/ AttributeSystemId

Supported values include all values, there is no restriction.

This node is optional - If the node is not present in input XML or it is empty, the system will move on without crashing or returning error messages. Since this is an attribute system ID, the system will populate this field automatically when the node is not present in input XML or it is empty.

Rank Within Attribute Values

To enable users to define Rank within attribute values, you should add a new child node, <Rank>, to the <Value> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/Values/Value/Rank

Supported values are integer values.

This node is optional - if the node is not present in input XML or it is empty, the system will move on without crashing or returning error messages. If node is not present or is empty, the system will assign the rank value in the order in which the values were sent: 10, 20, 30…

That said, Value “10” will have rank 10, while Value “11” will have rank 20.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node Attribute/Values/Value/Rank is not supported.
Note

Attribute Value, Attribute Value Code, Attribute System ID and Attribute Value system ID are already supported on API call.

Value Code in Product Attribute Value

To enable users to check the Value Code flag in Product Attribute Value, you should add a new child node <ValueCode> to the <Value> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/Values/Value/ValueCode

Supported values include all values. Since this is an attribute value code, this field should not contain a specific character.

This node is optional - if the node is not present in input XML, the system will move on without crashing or returning error messages.

Attribute Value System ID in Product Attribute Value

To enable users to check the Attribute Value System ID flag in Product Attribute Value, you should add a new child node, <AttributeValueSystemId> to the <Value> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/Values/Value/AttributeValueSystemId

Supported values are any values, there is no restriction.

This node is optional - if the node is not present in input XML or is empty, the system will move on without crashing or returning error messages.

Since this is an attribute system ID, the system will populate this field automatically the node is not present in input XML or is empty.

Line Item in Product Attribute

To enable users to check the Line Item flag in Product Attribute, you should add a new child node, <IsLineItem> to the <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/IsLineItem

Supported values include the following: 1 for Yes, 0 for No. “0” value is sent when this option should be deselected.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning any error messages.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node LINE ITEM is not supported”

If this Node has a value and attribute display type as “Button,” the system will return the following message.: Node “LINE ITEM” is not supported for display type is “BUTTON.”

Description in Line Items in Product Attribute

To enable users to check the “User Can Enter Quantity” flag in Product Attribute, add a new child node, <LineItemDescription> to <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/LineItemDescription

This value can be translated to any language similar to Product name.



<LineItemDescription>
<USEnglish> <![CDATA[text]]> </USEnglish>
<French><![CDATA[text]]> </French>
</LineItemDescription>

Supported values include plain text.

Note that this node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If node is empty in product Update, the system will remove all text present in this field.

This node can be set only if “Line item flag” has value 1. If this node is present for non-line item attributes, the system will return the following message: “Node LINE ITEM DESCRIPTION is not supported for non-line items”

If the provided input contains text that is longer than what the system supports, SAP CPQ will return the following message: “Number of characters in Node LINE ITEM DESCRIPTION is out allowed limit”

Rank Within Cart in Product Attribute

To enable users to enter the “Rank within Cart” flag in Product Attribute, add a new child node, <RankWithinCart> to <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/RankWithinCart

Supported values are integer values. Note that this node is optional or empty in product import.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning any error messages.

If the node is empty in product Update the system will remove all text present in this field.

If the value sent in this node is not supported, the system will return the following error message:“Value in Node RANK WITHIN CART is not supported”

This node can be set only if “Line item flag” has value 1. If this node is present for non-line item attributes, the system will return the following message: “Node RANK WITHIN CART is not supported for non-line items”

"Spans across entire row in configuration" in Product Attribute

To enable users to select the “Spans across the entire row in configuration” flag in product attribute, add a new child node, <SpansAcrossEntireRow> to <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/SpansAcrossEntireRow

Supported values are as follows: set “1” for True and set “0” when this flag should be deselected.

Note that this node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If the value sent in this node is not supported, the system will return the following error message: “Value in Node SPANS ACROSS ENTIRE ROW is not supported”

“If this Node has a value and attribute display type as “Button,” the system will return the following message: “Node SPANS ACROSS ENTIRE ROW is not supported for display type is BUTTON”

"Required" in Product Attribute

To enable users to select the “Required” flag in Product Attribute, add a new child node, <IsRequired> to <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/IsRequired

Supported values:

Supported values are as follows: set “1” for True and set “0” when this flag should be deselected.

Note that this node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages

If a value sent in this node is not supported, the system will return the following error message: “Value in Node REQUIRED is not supported”

If this Node has a value and attribute display type as “Button,” the system will return the following message: “Node REQUIRED is not supported for display type is BUTTON”

Attribute Label in Product Attribute

To enable users to enter the Custom Label field in Product Attribute, add a new child node, <Label> to <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/Label

This value can be translated to any language similar to Product name.



<Label>
<USEnglish> <![CDATA[text]]> </USEnglish>
<French><![CDATA[text]]> </French>
</Label>

Supported values include plain text.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If the node is empty on product update, the system will remove all text present in this field.

If the provided input contains text that is longer than the length supported by the system, SAP CPQ will return the following message: “Number of characters in Node LABEL is out allowed limit”

Attribute Hint In Product Attribute

To enable users to enter the Hint field in Product Attribute, add a new child node, <Hint> to <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/Hint

This value can be translated to any language similar to Product name.



<Hint>
<USEnglish> <![CDATA[text]]> </USEnglish>
<French><![CDATA[text]]> </French>
</Hint>

Supported values include plain text.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If the node is empty on product update the system will remove all text present in this field.

If the provided input contains text longer than that supported by the system, SAP CPQ will return the following message: “Number of characters in Node HINT is out allowed limit”

If this Node has a value and attribute display type as “Button,” the system will return the following message: Node “HINT” is not supported for display type is “BUTTON”

"Show One Time Price" Flag in Product Attribute

To enable users to tick the “Show One Time Price” check box in Product Attribute, add a new child node, <ShowOneTimePrice> to <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/ ShowOneTimePrice

Supported values: set “1” for True, and “0” when this flag should be deselected.

Note that this node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If the node is not present, the flag is not selected.

If a value sent in this node is not supported, the system will return the following message: “Value in Node SHOW ONE TIME PRICES is not supported”

If this Node has a value and attribute display type as “Button,” the system will return the following message: Node “SHOW ONE TIME PRICES” is not supported for display type is “BUTTON”

"Show Recurring Price" Flag in Product Attribute

To enable users to tick the “Show Recurring Price” check box in Product Attribute, add a new child node, <ShowRecurringPrice> to <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/ShowRecurringPrice

Supported values: set “1” for True, and “0” when this flag should be deselected.

Note that this node is optional.

Error message

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node SHOW RECURRING PRICES is not supported”

If the node is not present, this flag is not selected.

If this node has value and attribute display type as “Button” the following message will appear: Node “SHOW RECURRING PRICES” is not supported for display type is “BUTTON”

Button Text in Product Attribute

To enable users to set the Button Text in Product Attribute, add a new child node, <ButtonText> to <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/ButtonText

Supported values include text.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If the node is empty on product update, the system will remove all text present in this field.

This node can be set only if the attribute display type is “Button.” IF this node is present for other attributes' types except “Button,” the system will return the following message: “Node BUTTON TEXT is supported for BUTTON attributes only”

If the provided input contains text that is longer than the length supported by the system, SAP CPQ will return the following message:

“Number of characters in Node BUTTON TEXT is out allowed limit”

Script Attachment in Button Attribute

To enable users to set Button Text in Button Attribute, add a new child node, <AttachScriptButton> to <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/AttachScriptButton

Supported values: set “1” for True, and “0” when this flag should be deselected.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

This node can be set only if the attribute display type is “Button.” If this node is present for other attribute types other than Button, the system will return the following message: “Node ATTACH SCRIPT BUTTON is supported for BUTTON attributes only.”

If the value sent in this node is not supported, the system will return the following error message: “Value in Node ATTACH SCRIPT BUTTON is not supported.”

Adding Script to Button Attribute

This node can be set only if the ATTACH SCRIPT BUTTON flag has value 1.

To enable users to define Script in Button Attribute, add a new child node, <ButtonScripts> to <Attribute> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/ButtonScripts

This node will support adding child nodes <ButtonScript>

The <ButtonScript> node will support additional child nodes <Name> and <Rank>. The full XPATH will look as follows:

Products/Product/Attributes/Attribute/ButtonScripts/ButtonScript/Name

Products/Product/Attributes/Attribute/ButtonScripts/ButtonScript/Name/Rank

The supported value is the Exact Script Name.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

This node can be set only if the ATTACH SCRIPT BUTTON flag has value 1. If this node is present when this flag has value 0, the system will return the following message: “Script in Node BUTTON SCRIPT cannot be attached if ATTACH SCRIPT BUTTON has value 0”

Note that SAP CPQ does not support adding a new script over API call. Product Administration API can add only those scripts that have already been defined in SAP CPQ. If the provided name for a script does not exist in SAP CPQ, the system will return the following message: “Script Name in node BUTTON SCRIPT ATTACHED/ BUTTON SCRIPT is not found in SAP CPQ”

Rank

Supported values are integer values.

This node is optional or empty on product import.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If the node is empty on product Update/Create New, the system will add this script at the end.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node BUTTON SCRIPTS ATTACHED/RANK is not supported”

"Is First Value Preselected" in Attribute

As part of standard SAP CPQ behavior, the first value of any attribute is always preselected.

To override the default settings, add the following child node to <Value> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/IsFirstValuePreselected

Supported values: set “1” for True, and “0” when this flag should be deselected.

This node is optional.

Error messages

If this node is not present in input XML, the system will move on without crashing or returning error messages; no selection will be made as a result.

If the node is empty on product Update, the system will not update this field.

If a value sent in this node is not supported, the system will return the following error message: “Value in the node IS FIRST VALUE IS PRESELECTED is not supported”

Preselected Flag in Attribute Value

To enable users to check the Preselected flag in Product Attribute, add a new child node, <Preselected> to <Value> input XML node. The full XPATH should look this way:

Products/Product/Attributes/Attribute/Values/Value/Preselected

Supported values: set “1” for True, and “0” when this flag should be deselected.

This node is optional.

Error messages

If the node is not present in input XML, the system would move on without crashing or returning any error messages; no selection will be made as a result. If the product display type is Simple, or if this node has been omitted, the system will keep the current API behavior. In all other cases, the system will behave as it has been defined in this document.

If the node is empty on product update the system will not update this field.

If a value sent in this node is not support, the system will return the following error message: “Value in Node PRESELECTED is not supported”

If this Node has a value and attribute display type as “Button,” the system will return the following message: “Node PRESELECTED is not supported for display type is 'BUTTON'”

Display to User in Attribute
The Display Value flag will not be present in product XML due to the current behavior of the system.

All values sent within one attribute are set as “Displayed to user.”

Attribute Values omitted from Product XML are not displayed to end users.

Product Tabs

To enable users to add tabs to the Product Configuration Layout, add <Tabs> to <Product> input XML node. The full XPATH should look this way:

Products/Product/Tabs

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages (if this node is not present, no tabs will be added to the product).

The Tabs node cannot be added in Simple product XPATHs. When the <ProductDisplayType> is Simple, or when <Product DisplayType> node is not present, <Tabs> node is not permitted, and the system will return the following message: “Node TABS is not allowed with this product display type”

Child Nodes

The parent Tabs node can have a child node Tab. To enable users to add a child node Tab to the parent node Tabs, add a new child node <Tab> to the <Tabs> input XML node. The full XPATH should look this way:

Products/Product/Tabs/Tab

This node is optional. If the node is not present in input XML, the system will move on without crashing or returning error messages.

The Tab node can include the following nodes:

Tab System Id

The full XPATH is as follows: Products/Product/Tabs/Tab/SystemId

This tab is required and a unique identifier.

Supported values are any values.

Error messages

If the node is not present in input XML, the system will return the following error message: “Node SYSTEM ID is required”

If the tab sent from the external system cannot be found in SAP CPQ, the system will create it. The Tab default rank is added by the system, and it is 10.

On product update, if a certain tab is omitted in product xml of a certain product, that tab will be removed from that product.

Name

The full XPATH is as follows: Products/Product/Tabs/Tab/Name

Supported values are any values. This node is required.

ProductTabRank

The full XPATH is as follows: Products/Product/Tabs/Tab/Rank

Supported values are integer values.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without error messages. Default rank value will be 10 when it is not provided.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node PRODUCT TAB RANK is not supported”

LayoutTemplate

The full XPATH is as follows:

Products/Product/Tabs/Tab/LayoutTemplate

Supported values are string values. This value is the name of the tab's configuration. To set tab layout template over API call, that file must have already been created in SAP CPQ; otherwise the table will not be added to the system.

This node is required.

Error messages

If the node is not present in input XML, the system will return the following error message: “Node TAB LAYOUT TEMPLATE is required”

If a value sent in this node is not supported, the system will return the following error message: “Value in Node TAB LAYOUT TEMPLATE is not supported”

Visibility Permission

The full XPATH is as follows:

Products/Product/Tabs/Tab/VisibilityPermission

Supported values are: 0 (Always displayed), 1 (displayed only if it is not empty), and 2 (defines the condition for visibility).

Error messages

If the node is not present in input XML, the system will return the following error message: “Node TAB VISIBILITY PERMISSIONS is required”

If a value sent in this node is not supported, the system will return the following error message: “Value in Node TAB VISIBILITY PERMISSIONS is not supported”

Visibility condition

The full XPATH is as follows: Products/Product/Tabs/Tab/VisibilityCondition

Supported values are any values.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If the node is empty on product Update, the system will remove all text present in this field.

If the provided input contains text that is longer than that supported by the system, SAP CPQ system will return the following message: “Number of characters in Node TAB VISIBILITY CONDITION is out allowed limit”

This node can be set only if the “Visibility permission” flag has value 2. If this node is present for the remaining 2 possibilities, the system will return the following message:

“Node TAB VISIBILITY CONDITION is not supported for provided permission type”

Show tab header in configuration

The full XPATH is as follows:

Products/Product/Tabs/Tab/ShowTabHeader

Supported values: set “1” for True, and “0” when this flag should be deselected.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If the node is empty on product Update, the system will not update this field.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node SHOW TAB HEADER is not supported”

Attributes

The full XPATH is as follows:

Products/Product/Tabs/Tab/Attributes

Products/Product/Tabs/Tab/Attributes/Attribute

Products/Product/Tabs/Tab/Attributes/Attribute/Name

Products/Product/Tabs/Tab/Attributes/Attribute/Rank

Name

Supported value is the product attribute name. Only attributes added to the product can be placed on the tabs.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node TABS/TAB /ATTRIBUTES/ATTRIBUTE/NAME is not supported”

On product update, if a certain attribute is omitted in product XML of a certain product (tab logic), that attribute will be removed from the tab of that product.

Rank

Supported values are integer values.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node TABS/TAB /ATTRIBUTES/ATTRIBUTE/RANK is not supported.” If a rank value for a certain attribute is not sent, the system will add that attribute at the end of the list.

If this node is present but the attribute name has not been passed, this system will ignore this value.

Attributes in Responder
To enable users to add attributes to Responder, add the following child nodes: <ResponderAttributes> and <ResponderLineItems> to the <Product> input XML node.

The full XPATHs should look this way:

Products/Product/ResponderAttributes Products/Product/ResponderLineItems

These two nodes are not allowed with Simple products.

Error messages

When the <ProductDisplayType> is “Simple” or <ProductDisplayType> node is not present, the <Tabs> node is not allowed and the system will return the following message:

“Node RESPONDER ATTRIBUTES is not allowed with this product display type”

“Node RESPONDER LINE ITEMS is not allowed with this product display type”

NODES

Responder Attributes

To execute the above, add a new child node, <Attribute> to <ResponderAttributes> input XML node.

The full XPATH is as follows:

Products/Product/ResponderAttributes/Attribute

Child node <Name>

The full XPATH is as follows:

Products/Product/ResponderAttributes/Attribute/Name

Supported values include the Product Attribute name. Only attributes already added to the product can be placed on the responder.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node RESPONDER ATTRIBUTES/ATTRIBUTES/ATTRIBUTE/NAME is not supported”

On product update, if a certain attribute is omitted in product XML of a certain product (responder logic), that attribute will be removed from the responder of that product.

Rank

The full XPATH is as follows:

Products/Product/ResponderAttributes/Attribute/Rank

This node is optional.

Supported values are integer values.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages. If a rank for a certain attribute is not present, the system will place that attribute at the end of the list. If rank for certain attribute is not present system will put that attribute at the end of list. If there are two attributes with the same rank, the system will add them in order they are sent.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node RESPONDER ATTRIBUTES/ATTRIBUTES/ATTRIBUTE/RANK is not supported”

Responder line items

To execute the above, add a new child node, <Attribute> to <ResponderLineItems> input XML node.

The full XPATH is as follows:

Products/Product/ResponderLineItems/Attribute

After Products/Product/ResponderAttributes enter new row for Products/Product/ResponderLineItems.

Child node <Name>

The full XPATH is as follows:

Products/Product/ResponderLineItems/Attribute/Name

Supported values are the product attribute name. Only attributes already added to the product can be placed on the responder.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning any error messages.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node RESPONDER LINE ITEMS/ATTRIBUTES/ATTRIBUTE/NAME is not supported”

On product update, if a certain attribute is omitted in product XML of a certain product (responder logic), that attribute will be removed from the responder of that product.

Attribute can be added to this list only if marked as a line item. In case this node is present for non-line item attributes, the system will throw the following message: “Node RESPONDER LINET ITEMS is not supported for non-line attributes”

Rank

The full XPATH is as follows:

Products/Product/ResponderLineItems/Attribute/Rank

Supported values are integer values.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages. If the rank for a certain attribute is not present, the system will put that attribute at the end of the list.

If there are two attributes with the same rank, the system will add them in the order they are sent.

Global IPython Script

To enable users to set the Global IPython Script, add child node <GlobalScripts> to the <Product> input XML node. The full XPATH should look this way:

Products/Product/GlobalScripts

This node is optional. If the node is not present in input XML, the system will move on without crashing or returning error messages.

The Parent Global Scripts node will have a Rule child node. To enable users to define the rule, add <Script> child node to the <GlobalScripts> XML node. The full XPATH should look this way:

Products/Product/GlobalScripts/Script

This node is optional. If the node is not present in input XML, the system will move on without crashing or returning error messages. If there are omitted scripts on product update, they will be removed from the product.

Nodes within Script node include the following:

Name

The full XPATH will look this way:

Products/Product/GlobalScripts/Script/Name

Supported values are those representing the exact Script name.

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If the node is empty on product Update, the system will not add a script.

If, on product update, a script is omitted from the list of scripts attached to the Button, the system will remove it from the product.

SAP CPQ does not support adding new scripts over API call. Product administration API can only add scripts already defined in SAP CPQ.

If the provided script name does not exist in SAP CPQ, the system will return the following message: “Script Name in node GLOBAL SCRIPTS/SCRIPT/NAME is not found in SAP CPQ”

Rank

The full XPATH will look this way:

Products/Product/GlobalScripts/Script/Rank

Event

The full XPATH is as follows:

Products/Product/GlobalScripts/Script/Events

The parent Events will have a child node, Event. The full XPATH should look this way:

Products/Product/GlobalScripts/Script/Events/Event

Supported values include the following:

OnProductLoaded

OnProductRuleExecutionStart

OnProductRuleExecutionEnd

OnProductTabChanged

OnProductCompleted

OnProductAddedToQuote

OnProductBeforeAddToQuote

This node is optional.

Error messages

If the node is not present in input XML, the system will move on without crashing or returning error messages.

If the node is empty on product Update, the system will not attach a script to any Event.

Product update - if a certain event is not present in the list of events, the system will remove it from the list.

If a value sent in this node is not supported, the system will return the following error message: “Value in Node GLOBAL SCRIPTS/SCRIPT/EVENTS/EVENT is not supported”

Related Information
SOAP API Authentication
On this page
Display Type
System ID
Attribute Type
Attribute Display Type
Measurement Attribute Type
Attribute System ID in Attribute
Rank Within Attribute Values
Value Code in Product Attribute Value
View all
Yes
No