# Product rules execution ends event | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/af60d0b0d98f47c39198b3011fc10cf2.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Scripting Events, Properties and Event PipelineVersion: 2603English
Provide feedback on our search

	
Introduction
	
SAP CPQ script plugin
	
Alternatives to CLR Module Import
	
Common properties
	
Iron Python Events
	
How-to Examples


	
Replace New Style classes with Old Style classes in IronPython
	
Use custom table data
	
Invoke a script directly from client using javascript
	
Call an external web service
	
Consume Python Global Scripts as REST Webservices
	
Rest Service Call
	
Send xml to an external system
	
Using Arg.Custom paramter
	
Configure container child product
	
Use ApplyProductChanges method
	
Quote
	
Product Configurator


	
Product completed event
	
Product rules execution ends event
	
Product tab changed event
	
Product before add to quote event
	
Product added/updated to quote event
	
Product attribute triggers
	
Retrieve generated documents
	
Import Product configurations
	
Check if container row is selected
	
How to strip HTML tags from string
	
Edit Existing Configuration Without Opening Quote
	
Working with Streams
	
Other Examples
	
Using Trace and Log
	
Tips and Tricks
	
Calculate Product Type Custom Discount field
	
How to use Scripting Modules?
	
How to Hide Custom Field
	
How to integrate with Litmos using IronPython scripting?
	
Integrate with MS CRM
	
Product completed event
	
Product Type Multiplier to Parent Items Only
	
Set cart item to optional by default?
	
Set custom field to optional/required?
	
Set the Multiplier and Quantity of all child items to the Multiplier and Quantity of the parent item
	
Total Extended Amount and Total Cost of Optional Items
	
Use Product Type Item custom calculations?
	
Use Quote Total custom calculations?
	
Use SelectedAttributes of Quote item
	
Unicode Support in Scripting
	
Get Cookies for REST UI API Authentication
	
Use the <*ExecuteScript()*> Tag
	
Send Attribute Values via Scripting in Bulk to SAP Variant Configuration and Pricing
	
Reset Values via Scripting
	
Random Object
	
Event Pipeline in Quote 1.0
	
Event Pipeline in Quote 2.0
	
Script Performance
Product rules execution ends event
Product rules execution ends event

An administrator can invoke script when product rules execution ends in the configurator.

Examples

Select product configuration based on the selected attribute value Select product configuration in scripting instead of complex tag formula.

Instead of tag formula:



[IF](<*IFANYVALUE(Industry:General retail no customer file)*>)
{<*SELECTVALUES(Merchandising:Advanced sales price lists single currency)*>
<*SELECTVALUES(Sale operations:Mail order sales order processing)*>
<*SELECTVALUES(Supplier management:Purchase order processing single currency|Replenishment)*>
<*SELECTVALUES(Integration modules:Data import export utility)*>}[ENDIF]

[IF](<*IFANYVALUE(Industry:General retail with customer file)*>)
{<*SELECTVALUES(Merchandising:Advance sales price lists two currencies)*>
<*SELECTVALUES(Sale operations:Mail order sales order processing)*>
<*SELECTVALUES(Supplier management:Purchase order processing single currency|Replenishment)*>
<*SELECTVALUES(Integration modules:Data mapping utility)*>}[ENDIF]

[IF](<*IFANYVALUE(Industry:Music shop)*>)
{<*SELECTVALUES(Merchandising:Advanced sales price lists single currency)*>
<*SELECTVALUES(Sale operations:Special orders customer collect)*>
<*SELECTVALUES(Supplier management:Purchase order processing single currency|Replenishment)*>
<*SELECTVALUES(Integration modules:Data mapping utility)*>
<*SELECTVALUES(Customer relationships:Customer file)*>}[ENDIF]


for configuring product can be used following script on rule execution ends event for product attribute 'Industry':



merchandisingAttribute = Product.Attributes.GetBySystemId("Merchandising_cpq")
saleOperationsAttribute = Product.Attributes.GetBySystemId("Sales_operation_cpq")
supplierManagementAttribute = Product.Attributes.GetBySystemId("Supplier_cpq")
integrationModules = Product.Attributes.GetByName("Integration modules")
customerRelationshipAttribute = Product.Attributes.GetByName("Customer relationships")

def IndustryPreselection(p1, p2, p3, p4, p5):
    merchandisingAttribute.SelectValue(p1)
    saleOperationsAttribute.SelectValue(p2)
    supplierManagementAttribute.SelectValues(p3, p4)
    integrationModules.SelectValues(p5)

if Product.Attributes.GetByName("Industry").SelectedValue is not None:
    selectedValue = Product.Attributes.GetByName("Industry").SelectedValue.ValueCode

if (selectedValue == "General retail no customer file"):
    IndustryPreselection("Advanced sales price lists single currency", "Mail order processing", \
"Purchase order processing single currency", "Replenishment", "Data import export utility")
elif (selectedValue == "General retail with customer file"):
    IndustryPreselection("Advance sales price lists two currencies", "Mail order processing", \
"Purchase order processing single currency", "Replenishment", "Data mapping utility")
else:
    IndustryPreselection("Advanced sales price lists single currency", "Special orders customer collect", \
"Purchase order processing single currency", "Replenishment", "Data mapping utility")
    customerRelationshipAttribute.SelectValue("Customer file")

On this page
Product rules execution ends event
Examples
Yes
No