# PRODUCT ADMINISTRATION - Input XML Examples | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/81d560f0089f48909fc596307579f329.html#example-no.-8---add/update-attribute
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
PRODUCT ADMINISTRATION - Input XML Examples
Example No. 1

The following XML enables the process of effective dates for product and attributes: AttributeType, AttributeSystemId, Display Type for product and attributes, Rank and Value Code for attributes. Supported values for the Product Display Type are: Simple, Configurable, System, Collection and Parent/Child.

Supported values for Attribute Display Type are as follows: UserSelection, Date, String, Number, Att.Quantity, AttValue.Quantity, ExternalValue, Measurement, Container (Attribute type container can be created over API call and the system will be able to add an attribute type container to a product if that attribute already exists within SAP CPQ. When attribute type “Container” is created over API call, this container attribute will not have any other properties such as columns, properties, validation messages set up over API call).



<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>  
     <Identificator>PartNumber</Identificator>
    <DisplayType>Parent/Child</DisplayType>
     <ProductSystemId>Laptop_cpq</ProductSystemId>
     <PartNumber>Test Number</PartNumber>
    <ProductType>Accessories</ProductType>
    <ProductName>
      <USEnglish><![CDATA[Laptop]]></USEnglish>
    </ProductName>
  <StartDate>3/3/15</StartDate>
  <EndDate>5/5/18</EndDate>
    <Categories>
      <USEnglish><![CDATA[Hardware]]></USEnglish>
    </Categories>
   <Attributes>
      <Attribute>
  <StartDate>3/3/15</StartDate>
  <EndDate>5/5/18</EndDate>
         <AttributeName>
            <USEnglish><![CDATA[HardDisk]]></USEnglish>
         </AttributeName>
    <AttributeSystemId>HardDisk_cpq</AttributeSystemId>
          <AttributeType>UserSelection</AttributeType>
     <DisplayType>DropDown</DisplayType>
       <Values>
            <Value>
               <USEnglish><![CDATA[1]]></USEnglish>
                <Rank>20</Rank>
        <ValueCode>2</ValueCode>
<AttributeValueSystemId>HardDisk1_cpq</AttributeValueSystemId>
           </Value>
              <Value>
               <USEnglish><![CDATA[2]]></USEnglish>
                <Rank>40</Rank>
            <ValueCode>4</ValueCode>
<AttributeValueSystemId>HardDisk2_cpq</AttributeValueSystemId>
            </Value>
         </Values>
       </Attribute>
      </Attributes>
  </Product>
</Products>
Example No. 2
The following XML is for a new attribute type - Measurement. You will need one more node,<UnitOfMeasurement>, for Measurement type. Supported values are as follows: Measurement types that have already been defined in SAP CPQ. It is not possible to create a new Measurement type via API call.


<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>  
     <Identificator>PartNumber</Identificator>
    <DisplayType>Configurable</DisplayType>
     <ProductSystemId>HighPressureHoze_cpq</ProductSystemId>
     <PartNumber>New Test Number</PartNumber>
    <ProductType>Cardio</ProductType>
  <Description>
  <USEnglish>Test Description</USEnglish>
   </Description>
    <ProductName>
      <USEnglish><![CDATA[HighPressureHose]]></USEnglish>
    </ProductName>
    <Categories>
      <USEnglish><![CDATA[Accessories]]></USEnglish>
    </Categories>
   <Attributes>
      <Attribute>
         <AttributeName>
            <USEnglish><![CDATA[MaxPressure]]></USEnglish>
         </AttributeName>
    <AttributeSystemId>MaxPressure</AttributeSystemId>
          <AttributeType>Measurement</AttributeType>
          <UnitOfMeasurement>Flow</UnitOfMeasurement>
       <Values>
            <Value>
               <USEnglish><![CDATA[10bar]]></USEnglish>
                <Rank>10</Rank>
        <ValueCode>10bar</ValueCode>
            </Value>
              <Value>
               <USEnglish><![CDATA[20bar]]></USEnglish>
                <Rank>20</Rank>
            <ValueCode>20bar</ValueCode>
            </Value>
         </Values>
       </Attribute>
      </Attributes>
  </Product>
</Products>
Example No. 3

The following XML enables you to create a Product with Attribute, which is Line Item and Required, and contains Line Item Description, Rank within cart, Label, Hint, and checkbox for Spans across the entire row, Show one time price and Show recurring price.

Supported values for checkbox include the following: 1 for Yes, 0 for No. You should send “0 “value to deselect this option.



<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>  
     <Identificator>PartNumber</Identificator>
    <DisplayType>Parent/Child</DisplayType>
     <ProductSystemId>SpeedBoatParentChild_cpq</ProductSystemId>
     <PartNumber>Test Number PC</PartNumber>
    <ProductType>Vehicles</ProductType>
  <Description>
  <USEnglish>Test Description PC</USEnglish>
   </Description>
    <ProductName>
      <USEnglish><![CDATA[SpeedBoatPCProduct]]></USEnglish>
    </ProductName>
    <Categories>
      <USEnglish><![CDATA[Hardware]]></USEnglish>
    </Categories>
   <Attributes>
      <Attribute>
         <AttributeName>
            <USEnglish><![CDATA[SpeedBoatUserSelectionAttribute]]></USEnglish>
         </AttributeName>
    <AttributeSystemId>SpeedBoatUser</AttributeSystemId>
          <AttributeType>UserSelection</AttributeType>
            <DisplayType>CheckBox</DisplayType>
           <IsLineItem>1</IsLineItem>
           <IsRequired>1</IsRequired>
          <LineItemDescription>
                 <USEnglish>Line Item Description</USEnglish>
           </LineItemDescription>
        <RankWithinCart>100</RankWithinCart>
        <SpansAcrossEntireRow>1</SpansAcrossEntireRow>
        <Label>
            <USEnglish><![CDATA[SpeedBoat Label Test]]></USEnglish>
        </Label>
        <Hint>
            <USEnglish><![CDATA[SpeedBoat Hint Test]]></USEnglish>
        </Hint>
        <ShowOneTimePrice>1</ShowOneTimePrice>
        <ShowRecurringPrice>1</ShowRecurringPrice>
       <Values>
            <Value>
               <USEnglish><![CDATA[1]]></USEnglish>
                <Rank>10</Rank>
        <ValueCode>1</ValueCode>
            </Value>
              <Value>
               <USEnglish><![CDATA[2]]></USEnglish>
                <Rank>20</Rank>
            <ValueCode>2</ValueCode>
            </Value>
         </Values>
       </Attribute>
      </Attributes>
  </Product>
</Products>

Example No. 4

For Attach Script Button, the supported values are as follows: “1” for True, while “0” value is sent in case this flag should be deselected. Supported values: Exact Script Name.



<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>  
     <Identificator>PartNumber</Identificator>
    <DisplayType>Configurable</DisplayType>
     <ProductSystemId>RegressionConfigurable_cpq</ProductSystemId>
     <PartNumber>Test Number Configurable</PartNumber>
    <ProductType>Configuration</ProductType>
  <Description>
  <USEnglish>Test Description Configurable</USEnglish>
   </Description>
    <ProductName>
      <USEnglish><![CDATA[PersonalComputer]]></USEnglish>
    </ProductName>
    <Categories>
      <USEnglish><![CDATA[Hardware]]></USEnglish>
    </Categories>
   <Attributes>
      <Attribute>
         <AttributeName>
            <USEnglish><![CDATA[RegressionAttValueQuantity]]></USEnglish>
         </AttributeName>
    <AttributeSystemId>AttValueQuantity_cpq</AttributeSystemId>
          <AttributeType>AttValue.Quantity</AttributeType>
            <DisplayType>Button</DisplayType>
           <AttachScriptButton>1</AttachScriptButton>
        <ButtonScripts>
          <ButtonScript>
            <Name>1stScriptQWE</Name>
            <Rank>1</Rank>
          </ButtonScript>
          <ButtonScript>
            <Name>RegressionScript</Name>
            <Rank>1</Rank>
          </ButtonScript>
  <ButtonScript>
            <Name>AddItem</Name>
            <Rank>1</Rank>
          </ButtonScript>
        </ButtonScripts>
         <Label>
           <USEnglish><![CDATA[Button Label]]></USEnglish>
        </Label>
          <StartDate>3/3/2015</StartDate>
           <ButtonText>
           <USEnglish><![CDATA[Button ! ! !]]></USEnglish>
           </ButtonText>
            <SpansAcrossEntireRow>0</SpansAcrossEntireRow>
             <Values>
            <Value>
               <USEnglish><![CDATA[1]]></USEnglish>
                <Rank>10</Rank>
        <ValueCode>1</ValueCode>
            </Value>
         </Values>
       </Attribute>
      </Attributes>
  </Product>
</Products>
Example No. 5

The following XML is for <Preselected> and <IsFirstValuePreselected>, when sending attributes. It enables the processing of attributes whose first value is always preselected, according to standard SAP CPQ behavior.

Supported values are as follows: “1” for True, while “0” value is sent when this flag should be deselected. For the first value use <IsFirstValuePreselected>; for other values use preselected, same supported values.



<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>  
     <Identificator>PartNumber</Identificator>
    <DisplayType>Collection</DisplayType>
     <ProductSystemId>FitnessCollectionPreselected_cpq</ProductSystemId>
     <PartNumber>Test Number Collection</PartNumber>
    <ProductType>Cardio</ProductType>
  <Description>
  <USEnglish>Test Description Collection</USEnglish>
   </Description>
    <ProductName>
      <USEnglish><![CDATA[FitnessCollectionProduct]]></USEnglish>
    </ProductName>
    <Categories>
      <USEnglish><![CDATA[Hardware]]></USEnglish>
    </Categories>
   <Attributes>
      <Attribute>
         <AttributeName>
            <USEnglish><![CDATA[FitnessUserSelectionAttribute]]></USEnglish>
         </AttributeName>
    <AttributeSystemId>FitnessUser</AttributeSystemId>
          <AttributeType>UserSelection</AttributeType>
            <DisplayType>ListBox</DisplayType>
           <IsLineItem>1</IsLineItem>
           <IsRequired>0</IsRequired>
          <LineItemDescription>
                 <USEnglish>Line Item Description</USEnglish>
           </LineItemDescription>
        <RankWithinCart>100</RankWithinCart>
        <SpansAcrossEntireRow>0</SpansAcrossEntireRow>
        <ShowOneTimePrice>1</ShowOneTimePrice>
        <ShowRecurringPrice>0</ShowRecurringPrice>
           <IsFirstValuePreselected>0</IsFirstValuePreselected>
       <Values>
            <Value>
               <USEnglish><![CDATA[1]]></USEnglish>
                <Rank>10</Rank>
        <ValueCode>1</ValueCode>
            </Value>
              <Value>
               <USEnglish><![CDATA[2]]></USEnglish>
                <Rank>20</Rank>
            <ValueCode>2</ValueCode>
           <Preselected>1</Preselected>
            </Value>
            <Value>
               <USEnglish><![CDATA[3]]></USEnglish>
                <Rank>30</Rank>
            <ValueCode>3</ValueCode>
           <Preselected>1</Preselected>
            </Value>
         </Values>
       </Attribute>
       </Attributes>
  </Product>
</Products>

Example No. 6

The following XML is for Tabs with attributes. When Product Display Type is “Simple” or Product Display Type node is not present, <Tabs> node is not allowed. Parent The Tabs node has a child node Tab, and nodes within the Tab node are as follows: SystemId, Name, Rank, LayoutTemplate, VisibilityPermission, Visibility condition and Show tab header in configuration.

Supported values include the following:

LayoutTemplate - string. This is tab configuration’s exact name. In order to set the tab layout template over API call, that file must have been created in SAP CPQ already; otherwise, the tab won’t be added to the system.

VisibilityPermission - 0 (Always displayed), 1 (Display only if it is not empty), 2 (define condition for visibility)

Show tab header in configuration - “1” as True, while the “0” value is sent when this flag should be deselected.

The following node is Attributes.

The nodes within the Attributes node are Name and Rank. Supported values for Name: Product attribute name. Only attributes added to a product can be placed on the tabs.

Responder Attributes and LineItem Responder are not allowed with Simple products. For ResponderLineItem node, attributes should be set as Line Items.



<Products>
  <Product>
    <Identificator>ProductName</Identificator>
    <PricingMechanism>Pricebook Lookup</PricingMechanism>
    <DisplayType>Configurable</DisplayType>
    <ProductName>
      <USEnglish>test translation</USEnglish>
    </ProductName>
    <Categories>
      <USEnglish>2102</USEnglish>
    </Categories>
    <ProductType>Accessories</ProductType>
     <Tabs>
      <Tab>
       <SystemId>01_cpq</SystemId>>
       <LayoutTemplate>GENERAL</LayoutTemplate>
       <VisibilityPermission>0</VisibilityPermission>
       <Rank>1</Rank>
       <Attributes>
        <Attribute>
         <Name>AT-TR-26758</Name>
         <Rank>1</Rank>
        </Attribute>
        <Attribute>
         <Name>CTAttrTest</Name>
         <Rank>2</Rank>
        </Attribute>
      </Attributes>
     </Tab>
     <Tab>
       <SystemId>02</SystemId>
       <LayoutTemplate>GENERAL</LayoutTemplate>
       <VisibilityPermission>0</VisibilityPermission>
       <Rank>2</Rank>
       <Attributes>
        <Attribute>
         <Name>CTAttrTest</Name>
         <Rank>1</Rank>
        </Attribute>
        <Attribute>
         <Name>AT-TR-26758</Name>
         <Rank>2</Rank>
        </Attribute>
      </Attributes>
     </Tab>
    </Tabs>
    <Attributes UpdateOnlyListedAttributes="false">
            <Attribute UpdateOnlyListedValues="FALSE">
                <AttributeName>
                    <USEnglish>
                        <![CDATA[AT-TR-26758]]>
                    </USEnglish>
                </AttributeName>
                <Values>
                    <Value>
                        <USEnglish>
                            <![CDATA[1]]>
                        </USEnglish>
                        <ValueCode>1</ValueCode>
                    </Value>
                </Values>
            </Attribute>
            <Attribute UpdateOnlyListedValues="FALSE">
                <AttributeName>
                    <USEnglish>
                        <![CDATA[CTAttrTest]]>
                    </USEnglish>
                </AttributeName>
                <Values>
                    <Value>
                        <USEnglish>
                            <![CDATA[1]]>
                        </USEnglish>
                        <ValueCode>1</ValueCode>
                    </Value>
                </Values>
            </Attribute>
    </Attributes>
   <ProductSystemId>test_translation_cpq</ProductSystemId>
  </Product>
</Products>

Example No. 7

The following XML is for setting the Global IPython script. To set the script add a new child node <GlobalScripts> to <Product> input XML node. Parent GlobalScripts node has a child node, Script, and nodes within the Script node are as follows: Name, Rank, Event.

For the Name node you must use the Exact Script Name; supported values for Events are as follows:

OnProductLoaded

OnProductRuleExecutionStart

OnProductRuleExecutionEnd

OnProductTabChanged

OnProductCompleted

OnProductAddedToQuote

OnProductBeforeAddToQuote



<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>
     <Identificator>PartNumber</Identificator>
     <ProductSystemId>Configurable_cpq</ProductSystemId>
     <PartNumber>Regression Part Number</PartNumber>
   <DisplayType>Configurable</DisplayType>
    <ProductType>Accessories</ProductType>
    <ProductName>
      <USEnglish><![CDATA[PneumaticDrill]]></USEnglish>
    </ProductName>
    <Categories>
      <USEnglish><![CDATA[Machine]]></USEnglish>
    </Categories>
    <GlobalScripts>
  <Script>
  <Name>RegressionScript</Name>
  <Rank>10</Rank>
<Events>
<Event>OnProductBeforeAddToQuote</Event>
</Events>
</Script>
</GlobalScripts>
    <Attributes>
      <Attribute>
         <AttributeName>
            <USEnglish><![CDATA[RegressionScript1]]></USEnglish>
         </AttributeName>
          <AttributeType>UserSelection</AttributeType>
        <Values>
            <Value>
               <USEnglish><![CDATA[1]]></USEnglish>
            <Rank>10</Rank>
            </Value>
           <Value>
              <USEnglish><![CDATA[2]]></USEnglish>
             <Rank>20</Rank>
         </Value>
         <Value>
            <USEnglish><![CDATA[3]]></USEnglish>
            <Rank>30</Rank>
        </Value>
         </Values>
       </Attribute>
    <Attribute>
         <AttributeName>
            <USEnglish><![CDATA[RegressionScript2]]></USEnglish>
         </AttributeName>
          <AttributeType>UserSelection</AttributeType>
  <Values>
            <Value>
               <USEnglish><![CDATA[1]]></USEnglish>
            <Rank>10</Rank>
            </Value>
            </Values>
       </Attribute>
      </Attributes>
  </Product>
</Products>
Example No. 8 - Add/Update attribute

If you want to add an attribute or update the existing one, you should provide an XML input file with desired data (Sample XML file follows). Note that there is an property UpdateOnlyListedAttributes that controls which attributes will be affected. This property should be added to the <attributes> node and set to TRUE or FALSE based on what you want to achieve. Explanation on this parameter follows.

Parameter UpdateOnlyListedAttributes on <Attributes> node:

If value is FALSE then all attributes provided through XML will be added or updated. Attributes that are not provided in the XML will be deleted.

If value is TRUE then all attributes provided through XML will be added or updated. Attributes that are not provided in the XML will remain intact (ignored).



<Attributes UpdateOnlyListedAttributes="TRUE">
<Attribute>
<AttributeName>
<USEnglish>VERSION3</USEnglish>
</AttributeName>
<Values>
<Value>
<USEnglish>100</USEnglish>
</Value>
</Values>
</Attribute>
</Attributes>
Example No. 9 - Add/Update attribute values

If you want to add or update attribute values, you should provide an XML input file with desired data (Sample XML file follows). This XML file should also provide two properties - UpdateOnlyListedAttributes and UpdateOnlyListedValues that control which attributes and attribute values will be affected.

UpdateOnlyListedAttributes property should be added to the <attributes> node and set to TRUE or FALSE based on what you want to achieve. Explanation on this parameter can be found here.

UpdateOnlyListedValues property should be added to the <attribute> node and set to TRUE or FALSE based on what you want to achieve. Explanation on this parameter follows.

Parameter UpdateOnlyListedValues on <Attribute> node:

If value is set to FALSE or parameter is not provided in XML, then all the existing attribute values will be disabled. Values provided in XML will be either updated or created.

If value is set to TRUE then all attibute values provided through XML will be either added or updated. Values that are not provided in the XML will remain intact (ignored).



<Attributes UpdateOnlyListedAttributes="TRUE">
<Attribute UpdateOnlyListedValues="TRUE">
<AttributeName>
<USEnglish>VERSION2</USEnglish>
</AttributeName>
<Values>
<Value>
<USEnglish>610</USEnglish>
</Value>
</Values>
</Attribute>
</Attributes>
Example No. 10 - Set reference product as an attribute value
If you want to set reference product as an attribute value, you should provide an XML file that contains node <RefProduct> under <value> node of attribute value that you want to set. If you don't provide parameter UpdateOnlyListedValues or it is set to FALSE, then all other attribute values are deleted. Similarly, if you don't provide UpdateOnlyListedAttributes parameter or it is set to FALSE then all other attributes are deleted. Sample XML file follows.


<Attributes>
<Attribute>
<AttributeName>
<USEnglish>VERSION2</USEnglish>
</AttributeName>
<Values>
<Value>
<USEnglish>506</USEnglish>
<RefProduct>Product_SystemId_cpq</RefProduct>
</Value>
</Values>
</Attribute>
</Attributes>
Example No. 11 - Set responder template
If you want to set responder template, you can use node RDResponderTemplate node in input XML. Sample XML follows.


<Products>
<Product>
<DisplayType>Configurable</DisplayType>
<Identificator>PartNumber</Identificator>
<ProductSystemId>TestRDProduct_cpq</ProductSystemId>
<ProductType>Accessories</ProductType>
<RDResponderTemplate>MyResponderTemplate</RDResponderTemplate>
<PartNumber>DA353LNAL00G0BRE</PartNumber>
<Active>TRUE</Active>
<Weight>136.00</Weight>
<PriceFormula><![CDATA[136]]></PriceFormula>
<ProductName>
<USEnglish><![CDATA[TestRDProduct]]></USEnglish>
</ProductName>
<Description>
<USEnglish><![CDATA[description english]]></USEnglish>
</Description>
<CartDescription>
<USEnglish><![CDATA[cart description english]]></USEnglish>
</CartDescription>
<Categories>
<USEnglish><![CDATA[Cardio>Excite+ Class]]></USEnglish>
</Categories>
<Tabs>
<Tab>
<SystemId>Tab1_tab</SystemId>
<Name>Tab1</Name>
<Rank>10</Rank>
<LayoutTemplate>GENERAL</LayoutTemplate>
<RDTemplate>MyConfigTemplate</RDTemplate>
<VisibilityPermission>2</VisibilityPermission>
<VisibilityCondition>1</VisibilityCondition>
<ShowTabHeader>1</ShowTabHeader> 
</Tab>
</Tabs>
</Product>
</Products>
Example No. 12 - Display different values of the same product attribute

The following XML allows you to specify which values of the same product attribute you want to be displayed to users in the Configurator.



<Products>
  <Product>  
     <Identificator>PartNumber</Identificator>
    <DisplayType>Parent/Child</DisplayType>
     <ProductSystemId>Laptop_cpq</ProductSystemId>
     <PartNumber>Test Number2</PartNumber>
    <ProductType>Accessories</ProductType>
    <ProductName>
      <USEnglish><![CDATA[Laptop]]></USEnglish>
    </ProductName>
  <StartDate>3/3/15</StartDate>
  <EndDate>5/5/18</EndDate>
    <Categories>
      <USEnglish><![CDATA[Hardware]]></USEnglish>
    </Categories>
   <Attributes>
      <Attribute>
  <StartDate>3/3/15</StartDate>
  <EndDate>5/5/18</EndDate>
         <AttributeName>
            <USEnglish><![CDATA[HardDisk]]></USEnglish>
         </AttributeName>
    <AttributeSystemId>HardDisk_cpq</AttributeSystemId>
          <AttributeType>UserSelection</AttributeType>
     <DisplayType>DropDown</DisplayType>
       <Values>
            <Value>
               <USEnglish><![CDATA[1]]></USEnglish>
                <Rank>10</Rank>
        <ValueCode>1</ValueCode>
<AttributeValueSystemId>HardDisk1_cpq</AttributeValueSystemId>
           </Value>
              <Value>
               <USEnglish><![CDATA[2]]></USEnglish>
                <Rank>20</Rank>
            <ValueCode>2</ValueCode>
<AttributeValueSystemId>HardDisk2_cpq</AttributeValueSystemId>
            </Value>
         </Values>
       </Attribute>
      </Attributes>
  </Product>
</Products>


Now, the product named Laptop with the HardDisk attribute will have only attribute values 1 and 2 displayed to users.

If you want to add another product with different values of the same attribute, you can specify which values of the product you want to show to users by adding UpdateOnlyListedValues parameter to the <Values> node and set it to TRUE, as shown in the example below.



<Products>
  <Product>  
     <Identificator>PartNumber</Identificator>
    <DisplayType>Parent/Child</DisplayType>
     <ProductSystemId>Laptop2_cpq</ProductSystemId>
     <PartNumber>Test Number</PartNumber>
    <ProductType>Accessories</ProductType>
    <ProductName>
      <USEnglish><![CDATA[Laptop2]]></USEnglish>
    </ProductName>
  <StartDate>3/3/15</StartDate>
  <EndDate>5/5/18</EndDate>
    <Categories>
      <USEnglish><![CDATA[Hardware]]></USEnglish>
    </Categories>
   <Attributes>
      <Attribute>
  <StartDate>3/3/15</StartDate>
  <EndDate>5/5/18</EndDate>
         <AttributeName>
            <USEnglish><![CDATA[HardDisk]]></USEnglish>
         </AttributeName>
    <AttributeSystemId>HardDisk_cpq</AttributeSystemId>
          <AttributeType>UserSelection</AttributeType>
     <DisplayType>DropDown</DisplayType>
       <Values UpdateOnlyListedValues="true">
            <Value>
               <USEnglish><![CDATA[3]]></USEnglish>
                <Rank>30</Rank>
        <ValueCode>3</ValueCode>
<AttributeValueSystemId>HardDisk1_cpq</AttributeValueSystemId>
           </Value>
              <Value>
               <USEnglish><![CDATA[4]]></USEnglish>
                <Rank>40</Rank>
            <ValueCode>4</ValueCode>
<AttributeValueSystemId>HardDisk2_cpq</AttributeValueSystemId>
            </Value>
         </Values>
       </Attribute>
      </Attributes>
  </Product>
</Products>


In this example, only attribute values 3 and 4 are displayed. At the same time, Display to users checkbox is selected in the Setup and the new values are created and selected for the new product without affecting values which are already in the system.

Now, you have created two products which share the same attribute and four different attribute values. The result of the first example is the product named Laptop with HardDisk attribute where all values are present in the Setup, but only values 1 and 2 are displayed to users. On the other hand, even though the product Laptop2 created in the second example contains the same attribute as the previous product, users can only see attribute values 3 and 4 in the Configurator.

Related Information
SOAP API Authentication
On this page
Example No. 1
Example No. 2
Example No. 3
Example No. 4
Example No. 5
Example No. 6
Example No. 7
Example No. 8 - Add/Update attribute
View all
Yes
No