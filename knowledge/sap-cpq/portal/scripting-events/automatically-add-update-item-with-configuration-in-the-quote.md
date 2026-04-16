# Automatically add/update item with configuration in the quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/5b43a32ab3d34ba8bb9340a7d5f1374b.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Write additional data to a quote xml
	
Quote Total standard calculations
	
Quote item copy event
	
Automatically add/update item with configuration in the quote
	
Check if the pricing condition is manually changed
	
Resetting Pricing Conditions
	
Setting Permissions for Quote Standard Fields
	
Product Configurator
	
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
Automatically add/update item with configuration in the quote
How to automatically add/update item with configuration in the quote?

An administrator can invoke script to add item automatically to the quote from catalogue/quote.

There are four ways to perform configuring of the product which should be added:

If configuration is dynamic (depending on some quote data - total prices, discount amount etc.), script for configuring product can be exposed as custom quote action.

Configuration of the product can be loaded based on packed CSVPAVID configuration:

Based on packed CSVPAVID configuration of the existing (old) quote item,

Based on provided packed CSVPAVID product configuration and container data configuration.

If configuration of product is always the same, script for configuring product can be attached to appropiate product event (for example, "When product is loaded", "When product rule execution ends" etc.).

If configuration of inline product needs to be loaded and configured through scripting from another product's configurator, this can be done on the following product events: "When product rule execution ends", "When product configuration is completed", "Before Add to quote" and "When product is added to quote".

Examples
How to inline configure and add item with dynamic configuration automatically?

If Configurable product needs to be configured automatically before it is added to the quote and configuration is dynamic, depending on some quote data - total price, discount percent etc., create a custom action which contains script for configuring product.

Product instance is created and attributes are configured inline, without leaving currently opened quote.

All quote calculations will be executed in the same way as item is manually added from the configurator.

Product rules will not be executed by default. If there is need for triggering standard Product rules, add Product.ApplyRules() in the script.

In this example Maintenance product should be added at the end of quoting process. Based on total amount, maintenance contract can be one or five years.

Script example for configuring Maintenance product base od Total amount:



inlineProduct = ProductHelper.CreateProduct('Maintenance_cpq')

    if Quote.Total.TotalAmount > 10000:
        inlineProduct.Attributes.GetByName('1 Year Support').SelectValue('1')
        inlineProduct.Attributes.GetByName('Maintenance duration').SelectValue('5-YEARS')
        inlineProduct.Attributes.GetByName('Contract Type').AssignValue('Added 5-years contract')
    else:
        inlineProduct.Attributes.GetByName('Maintenance duration').SelectValue('1-YEAR')
        inlineProduct.Attributes.GetByName('Contract Type').AssignValue('Added 1-year contract')

    inlineProduct.AddToQuote()

How to inline update configuration of existing quote item?

If configuration of existing main item in the quote needs to be updated, this can be executed inline - without leaving current quote.

Script for changing configuration can be exposed as custom action.

All quote calculations will be executed in the same way as item is manually updated from the configurator.

Script example for updating Maintenance product:



for mainItem in Quote.MainItems:
    if mainItem.ProductName == 'Maintenance':
        mainItem.Edit()
        Product.Attributes.GetByName('Maintenance duration').SelectValue('5-YEARS')
        Product.Attributes.GetByName('Contract Type').AssignValue('Added 5-years contract')
        if Product.Attributes.GetByName('1 Year Support').SelectedValue is not None:
            Product.Attributes.GetByName('1 Year Support').SelectedValue.IsSelected = False
        Product.UpdateQuote()
        break

How to inline update configuration of existing quote item by creating new inline product instance?

If configuration of existing main item in the quote needs to be updated, this can be executed inline - without leaving current quote.

Script for changing configuration can be exposed as custom action.

All quote calculations will be executed in the same way as item is manually updated from the configurator.

Script example for updating Maintenance product:



for mainItem in Quote.MainItems:
    if mainItem.ProductName == 'Maintenance':
        inlineProduct = mainItem.EditConfiguration()
        inlineProduct.Attributes.GetByName('Maintenance duration').SelectValue('5-YEARS')
        inlineProduct.Attributes.GetByName('Contract Type').AssignValue('Added 5-years contract')
        if inlineProduct.Attributes.GetByName('1 Year Support').SelectedValue is not None:
            inlineProduct.Attributes.GetByName('1 Year Support').SelectedValue.IsSelected = False
        inlineProduct.UpdateQuote()
        break

How to inline populate product attributes based on existing item?

If current product configuration needs to be configured based on selected attribute values from existing quote item configuration, this can be provided inline by using script attached on some product event (for example "When product rule execution ends", "When product configuration is completed") or trigger.

In following example, if selected value of attribute "Populate from completed contract" is "YES", load configuration from existing quote item and preselect automatically some attributes.

Create scripting Change trigger attached on attribute "Populate from completed contract":



if Product.Attributes is not None:
    if Product.Attributes.GetByName('Populate from completed contract') is not None:
        if Product.Attributes.GetByName('Populate from completed contract').SelectedValue is not None:
            if Product.Attributes.GetByName('Populate from completed contract').SelectedValue.Display == 'YES':
                inlineProduct = ProductHelper.CreateProduct('00020001', 1)
                if inlineProduct.Attributes.GetByName('Maintainance period').SelectedValue is not None:
                    Product.Attributes.GetByName('Maintainance period').SelectValue(inlineProduct.Attributes.GetByName('Maintainance period').SelectedValue.ValueCode)
                if inlineProduct.Attributes.GetByName('Responsible company').SelectedValue is not None:
                    Product.Attributes.GetByName('Responsible company').AssignValue(inlineProduct.Attributes.GetByName('Responsible company').SelectedValue.UserInput)
            else:
                Product.Attributes.GetByName('Maintainance period').SelectedValue = None
                Product.Attributes.GetByName('Responsible company').AssignValue('')

How to inline load CSVPAVID configuration and container data of existing quote item to product configuration?

If product configuration needs to be loaded from existing quote item, this can be managed from scripting by providing quote composite number and quote item.

All the attributes and containers will be set based on quote item's CSVPAVID and containers.

This will enable reloading existing (old) configurations with just few lines of code.

In the following example, parent/child configuration is loaded based on provided quote composite number and quote item and it is inline added to the quote.



inlineProduct = ProductHelper.CreateProduct('00021931', 1)
inlineProduct.AddToQuote()
How to inline load CSVPAVID configuration and container data of existing quote item to product configuration?


inlineProduct = ProductHelper.CreateProduct('Parent_Child_Configuration_cpq', '938:1:55594@1,;', \
'<?xml version="1.0" encoding="utf-16"?><cntrs>' + \
'<cntr x="938">' + \
'<ps /><rs><r>' + \
'<g>3220281e-f98e-441b-9c71-44ea36b3b69a</g><x>0</x><y>979103</y><p>2934</p><crmId /><isSelected>False</isSelected>' + \
'<cs><c x="1"><sv><![CDATA[3864]]></sv><v><![CDATA[z]]></v></c></cs>' + \
'<csv><![CDATA[651:1:3864@1,;817:0:;845:1:3610@1,;938:0:;]]></csv>' + \
'<cntrs>' + \
'<cntr x="817"><ps /><rs /><t><cs><c x="2"><v><![CDATA[]]></v></c><c x="3"><v><![CDATA[]]></v></c></cs></t></cntr>' + \
'<cntr x="938"><ps /><rs /><t><cs><c x="1"><v><![CDATA[]]></v></c></cs></t></cntr>' + \
'</cntrs>' + \
'</r></rs><t><cs><c x="1"><v><![CDATA[]]></v></c></cs></t></cntr>' + \
'</cntrs>')

inlineProduct.AddToQuote()

How to configure and add Configurable item with unchangeable configuration automatically?

If Configurable product needs to be configured automatically before it is added to the quote and configuration is always the same, create a script that will be attached to appropriate product event (for example, "When product is loaded", "When product rule execution ends" etc.).

This script should define selection of attribute values, adding container rows etc.

To configure item as on image below,

create following product script. It will add container row and populate container columns.

Value for column "RenewalDate" will be current time.

Value for column "Price" will be retrieved from custom table Prices based on populated part number column.

Value for column "Attribute Name" will be retrieved from attribute based container column "RefAttr".



container = Product.GetContainerByName("Assets")

if container is not None:
    row = container.AddNewRow()
    row["PartNumber"] = "PN1234"
    row["LicenceKey"] = "LicencePN1234"
    row["RenewalDate"] = str(DateTime.Now)
    query = SqlHelper.GetFirst("SELECT Price FROM Prices WHERE PartNumber='" + row["PartNumber"] + "'")
    row["Attribute Name"] = row.Columns["RefAttr"].ReferencingAttribute.Name

    if query is not None:
        row["Price"] = str(query.Price)

    if row is not None:
        row.IsSelected = True

Product.Attributes.GetByName("Memory").SelectValue("24GB_DDR2")

How to configure and add Configurable item with unchangeable configuration automatically?

If Configurable product needs to be configured automatically before it is added to the quote and configuration is always the same, create a script that will be attached to appropriate product event (for example, "When product is loaded", "When product rule execution ends" etc.).

This script should define selection of attribute values, adding container rows etc.

To configure item as on image below,

If System needs to be configured automatically before it is added to the quote, create a script that will be attached to appropriate event (for example, "When product is loaded", "When product rule execution ends" etc.).

To get configured system item as on the image below,

create following script for configuring System:



container1 = Product.GetContainerByName("Container 1")
container1.MakeRowSelected(1, False)
container2 = Product.GetContainerByName("Container 2")
container2.Rows[0].Columns["New Licenses"].Value = "Licence 1"
container2.Rows[1].Columns["New Licenses"].Value = "Licence 2"
Product.ApplyRules()

To automatically add item from the catalogue, use QuoteHelper. If quote does not exist, this method will also create quote:



QuoteHelper.AddItem("SystemProduct_cpq")

To automatically add item from the quote, use Quote:



Quote.AddItem("SystemProduct_cpq")
On this page
How to automatically add/update item with configuration in the quote?
Examples
Yes
No