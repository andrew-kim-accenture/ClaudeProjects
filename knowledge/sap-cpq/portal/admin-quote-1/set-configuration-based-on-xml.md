# Set Configuration Based on XML | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/490f459fe7df4e64a99052d071395abb.html#example-1
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help
	
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
Set Configuration Based on XML

This feature enables you to preconfigure the product based on the XML configuration that you’ve already defined. For this purpose, tag <*SetConfigurationBasedOnXML(xml)*> has been introduced.

The tag accepts XML as an input string parameter, which is parsed and used to preconfigure the product. While parsing the input XML, SAP CPQ tries to match attributes from XML to attributes in the product. If some attribute from XML couldn’t be matched to any product attribute, it’s skipped. SAP CPQ continues with matching other attributes and setting their values without interruption and doesn't display any error.

The only thing that can break the process is an invalid XML input (XML wasn't well formed). SAP CPQ doesn't display an error but it can't process any attributes.

Besides standard usage, this tag can be used through Iron Python scripting as well.

Since the <*SetConfigurationBasedOnXML(xml)*> tag doesn't support setting multiple attribute values, you can use this script to select multiple values in a checkbox attribute: Product.Attributes.GetByName('AttributeName').SelectDisplayValues('NameOfCheckBox1', 'NameOfCheckBox2', 'NameOfCheckBox3').

Look at the following examples to get familiar with the feature:

Example

This simple example shows how the input XML is supposed to look like if you want to set configuration for the product that doesn’t contain any containers.

For this example, we use our sample product named e-car CallidusCloud, which has a few attributes. We added an attribute Set configuration, which is of type Button. Also we’ve developed an IronPython script that provides an input XML and parses the <*SetConfigurationBasedOnXML()*> tag. This script is attached to the Set configuration button and once the button is clicked, the product becomes preconfigured based on the provided XML.

At first, our product is loaded into the Configurator. No attribute is selected yet.

Then, when Set button is clicked, some attributes get populated.

Here is the underlying XML file that has been provided as input to the SetConfigurationBasedOnXML tag:



<?xml version="1.0" encoding="utf-8"?>
 
<Attributes>
	<Attribute><Name>Exterior Color</Name><Value>gray</Value></Attribute>
	<Attribute><Name>Number of airbags</Name><Value>8</Value></Attribute>
	<Attribute><Name>Equipment</Name><Value>Classic</Value></Attribute>
	<Attribute><Name>Fuel</Name><Value>Petrol</Value></Attribute>
	<Attribute Quantity="5"><Name>warranty</Name><Value>YES</Value></Attribute>
</Attributes>


The entire process is driven by the IronPython script that was attached to the Set configuration button. Here is the script:



xml = '<?xml version="1.0" encoding="utf-8"?>'
xml+= '<Attributes><Attribute><Name>Exterior Color</Name><Value>gray</Value></Attribute>'
xml+= '<Attribute><Name>Number of airbags</Name><Value>8</Value></Attribute>'
xml+= '<Attribute><Name>Equipment</Name><Value>Classic</Value></Attribute>'
xml+= '<Attribute><Name>Fuel</Name><Value>Petrol</Value></Attribute>'
xml+= '<Attribute Quantity="5"><Name>warranty</Name><Value>YES</Value></Attribute></Attributes>'
 
TagParserProduct.ParseString("<* (" + xml + ")*>")


Example
This example shows how the input XML looks like if the product contains container attributes.


<?xml version="1.0" encoding="utf-8"?>
 
<Attributes>
        <Attribute Quantity="2">
          <Name>AttrWithQuantity</Name>
          <Value>1</Value>
        </Attribute>
        <Attribute>
          <Name>Memory</Name>
          <Value>256</Value>
        </Attribute>
        <Attribute>
          <Name>Monitor</Name>
          <Value>F19</Value>
        </Attribute>
        <Attribute>
          <Name>Processor_name_of_att</Name>
          <Value>P2</Value>
        </Attribute>
        <Attribute>
          <Name>Warranty</Name>
          <Value>4 yrs</Value>
        </Attribute>
        <Attribute>
          <Name>Hard disk</Name>
          <Value>60</Value>
        </Attribute>
        <Attribute>
          <Name>Nested-FirstAttribute</Name>
          <Rows>
            <Row>
              <Product>
                <Name>Nested-First</Name>
                <CatalogCode>PN-SMB10</CatalogCode>
                <Attributes>
                  <Attribute>
                    <Name>Memory</Name>
                    <Value>3GB DDR2</Value>
                  </Attribute>
                  <Attribute>
                    <Name>Processor_name_of_att</Name>
                    <Value></Value>
                  </Attribute>
                  <Attribute>
                    <Name>Monitor</Name>
                    <Value>T17</Value>
                  </Attribute>
                  <Attribute>
                    <Name>Hard disk</Name>
                    <Value>60</Value>
                  </Attribute>
                  <Attribute>
                    <Name>Warranty</Name>
                    <Value>123<a href="#">test</a></Value>
                  </Attribute>
                  <Attribute>
                    <Name>NonProductContainer</Name>
                    <Rows>
                      <Row>
                        <Columns>
                          <Column>
                            <Name>Test1</Name>
                            <Value>12312321</Value>
                          </Column>
                          <Column>
                            <Name>Test2</Name>
                            <Value>Intel Pentium 3.0GHz</Value>
                          </Column>
                        </Columns>
                      </Row>
                    </Rows>
                  </Attribute>
                  <Attribute>
                    <Name>ProductContainer</Name>
                    <Rows>
                      <Row>
                        <Product ExecuteRules="True">
                          <Name>Smb2 Simple Computer container+</Name>
                          <CatalogCode>PN-SMB10</CatalogCode>
                          <Attributes>
                            <Attribute>
                              <Name>Memory</Name>
                              <Value>256</Value>
                            </Attribute>
                            <Attribute>
                              <Name>Processor_name_of_att</Name>
                              <Value>A3</Value>
                            </Attribute>
                            <Attribute>
                              <Name>Monitor</Name>
                              <Value>T17</Value>
                            </Attribute>
                            <Attribute>
                              <Name>Hard disk</Name>
                              <Value>60</Value>
                            </Attribute>
                            <Attribute>
                              <Name>Warranty</Name>
                              <Value>1232131232323</Value>
                            </Attribute>
                          </Attributes>
                        </Product>
                        <Columns>
                          <Column>
                            <Name>Memory</Name>
                            <Value>60GB</Value>
                          </Column>
                          <Column>
                            <Name>Monitor</Name>
                            <Value>T17</Value>
                          </Column>
                          <Column>
                            <Name>Processor</Name>
                            <Value>A3</Value>
                          </Column>
                          <Column>
                            <Name>AttributeTest</Name>
                            <Value>aaa</Value>
                          </Column>
                        </Columns>
                      </Row>
                    </Rows>
                  </Attribute>
</Attributes>
On this page
Example
Example
Yes
No