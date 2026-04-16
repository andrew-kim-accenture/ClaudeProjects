# Sorting and Ranking Attributes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/530d4241d21a46c4a29f126ea7cec9ec.html?locale=en-US&state=PRODUCTION&version=2603
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
Sorting and Ranking Attributes

Here are some additional functionalities you can employ when using the Simple Product administration.

If you create a product with an attribute and, for that attribute, you add <Rank> node next to <Value> and <Value Code>, the Rank will sort only the values in Setup>Attributes, while values in Product Attributes/Options will be lined as determined by the XML. These values will get automatic sort, and in that order will be displayed in Configurator. These values will be sorted automatically and, as such, will be displayed in the Configurator.

XML example:



<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>  
     <Identificator>PartNumber</Identificator>
    <DisplayType>Configurable</DisplayType>
     <ProductSystemId>Regression_cpq</ProductSystemId>
     <PartNumber>Test Number</PartNumber>
    <ProductType>Accessories</ProductType>
    <ProductName>
      <USEnglish><![CDATA[RegressionProduct]]></USEnglish>
    </ProductName>
    <Categories>
      <USEnglish><![CDATA[Hardware]]></USEnglish>
    </Categories>
   <Attributes>
      <Attribute>
         <AttributeName>
            <USEnglish><![CDATA[RegressionAttribute]]></USEnglish>
         </AttributeName>
    <AttributeSystemId>Regression</AttributeSystemId>
          <AttributeType>UserSelection</AttributeType>
     <DisplayType>DropDown</DisplayType>
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
              <Value>
               <USEnglish><![CDATA[3]]></USEnglish>
                <Rank>30</Rank>
            <ValueCode>3</ValueCode>
            </Value>
              <Value>
               <USEnglish><![CDATA[4]]></USEnglish>
                <Rank>40</Rank>
            <ValueCode>4</ValueCode>
            </Value>
         </Values>
       </Attribute>
      </Attributes>
  </Product>
</Products>

If you add one more node, the <Sort> node, you will set the same values in the <Sort> node. Result: Rank will sort values in Setup>Attributes, while values in Product Attributes/Options will be lined as determined by <ValueCode>. The values will be sorted in an ascending order, that is from the smallest item to the largest, or in an alphabetical order.

XML example:



<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>  
     <Identificator>PartNumber</Identificator>
    <DisplayType>Configurable</DisplayType>
     <ProductSystemId>Regression_cpq</ProductSystemId>
     <PartNumber>Test Number</PartNumber>
    <ProductType>Accessories</ProductType>
    <ProductName>
      <USEnglish><![CDATA[RegressionProduct]]></USEnglish>
    </ProductName>
    <Categories>
      <USEnglish><![CDATA[Hardware]]></USEnglish>
    </Categories>
   <Attributes>
      <Attribute>
         <AttributeName>
            <USEnglish><![CDATA[RegressionAttribute]]></USEnglish>
         </AttributeName>
    <AttributeSystemId>Regression</AttributeSystemId>
          <AttributeType>UserSelection</AttributeType>
     <DisplayType>DropDown</DisplayType>
       <Values>
            <Value>
               <USEnglish><![CDATA[1]]></USEnglish>
                <Rank>10</Rank>
        <ValueCode>4</ValueCode>
        <Sort>1</Sort>
           </Value>
              <Value>
               <USEnglish><![CDATA[2]]></USEnglish>
                <Rank>20</Rank>
            <ValueCode>3</ValueCode>
            <Sort>1</Sort>
            </Value>
              <Value>
               <USEnglish><![CDATA[3]]></USEnglish>
                <Rank>30</Rank>
            <ValueCode>2</ValueCode>
            <Sort>1</Sort>
            </Value>
              <Value>
               <USEnglish><![CDATA[4]]></USEnglish>
                <Rank>40</Rank>
            <ValueCode>1</ValueCode>
            <Sort>1</Sort>
            </Value>
         </Values>
       </Attribute>
      </Attributes>
  </Product>
</Products>

Note that this example uses the same node as before. If you use the same values in the <Sort> node for two <Values>, these two values in Product Attributes/Option will be lined as determined by the order from the <ValueCode>; other values will be sorted as determined by <Sort>. Values with the same <Sort> within the configurator will be lined as determined by the <Value> (from the smallest item to the largest, or in an alphabetical order); other values will be sorted as determined by the order from <Sort>.

XML example:



<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>  
     <Identificator>PartNumber</Identificator>
    <DisplayType>Configurable</DisplayType>
     <ProductSystemId>Regression_cpq</ProductSystemId>
     <PartNumber>Test Number</PartNumber>
    <ProductType>Accessories</ProductType>
    <ProductName>
      <USEnglish><![CDATA[RegressionProduct]]></USEnglish>
    </ProductName>
    <Categories>
      <USEnglish><![CDATA[Hardware]]></USEnglish>
    </Categories>
   <Attributes>
      <Attribute>
         <AttributeName>
            <USEnglish><![CDATA[RegressionAttribute]]></USEnglish>
         </AttributeName>
    <AttributeSystemId>Regression</AttributeSystemId>
          <AttributeType>UserSelection</AttributeType>
     <DisplayType>DropDown</DisplayType>
       <Values>
            <Value>
               <USEnglish><![CDATA[1]]></USEnglish>
                <Rank>10</Rank>
        <ValueCode>4</ValueCode>
        <Sort>1</Sort>
           </Value>
              <Value>
               <USEnglish><![CDATA[2]]></USEnglish>
                <Rank>20</Rank>
            <ValueCode>3</ValueCode>
            <Sort>3</Sort>
            </Value>
              <Value>
               <USEnglish><![CDATA[3]]></USEnglish>
                <Rank>30</Rank>
            <ValueCode>2</ValueCode>
            <Sort>2</Sort>
            </Value>
              <Value>
               <USEnglish><![CDATA[4]]></USEnglish>
                <Rank>40</Rank>
            <ValueCode>1</ValueCode>
            <Sort>1</Sort>
            </Value>
         </Values>
       </Attribute>
      </Attributes>
  </Product>
</Products>

If you use different values in the <Sort> node, values in Product Attributes/Options will be lined in an order as determined by <Sort>; the same behavior will take place in the Configurator, as expected.

XML example:



<?xml version="1.0" encoding="utf-8"?>
<Products>
  <Product>  
     <Identificator>PartNumber</Identificator>
    <DisplayType>Configurable</DisplayType>
     <ProductSystemId>Regression_cpq</ProductSystemId>
     <PartNumber>Test Number</PartNumber>
    <ProductType>Accessories</ProductType>
    <ProductName>
      <USEnglish><![CDATA[RegressionProduct]]></USEnglish>
    </ProductName>
    <Categories>
      <USEnglish><![CDATA[Hardware]]></USEnglish>
    </Categories>
   <Attributes>
      <Attribute>
         <AttributeName>
            <USEnglish><![CDATA[RegressionAttribute]]></USEnglish>
         </AttributeName>
    <AttributeSystemId>Regression</AttributeSystemId>
          <AttributeType>UserSelection</AttributeType>
     <DisplayType>DropDown</DisplayType>
       <Values>
            <Value>
               <USEnglish><![CDATA[1]]></USEnglish>
                <Rank>10</Rank>
        <ValueCode>4</ValueCode>
        <Sort>1</Sort>
           </Value>
              <Value>
               <USEnglish><![CDATA[2]]></USEnglish>
                <Rank>20</Rank>
            <ValueCode>3</ValueCode>
            <Sort>3</Sort>
            </Value>
              <Value>
               <USEnglish><![CDATA[3]]></USEnglish>
                <Rank>30</Rank>
            <ValueCode>2</ValueCode>
            <Sort>2</Sort>
            </Value>
              <Value>
               <USEnglish><![CDATA[4]]></USEnglish>
                <Rank>40</Rank>
            <ValueCode>1</ValueCode>
            <Sort>4</Sort>
            </Value>
         </Values>
       </Attribute>
      </Attributes>
  </Product>
</Products>
Related Information
SOAP API Authentication
Yes
No