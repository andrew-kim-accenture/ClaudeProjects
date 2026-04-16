# Input XML Example | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/bb6064bc1ef24391aa0359c2d0685b26.html#related-information
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
Input XML Example
Note

IMPORTANT! To get valid DefaultLanguage and OtherLanguage in this example, call the SimpleProductAdministration method with GETLANGUAGES action parameter. Import will fail if DefaultLanguage is not present in the current CPQ installation

When updating products, system first looks what's in <Identificator> node. If it contains “PartNumber”, product would be searched based on provided part number (provided in node <PartNumber>). If it contains “ProductName”, product will be searched based on provided product name (provided in node <ProductName>). It can also contain “PriceCode” which should be used in combination with “PartNumber”. Performed search by <Identificator> node can return more than one product so multiple products can be updated with same data.

If it contains anything else, product will be searched by CPQ ID provided in node <CPQProductID> Product search is performed by whatever the Identificator column suggests, and if that fails, a search is performed by CPQProductID (if supplied). If no products are found, new product will be created.

Note on categories: If a product belongs to more than one category, split the categories using ”;” character, for example, Software;Services;Old;…

If you need to specify product hierarchy, use the ”>” character. For example, if you want to put the product to category “Hardware” which belongs to category “Products” which belongs to category “Everything”, you would use the following for the Categories node:Everything>Products>Hardware

Additionally, if you define a preselected category, which determines where products are placed in SAP CPQ catalog, products will be added to the preselected category only when PreselectInCPQ=true in the Categories node.

If used, <UserCanEnterQuantity> node should have 1 or 0 set.

<PricingMechanism> node can be set to: 'Pricebook Lookup' or 'Custom Pricing'.

Date format for <StartDate> and <EndDate> nodes should be MM/DD/YY or MM/DD/YYYY (e.g.<StartDate>1/31/2010</StartDate>)

Note

Required product fields are: ProductName, Categories and ProductType

Other fields are not required (XML may not contain them). Default values for other fields are:

<DisplayType>,



xPATH: //Products/Product/DisplayType

Supported values: “Simple”,”Configurable”,”System”,”Collection”,”Parent_child”

If node is not present in the XML file, or is present and does not have a value, default display type will be “Simple product”

SkipCategoriesOnProductUpdate

Default Value (if attribute is missing) : false

SkipPermissionsOnProductUpdate

Default Value (if attribute is missing) : false

Identificator

Default Value (if node is missing) : PartNumber

ShippingCosts

Default Value (if node is missing) : Empty

Permissions

Default Value (if node is missing) : Visible to all

If Permissions node is present in XML and it is empty, product will not be visible to any permission group

CPQProductId

When product is being created, this node is not required. If any value is sent through this node, it will be ignored

Part number

Default Value (if node is missing) : Empty

UPC

Default Value (if node is missing) : Empty

MPN

Default Value (if node is missing) : Empty

ProductFamilyCode

Default Value (if node is missing) : Empty

RecurringPriceFormula

Default Value (if node is missing) : Empty

RecurringCostFormula

Default Value (if node is missing) : Empty

Inventory

Default Value (if node is missing) : Empty

LeadTime

Default Value (if node is missing) : Empty

ProductVersion

Default Value (if node is missing) : 1

ExternalId

Default Value (if node is missing) : Empty

Active

Default Value (if node is missing) : TRUE

IsSyncedFromBackOffice

Default Value (if node is missing) : FALSE

Defines whether a product is imported from SAP

Weight

Default Value (if node is missing) : Empty

Image

Default Value (if node is missing) : Empty

StartDate

Default Value (if node is missing) : Empty

EndDate

Default Value (if node is missing) : Empty

UserCanEnterQuantity

Default Value (if node is missing) : Empty

UnitOfMeasure

Default Value (if node is missing) : Empty

A three-character ISO code

PricingMechanism

Default Value (if node is missing) : Value of application parameter ‘As default source for product and attribute prices use’ (found in Setup → Pricing/Calculations → Pricebooks)

PricingCode

Default Value (if node is missing) : Empty

BaseRecurringPrice

Default Value (if node is missing) : Empty

Price

Default Value (if node is missing) : Empty

PriceFormula

Default Value (if node is missing) : Empty

CostFormula

Default Value (if node is missing) : Empty

Description

Default Value (if node is missing) : Empty

LongDescription

Default Value (if node is missing) : Empty

CartDescription

Default Value (if node is missing) : Empty

Attributes

Default Value (if node is missing) : Empty

<Type> - Set attribute type



xPATH: //Products/Product/Attributes/Attribute/AttributeType

Supported values: “UserSelection”,”Date”,”String”,”Number”,”Att.Quantity”,”AttValue.Quantity”,”ExternalValue”,”UnitsOfMeasurement”,”Container”

If node is not present in the XML file, or is present and does not have a value, default display type will be “User selection”

Attribute type container cannot be created over API call but system will be able to add an attribute type container to a product if that attribute already exists within CPQ

<DisplayType> - Set attribute display type



xPATH: //Products/Product/Attributes/Attribute/DisplayType

Supported values: “Button”,”CheckBox”,”DisplayOnlyText”,”DropDown”,”FileAttachment”,”Freeinput_No_Matching”,”HiddenCalculated_No_Matching”,”FreeForm_ExactMatch_w_OtherwiseOption”,”FreeForm_ExactMatch”,”FreeForm_MatchLower”,”FreeForm_MatchUpper”,”FreeForm_SetMatchLower”,”FreeForm_SetMatchUpper”

If node is not present in the XML file, or is present and does not have a value, default display type will be “Drop Down”

Attrinute Display type Custom control is not supported on API call

Attribute Display type Container is supported only by Container attribute type.

Attribute type container cannot be created over API call but system will be able to add an attribute type container to a product if that attribute already exists within CPQ

Not all display types are supported with all attribute types. Also, not all display types support having multiple attribute values.

Next table contains more information on this topic.

Attribute display type supported

	

Supported Attribute type(s)

	

Number of attribute values

	

Error message(s) in case when certain attribute display type is not align with attribute type/number of values




Button

	

User selection, AttValue.Quantity, AttValue.Quantity

	

One

	

Display type “Button” is not supported with requested attribute type\\“Button” must have exactly one value




CheckBox

	

User selection, Att.Quantity, AttValue.Quantity, UnitsOfMeasurement

	

Multiselection

	

Display type “Check Box” is not supported with requested attribute type




DisplayOnlyText

	

All

	

One

	

“Display only text” must have exactly one value




DropDown

	

User selection, AttValue.Quantity, AttValue.Quantity, UnitsOfMeasurement

	

many

	

Display type “Drop down” is not supported with requested attribute type




FileAttachment

	

All

	

One

	

“File Attachment” must have exactly one value




FreeInput_No_Matching

	

All

	

One

	

“Free input, no matching” must have exactly one value




HiddenCalculated_No_ Matching

	

All

	

One

	

“Hidden calculated no matching” must have exactly one value




-FreeForm_ExactMatch_w_OtherwiseOption

-FreeForm_ExactMatch

-FreeForm_MatchLower

-FreeForm_MatchUpper

-FreeForm_SetMatchLower

-FreeForm_SetMatchUpper

	

User selection, AttValue.Quantity, AttValue.Quantity

	

One

	

Display type “Free Form exact match w. otherwise option” is not supported with requested attribute type \\“Free Form exact match w. otherwise option” must have exactly one value

Display type “Free Form , Exact Match” is not supported with requested attribute type

“Free Form , Exact Match” must have exactly one value

Display type “Free Form , Match lower” is not supported with requested attribute type

“Free Form , Match lower” must have exactly one value

Display type “Free Form , Match upper” is not supported with requested attribute type

“Free Form , Match upper” must have exactly one value

Display type “Free Form , Set Match lower” is not supported with requested attribute type

“Free Form , Set Match lower” must have exactly one value

Display type “Free Form , Set Match upper” is not supported with requested attribute type

“Free Form , Set Match upper” must have exactly one value




ImageButton

	

User selection, AttValue.Quantity, AttValue.Quantity

	

One

	

Display type “Image Button” is not supported with requested attribute type

“Image button” must have exactly one value




ListBox_MultiSelect

	

User selection, AttValue.Quantity, AttValue.Quantity

	

many

	

Display type “List box multi selection” is not supported with requested attribute type




ListBox

	

User selection, AttValue.Quantity, AttValue.Quantity

	

many

	

Display type “List box” is not supported with requested attribute type




RadioButton

	

User selection, AttValue.Quantity, AttValue.Quantity, UnitsOfMeasurement

	

many

	

Display type “Radio button” is not supported with requested attribute type




Container

	

Container

	

no values

	

Display type “Container” is not supported with requested attribute type

Display type “Container” does not support new values



<MeasurementType> - Set measurement type to the attribute



xPATH: //Products/Product/Attributes/Attribute/MeasurementType

This node is required if Attribute type is UnitsOfMeasurement

<Rank> - Set the rank within attribute values



xPATH: //Products/Product/Attributes/Attribute/Values/Value/Rank

Supported values: integer

This node is optional. If node is not present or it is empty, system will assign rank value in order the values are sent: 10, 20, 30…

<LineItem> - Set the product attribute as line item



xPATH: //Products/Product/Attributes/Attribute/LineItem

Supported values: 1 for Yes, 0 for No.

This node is optional.

<LineItemDescription> - Set Description on line item



xPATH: //Products/Product/Attributes/Attribute/LineItemDescripiton

Supported values: Plain text or CPQ formula; 2000 characters

This node is optional.

This value can be translated to any language similar to Product name.



<LineItemDescription>
  <USEnglish><![CDATA[text]]></USEnglish>
  <French><![CDATA[text]]></French>
</LineItemDescription>

Language names in XML nodes cannot contain brackets (for example, Portuguese (Brasil) should be written as PortugueseBrasil).

<RankWithinCart> - Set rank within Cart on product attribute



xPATH: //Products/Product/Attributes/Attribute/RankWithinCart

Supported values: ingeger

This node is optional.

This node can be set only if “Line item flag” has value 1.

<SpansAcrossEntireRow> - Set “Spans across entire row in configuration” on product attribute



xPATH: //Products/Product/Attributes/Attribute/SpansAcrossEntireRow

Supported values: “1” as True. “0 “ value is sent in case this flag should be deselected

This node is optional.

This node is not supported for display type “BUTTON”

<IsRequired> - Set Required flag on product attribute



xPATH: //Products/Product/Attributes/Attribute/IsRequired

Supported values: “1” as True. “0 “ value is sent in case this flag should be deselected

This node is optional.

This node is not supported for display type “BUTTON”

<Label> - Set Attribute Label on product attribute



xPATH: //Products/Product/Attributes/Attribute/Label

Supported values: Plain text or CPQ formula up to 1500 characters.

This node is optional.

This value can be translated to any language

This node is not supported for display type “BUTTON”



<Label>
  <USEnglish> <![CDATA[text]]> </USEnglish>
  <French><![CDATA[text]]> </French>
</Label>

<Hint> - Set Attribute Hint on product attribute



xPATH: //Products/Product/Attributes/Attribute/Hint

Supported values: Plain text or CPQ formula up to 2000 characters.

This node is optional.

This value can be translated to any language

This node is not supported for display type “BUTTON”



<Hint>
   <USEnglish> <![CDATA[text]]> </USEnglish>
   <French><![CDATA[text]]> </French>
</Hint>

<ShowOneTimePrice> - Set the Show One Time Price flag on product attribute



xPATH: //Products/Product/Attributes/Attribute/ShowOneTimePrice

Supported values: “1” as True, “0 “value is sent in case this flag should be deselected.

This node is optional.

This node is not supported for display type “BUTTON”

<ShowRecurringPrice> - Set the Show Recurring Price flag on product attribute



xPATH: //Products/Product/Attributes/Attribute/ShowRecurringPrice

Supported values: “1” as True, “0 “value is sent in case this flag should be deselected.

This node is optional.

This node is not supported for display type “BUTTON”

<ButtonText> - Set the Button text



xPATH: //Products/Product/Attributes/Attribute/ButtonText

Supported values: Plain text or CPQ formula up to 2000 characters.

This node is optional.

This node can be set only if attribute display type is “Button”

<AttachScriptButton> - set Attach script flag to Button attribute



xPATH: //Products/Product/Attributes/Attribute/AttachScriptButton


Supported values: “1” as True, “0 “value is sent in case this flag should be deselected.

This node is optional.

This node can be set only if attribute display type is “Button”

<ButtonScriptsAttached> - add script to Button attribute



xPATH: //Products/Product/Attributes/Attribute/ButtonScriptsAttached

This node will support adding child nodes <ButtonScript> and <Rank>: The full XPATH follow:



//Products/Product/Attributes/Attribute/ ButtonScriptsAttached/ButtonScript



//Products/Product/Attributes/Attribute/ ButtonScriptsAttached/Rank

<ButtonScript> Supported values: Exact Script Name.

This node is optional

CPQ does not support adding new script over API call. Product administration API can only add a script that already exists within CPQ

<Rank> Supported values: Integer.

This node is optional

<Preselected> - Set flag Preselected on Attribute Value level



xPATH: //Products/Product/Attributes/Attribute/Values/Value/Preselected

Supported values: “1” as True, “0 “value is sent in case this flag should be deselected.

This node is optional.

<Tabs> - Set product tabs



xPATH: //Products/Product/Tabs

This node is optional.

Tabs node is not allowed with Simple products

If the SimpleProductAdministration API doesn’t contain this node, the configuration layout of the product stays unchanged. If the API contains this node without any values, the configuration layout of the product is removed. Consequently, if the node contains some values, the configuration layout of the product will be updated accordingly.

Nodes within Tab node are:

<SystemId>: This is tab unique identifier. Supported values: any.



xPATH: //Products/Product/Tabs/Tab/SystemId

<name>: Supported values: text.



xPATH: //Products/Product/Tabs/Tab/Name

<ProductTabRank>: Supported values: integer.



xPATH: //Products/Product/Tabs/Tab/ProductTabRank

<LayoutTemplate>: This node is required. Supported values: 0 (Always displayed), 1 (Display only if it is not empty), 2 (define condition for visibility).



xPATH: //Products/Product/Tabs/Tab/LayoutTemplate

<VisibilityPermission>: This node is required. Supported values: string.



xPATH: //Products/Product/Tabs/Tab/TabVisibility

<VisibilityCondition>: This node is optional. Supported values: string.



xPATH: //Products/Product/Tabs/Tab/VisiblityCondition

<ShowTabHeader>: This node is optional. Supported values: “1” as True, “0 “value is sent in case this flag should be deselected.



xPATH: //Products/Product/Tabs/Tab/ShowTabHeader

<Attributes>: This node is optional. Supported values: “1” as True, “0 “value is sent in case this flag should be deselected.



xPATH: //Products/Product/Tabs/Tab/ Attributes
//Products/Product/Tabs/Tab/ Attributes/Attribute
//Products/Product/Tabs/Tab/ Attributes/Attribute/Name
//Products/Product/Tabs/Tab/ Attributes/Attribute/Rank

This node can contain two child nodes (xPATH shown above). Both nodes are optional. Node Name can contain name of the attribute that is already attached to the product. You cannot use attributed that does not belong to the product.

<ResponderAttributes> and <ResponderLineItems> - Set Attributes in Responder



xPATH: //Products/Product/ResponderAttributes
//Products/Product/ResponderLineItems

These 2 nodes are not allowed with Simple products.

To list attributes as responder items, use <attributes> node with its corresponding child nodes. Their names are self-descriptive.



xPATH: //Products/Product/ResponderAttributes/Attributes/Attribute
//Products/Product/ ResponderAttributes /Attributes/Attribute/Rank
//Products/Product/ ResponderAttributes /Attributes/Attribute/Name

The same applies for <ResponderLineItems>

<GlobalScripts> - Set Global IPython script



xPATH: //Products/Product/GlobalScripts

This node is optional.

This node contains child nodes that are self-descriptive.

This node is not supported for display type “BUTTON”

If the SimpleProductAdministration API doesn’t contain this node, the global scripts attached to the product stay unchanged. If the API contains this node without any values, the global scripts will be detached from the product. Additionally, if the node contains some values, the global scripts attached to the product will be updated accordingly.

Child nodes:



//Products/Product/GlobalScripts/Script/Name
//Products/Product/GlobalScripts/Script/Rank
//Products/Product/GlobalScripts/Script/Events
//Products/Product/GlobalScripts/Script/Events/Event
Supported values for this node: 
 - OnProductLoaded
 - OnProductRuleExecutionStart
 - OnProductRuleExecutionEnd
 - OnProductTabChanged
 - OnProductCompleted
 - OnProductAddedToQuote
 - OnProductBeforeAddToQuote
Note

When products are updated, only fields that should be updated need to be sent. Other fields will not be updated (they will remain as they were before the call).



<?xml version="1.0" encoding="utf-8"?>
<Products SkipCategoriesOnProductUpdate="false" SkipPermissionsOnProductUpdate="false" >
  <Product>
    <Identificator>PartNumber</Identificator>
    <ShippingCosts>
      <ShippingName_1><![CDATA[some formula]]></ShippingName_1>
      <ShippingName_2><![CDATA[some formula]]></ShippingName_2>
    </ShippingCosts>
    <Permissions>Sales;Sales Management</Permissions>
    <CPQProductID><![CDATA[some_product_id]]></CPQProductID>
    <PartNumber>DA353LNAL00</PartNumber>
    <UPC><![CDATA[some_upc_num]]></UPC>
    <MPN><![CDATA[some_mpn_num]]></MPN>
    <ProductFamilyCode><![CDATA[some_prod_fam_code]]></ProductFamilyCode>
    <RecurringPriceFormula><![CDATA[some_rec_price_formula]]></RecurringPriceFormula>
    <RecurringCostFormula><![CDATA[some_rec_cost_formula]]></RecurringCostFormula>
    <Inventory>1234</Inventory>
    <LeadTime><![CDATA[3 weeks]]></LeadTime>
    <ProductVersion><![CDATA[pv12]]></ProductVersion>
    <ExternalId><![CDATA[some_ext_id]]></ExternalId>
    <Active>true</Active>
    <Weight>136.00</Weight>
    <Image><![CDATA[image.jpg]]></Image>
    <StartDate>1/31/2010</StartDate>
    <EndDate>1/31/2011</EndDate>
    <UserCanEnterQuantity>1</UserCanEnterQuantity>
    <PricingMechanism>Custom Pricing</PricingMechanism>
    <PricingCode><![CDATA[some pricing code]]></PricingCode>
    <BaseRecurringPrice>1234</BaseRecurringPrice>
    <Price>1234.45</Price>
    <LongDescription>Some long description here</LongDescription>
    <PriceFormula><![CDATA[136]]></PriceFormula>
    <CostFormula><![CDATA[136]]></CostFormula>
    <ProductType>Cardio</ProductType>
    <ProductName>
      <USEnglish><![CDATA[Step Excite+ 500]]></USEnglish>
      <French><![CDATA[Step Excite+ 500]]></French>
    </ProductName>
    <Description>
      <USEnglish><![CDATA[description english]]></USEnglish>
      <French><![CDATA[description French]]></French>
    </Description>
    <CartDescription>
      <USEnglish><![CDATA[cart description english]]></USEnglish>
      <French><![CDATA[cart description French]]></French>
    </CartDescription>
    <Categories>
      <USEnglish><![CDATA[Cardio>Excite+ Class]]></USEnglish>
      <French><![CDATA[Cardios>Excites+ Class]]></French>
    </Categories>
    <Attributes>
      <Attribute>
        <AttributeName>
          <USEnglish><![CDATA[LINE]]></USEnglish>
          <French><![CDATA[LINEA]]></French>
        </AttributeName>
        <Values>
          <Value>
            <USEnglish><![CDATA[Excite+]]></USEnglish>
            <French><![CDATA[Excite+]]></French>
          </Value>
        </Values>
      </Attribute>
      <Attribute>
        <AttributeName>
          <USEnglish><![CDATA[MODEL]]></USEnglish>
          <French><![CDATA[MODELLO]]></French>
        </AttributeName>
        <Values>
          <Value>
            <USEnglish><![CDATA[Step]]></USEnglish>
            <French><![CDATA[Step]]></French>
          </Value>
        </Values>
      </Attribute>
      <Attribute>
        <AttributeName>
          <USEnglish><![CDATA[VERSION]]></USEnglish>
          <French><![CDATA[VERSIONE]]></French>
        </AttributeName>
        <Values>
          <Value>
            <USEnglish><![CDATA[500]]></USEnglish>
            <French><![CDATA[500]]></French>
          </Value>
        </Values>
      </Attribute>
      <Attribute>
        <AttributeName>
          <USEnglish><![CDATA[FRAME]]></USEnglish>
          <French><![CDATA[TELAIO]]></French>
        </AttributeName>
        <Values>
          <Value>
            <USEnglish><![CDATA[Grey]]></USEnglish>
            <French><![CDATA[Argento]]></French>
          </Value>
        </Values>
      </Attribute>
    </Attributes>
  </Product>
</Products>

Minimal XML used to create a product (product name, type and category are required nodes)


<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>  
    <ProductType>Cardio</ProductType>
    <ProductName>
      <USEnglish><![CDATA[Step Excite+ 500]]></USEnglish>
    </ProductName>
    <Categories>
      <USEnglish><![CDATA[Cardio>Excite+ Class]]></USEnglish>
    </Categories>
  </Product>
</Products>
XML example snippet in case multiple <Identificator> nodes are used:


<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>
    <Identificator>PartNumber</Identificator>
    <Identificator>PriceCode</Identificator>
    <ShippingCosts>
      <ShippingName_1><![CDATA[some formula]]></ShippingName_1>
      <ShippingName_2><![CDATA[some formula]]></ShippingName_2>
    </ShippingCosts>
    .
    .
    .
    .
Note

When adjusting the visibility rules on dictionaries, and you have multiple dictionaries (system and custom) with a visibility rule set to 1, the dictionary with the highest rank becomes the default language on the tenant. Therefore, when making any changes to the visibility rules, you need to check the ranking to ensure which dictionary is the default one. For example, if you have two dictionaries with the same visibility rules set to 1, only the one with rank 1 will be the default.

Using the SimpleProductAdministration API and attempting to create new products will fail if you do not specify the same default dictionary as is already set up in the system. Please ensure that you are passing the same default language when using the SimpleProductAdministration API.

Related Information
SOAP API Authentication
On this page
Minimal XML used to create a product (product name, type and category are required nodes)
XML example snippet in case multiple <Identificator> nodes are used:
Related Information
Yes
No