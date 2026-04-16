# Products Advanced Settings Tab (Code Matching) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/2d7f28c3e65545ab9c8a025e7797dd5a.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products


	
Create Products


	
Product Definition Tab
	
Product Pricing Tab
	
Product Attributes Tab
	Product Rules and Messages Tab
	
Product Scripts Tab
	
Products Layout Tab
	
Products Advanced Settings Tab (Code Matching)
	Product Actions
	
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
Products Advanced Settings Tab (Code Matching)

In the Advanced Settings tab, you can set up code matching.

Code matching is used along with Intelligent Serialization (see the chapter on Sequence Substitution) and the reverse part number lookup used in the Quick Search. This saves time for a user when configuring a product because they don’t need to go through the full configuration process. If a user had a part number and wanted an almost identical unit with a few changes, this would save time.

Code Matching is where this connection is defined between the part number and the product. This is done by setting up Code Matching within a specific product. This allows the system to do a reverse part number search when the user enters a part number in the Quick Search. Reverse part numbering is done with the Catalog Code Generator field of the product.

This field can build the part number of the product through the use of attribute values/catalogue codes and static text. For instance, the SMB2 Desktop Computer has this in its Catalog Code Generator field: SMB2<*CATCODE(Processor) *><*CATCODE(Memory) *><*CATCODE(Hard Drive) *><*CATCODE(CD or DVD Drive) *><*CATCODE(Monitor) *> This expression has the static text of “SMB2” to start out the part number. This is then followed by the catalog code (CATCODE) of Processor, Memory, Hard Drive, CD or DVD Drive, and Monitor. The CATCODE tag pulls the catalog code for the selected value of the attribute.

When the software does a reverse search of a part number, it checks if any of the values in the part number are included in the attributes that make up the part number of the product. It does this in the order that the attributes are entered for the part number. For instance, the part number SMB2-A3-102422H16-Com5T17 is a result of the dynamic catalog code generation. To reverse search this part number, the software finds the product to check (discussed later how) then checks if there’s a catalog code value for the attribute Processor (<*CATCODE(Processor) *>) equal to -A3. It then moves to the next value and checks if the attribute Memory contains a catalog code value (<*CATCODE(Memory) *>) equal to -1024. Once all the values of the part number are found, the software opens that product and selects each value of the part number.
Note

The user needs to enter a part number that includes all the attributes included in the catalog code generator. If they don’t, then the system returns that it can’t find a product.

In order for the system to check the attributes of a product, it needs to know which product to look at. This is where Code Matching comes in. Code Matching tells the system which product to look at for a given part number. This is generally the static text used in the product’s part number.

To access Code Matching, choose Products under the Products admin menu and find the product that the serial number corresponds to. Choose the manual definition method and open Code Matching under the Current Product menu.

Enter the unique codes used to reference this product. Click Change/Add More Values to add more fields. To delete a reference, select the check box next to it and click the Change/Add More Values button. When finished, click the Finish button. This saves the values and creates the references to the product.

Related Information
Products
Sequence Substitution
Yes
No