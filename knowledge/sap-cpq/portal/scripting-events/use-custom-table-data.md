# Use custom table data | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/6424897cc73c41649c9e164019c3c9e8.html?locale=en-US&state=PRODUCTION&version=2603
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
Use custom table data
How to use custom table data

As an administrator you are able to use custom table data in scripts through Scripting.ISqlHelper.

Through queries, you can get the first value, list of values or a single value from the custom table.

Also, you can create new custom table or delete the existing one as well as manipulate the data by inserting or deleting records.

Example:
Receive data from custom table and update custom field

Get RegionCode through the web service call and find corresponding RegionName from custom table Regions for the code received. Store RegionName in Region custom field. Note that this is only a fictitious web service.



ws = WebServiceHelper.Load('http://webcomlocal.net/userinfo.asmx')
        f = ws.GetUserData(Quote.UserId)
        x = XmlHelper.Load(f)

        regionObj = SqlHelper.GetFirst("SELECT NAME FROM REGIONS WHERE CODE='" + x.RegionCode + "'")
        if regionObj is not None:
        Quote.GetCustomField("Region").Content = regionObj.NAME
        else:
        Quote.GetCustomField("Region").Content = ""

Create new custom table with 4 columns and add new row to it


# define name, columns' names and types and create new empty table

        tableInfo = SqlHelper.GetTable('My_Custom_Table')
        tableInfo.AddColumn('Weight', 'NVARCHAR', 250, True)
        tableInfo.AddColumn('Price', 'NVARCHAR', 250, True)
        tableInfo.AddColumn('Unit', 'NVARCHAR', 250, True)
        tableInfo.HiddenTable = False
        SqlHelper.CreateTable(tableInfo)    

        # create new row, add data to columns and insert into previously created table
        row = {}
        row['Weight'] = '20kg'
        row['Price'] = '2500'
        row['Unit'] = 'USD'
        tableInfo.AddRow(row)
        SqlHelper.Upsert(tableInfo)

Insert row into the existing custom table


#insert

tableInfo = SqlHelper.GetTable("ITEMMASTERFROMNS")
tablerow = { "item_internal_id" : itemInternalId, "item_sku" : sku }
tableInfo.AddRow(tablerow)
upsertResult = SqlHelper.Upsert(tableInfo)
Update row in the existing custom table


#update

tablerow = { "CpqTableEntryId" : currentQuoteCpqTableEntryId, "OpportunityId" : oppId, "QuoteNumber" : Quote.CompositeNumber, "IsPrimary" : 1 }
tableInfo.AddRow(tablerow)
SqlHelper.Upsert(tableInfo)

Delete row in the existing custom table


#delete

primaryQueryItems = SqlHelper.GetList("select CpqTableEntryId, OpportunityId, QuoteNumber, ItemGuid, OpportunityProductID from OpportunityQuoteItems where OpportunityId = '{0}' and QuoteNumber={1}".format(oppId, primaryQuoteNumber))
tableInfo = SqlHelper.GetTable("OpportunityQuoteItems")
for primaryItem in primaryQueryItems:
tableInfo.AddRow(primaryItem)
SqlHelper.Delete(tableInfo)

On this page
How to use custom table data
Example:
Yes
No