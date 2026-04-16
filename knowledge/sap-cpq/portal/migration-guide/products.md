# Products | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/ac217340dde045b28aa0e941cd0ce5ed.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Migration Guide to Quote 2.0 EngineVersion: 2603English
Provide feedback on our search

	
SAP CPQ Migration Guide to Quote 2.0 Engine
	
About Quote 2.0 - Benefits and Compatibility
	
Quote 2.0 Migration Process
	
Migration Effort Estimate


	
Quote 1.0 vs Quote 2.0 - Feature Differences
	
Feature Specific Migration Instructions


	
Pricing/Calculations
	
Products
	
Quotes
	
Customers/Customer Roles
	
Users
	
CRM Integration
	
Providers
	
UI Design
	
Workflow/Approval
	
Develop
	
General
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
Migration Effort Estimate Legend
	
Quote 2.0 Migration Checklist
	
Support Procedure for Migration to Quote 2.0
	
Quote 1.0 to Quote 2.0 Migration FAQ
Products

*Migration Effort Estimate Legend

Migration Overview

Setup Section Name

	

Availability in Quote 2.0

	

Status in Quote 2.0

	

Description

	

Migration Effort Estimate

	

Migration Instructions




Products

	

Available

	

Redesigned

	

Scripts have new context and need to be refactored for Quote 2.0.

	

L

	

Migration Instructions

Migration Instructions
Products

After the migration, check the existing rules in the Rules and Messages tab and see if there are any obsoleted CTX tags that need to be replaced with a Quote 2.0 alternative. Additionally, you should review all other ocurrencies of CTX tags in the product administration.

The primary changes and updates in the Products are visible in rules and messages, local scripts, and triggers. In Quote 1.0 you can use quote CTX tags in the Configurator, because the quote object is available in memory. However, Quote 2.0 is stateless and doesn’t support objects in memory, so accessing quote data directly is not supported.

On Quote 2.0 number of characters for Product Part Number is limited to 100 and cannot be exceeded. In case there are products on Quote 1.0 with higher number of characters, they should be modified prior to triggering migration of Quotes to new engine.

TagParser has been deprecated in Quote2.0 so leveraging CTX tags within scripts is not possible. Any formula using CTX Quote tags for calculations in the Catalog and the Configurator needs to be refactored. Below are two typical use cases when CTX Quote tags are used in Quote 1.0 with an alternative for Quote 2.0:

market-based pricing referencing the selected market on the quote (for example, CTX.Quote.SelectedMarket). The selected market can be accessed directly from the Catalog and the Configurator. Instead of using <* CTX( Quote.SelectedMarket.MarketCode ) *>, use <*CTX( Market.CurrencyCode )*> in Quote 2.0.

customer-specific pricing referencing one of the customer roles in the quote (for example, CTX.Quote.Customer(BillTo) ). Instead of using CTX.Quote.Customer(BillTo).Field, use <*CTX( Quote.InvolvedParties.PartnerFunctionKey(PY).Field )*> in Quote 2.0.

TagParser has been removed to improve the performance of the system as the system will not have to load every data source and will be purely event based. In every instance of TagParser used in your system, please replace it with the correct IronPython method or property that will populate the data you need.

TagParser Workarounds

TagParser in Quote 1.0	Alternative Script in Quote 2.0


<* Cart_ID *>

	

context.Quote.Id




<* Table( ) *>

	

SqlHelper.GetFirst( )




<* GetFirstFromQuoteTable( ) *>

	

SqlHelper.GetFirst( ) or context.Quote.QuoteTables[ ]




<* QuoteProperty( ) *>

	

context.Quote.GetCustomField( )

Additional examples of replacing TagParser code are detailed below:

Quote Table TagParser

Quote 1.0:



TagParserQuote.ParseString('<* GetFirstFromQuoteTable( quoteTableName, returnColumn, whereFilter={} ) *>'.format(item["Package_Number"].Value))


Quote 2.0:



quote_id = context.Quote.Id
user_id = context.Quote.OwnerId
sql_str = “SELECT returncolumn FROM qt__quotetablename 
WHERE wherefilter = {wf} AND 
id = {u} AND 
quoteid = q}”.format(wf=item[“Package_Number”].Value,q=quote_id,u=user_id)
res = SqlHelper.GetFirst(sql_str).returncolumn




Custom Field TagParser

Quote 1.0:



TagParserQuote.ParseString("<*CTX( Quote.CustomField(Subgeomarket) )*>")

Quote 2.0:



context.Quote.GetCustomField(‘Subgeomarket’).Value

Market TagParser

Quote 1.0:



TagParserQuote.ParseString("<*CTX( Market.CurrencyCode )*>")

Quote 2.0:



market = context.Quote.SelectedMarket
currency_code = market.CurrencyCode


The product event When product is added to quote (OnProductAddedToQuote) is not supported in Quote 2.0. You need to select a supported event in Quote 2.0 and, if needed, rewrite the script accordingly. Alternatively, you can either create a quote calculation or a global script.

Review each product script in Quote 2.0 after the migration and check whether it should be rewritten according to the Quote 2.0 scripting logic. Use the related documentation for reference. The same product methods and properties that are supported in Quote 1.0 are supported in Quote 2.0, except those related to obsoleted feature, for example GetGlobal .

In Quote 1.0 scripts, you can read and write the configuration and the quote at any time. In Quote 2.0, after triggering an action, the system triggers an event that retrieves only the context of avilable objects that are relevant for that specific action. Every event has the quote object in context (context.Quote). Other available objects depend on the event that was raised. Consequently, you can handle only the part of the quote that is available in the context of that event.

For configurable products, once the Configure event is triggered from the Catalog, SAP CPQ opens the underlying product as a product configuration object. The product configuration object has access to all the product fields, attributes, layout, rules, and all other properties added to product by administrator in SAP CPQ Setup. In addition to the product configuration object, Quote 1.0 also has access to the Cart (in memory). In Quote 2.0, the configuration and the cart are segmented, so the Cart only loads after the Add to Quote event is triggered.

This means that in Quote 1.0 scripts can read and update quote data from the configuration at any point.

Example: Company Orange Computers wants to keep track of every computer that is quoted with its new ARM processor. In Quote 1.0, Orange SAP CPQ administrator, Greg, writes a script that when Processor Type = ARM, quote item custom field “Contains ARM” should be set to Yes. The script in Quote 1.0 might look like this:


attrValue = Product.Attr(“Processor Type”).GetValue()
if attrValue == ‘ARM’:
    item = sender
    item["Contains ARM"].Value = ‘Yes’


With the script attached to either Before Add to quote and When product is added to quote.

In Quote 2.0, a quote calculation can be added in Fields, Calculations, Layout to Calculations on Add/Copy/Delete Item with script:


for item in context.AffectedItems:
    attrValue = context.Product.Attr("Processor Type").GetValue()
    if attrValue == ‘ARM’:
        item.Item["Contains ARM "] = ‘Yes’


Alternatively, a global script can be added with event After adding products to quote with script:



for item in context.Items:
    attrValue = context.Product.Attr("Processor Type").GetValue()
    if attrValue == ‘ARM’:
        item.Item["Contains ARM "] = ‘Yes’


Check the Develop section for more information. Also, more examples are described in the same section.

Writing to Configurator from Quote

To write to product level fields, you need to loop through context.Quote.GetAllItems() and for each item for which you want to update attributes from the quote level, you need to call AsMainItem.Edit().

For example, the user selects the monitor size, and this change is reflected in the configurator (the attribute (line item) changes accordingly). Configurator is edited inline via the python script.



Quote = context.Quote

for item in Quote.GetAllItems():

    if item.PartNumber == "KY6440":
        # cast or return as mainItem
        MainItem = item.AsMainItem
        # edit the product inline
        Product = MainItem.Edit()
        # assign based on the custom field value
        valueToSelect = Quote.GetCustomField("Monitor").Value
        Product.Attributes.GetByName("Monitor").SelectValue(valueToSelect)
        # update
        Product.UpdateQuote()
        # intention break
        break




The code is added as global script with event type on custom field change.

Example: Company Orange Computers wants to allow a certain partner to order printers directly from an online portal so they create a custom API to accept those orders. The Printer product in SAP CPQ accepts a free text entry for the location of the printer, the brand, model and the color of the printer. In Quote 1.0, Orange Computers SAP CPQ administrator, Greg, writes a custom API script that saves the parameters from the API call, creates a new quote, configures the Printer product and adds it to the quote.



#store parameters entered in API call
sysId = Param.ProductSystemId
desc = Param.CustomDescription
brand = Param.PrinterBrand
model = Param.PrinterModel
color = Param.Color

#create a new quote
QuoteHelper.CreateNewQuote()

#create a new product
apiProduct = ProductHelper.CreateProduct(sysId)

#enter/select attributes
apiProduct.Attributes.GetByName('Custom Description').AssignValue(desc)
apiProduct.Attributes.GetByName('Brand').SelectValue(brand)
apiProduct.Attributes.GetByName('Model').SelectValue(model)
apiProduct.Attributes.GetByName('Color').SelectValue(color)

#add the product to the cart
apiProduct.AddToQuote()


In Quote 2.0, the script would look the same:



#store parameters entered in API call
sysId = Param.ProductSystemId
desc = Param.CustomDescription
brand = Param.PrinterBrand
model = Param.PrinterModel
color = Param.Color

#create a new quote
quote = QuoteHelper.CreateNewQuote()

#create a new product
apiProduct = ProductHelper.CreateProduct(sysId)

#enter/select attributes
apiProduct.Attributes.GetByName('Custom Description').AssignValue(desc)
apiProduct.Attributes.GetByName('Brand').SelectValue(brand)
apiProduct.Attributes.GetByName('Model').SelectValue(model)
apiProduct.Attributes.GetByName('Color').SelectValue(color)

#add the product to the cart
quote.AddItem(apiProduct, 1)

To make an update to the product via API, in Quote 1.0 the script would look like this:


#store parameters entered in API call
quoteNumber = Param.CompositeQuoteNumber
sysId = Param.ProductSystemId
updatedDescription = Param.CustomDescription

#edit the quote
quote = QuoteHelper.Edit(quoteNumber)

#edit the product and assign the updated description
for mainItem in quote.MainItems:
    if item.ProductSystemId == sysId:
        # edit the product 
        MainItem.Edit()
        # assign based on the custom field value
        Product.Attributes.GetByName('Custom Description').AssignValue(updatedDescription)
        # apply configuration rules
        Product.ApplyRules()
        # update the configuration
        Product.UpdateQuote()
        # intentionally exit the main items loop
        break
# save the quote
quote.Save()


The same script to update the product in Quote 2.0 would look like this:


#store parameters entered in API call
quoteNumber = Param.CompositeQuoteNumber
sysId = Param.ProductSystemId
updatedDescription = Param.CustomDescription

#edit the quote
quote = QuoteHelper.Get(quoteNumber)

#edit the product and assign the updated description
for item in quote.GetAllItems():
    if item.ProductSystemId == sysId:
        # cast or return as mainItem
        MainItem = item.AsMainItem
        # edit the product inline
        Product = MainItem.Edit()
        # assign based on the custom field value
        Product.Attributes.GetByName('Custom Description').AssignValue(updatedDescription)
        # apply configuration rules
        Product.ApplyRules()
        # update the configuration
        Product.UpdateQuote()
        # intentionally exit the main items loop
        break


On this page
Migration Overview
Migration Instructions
Yes
No