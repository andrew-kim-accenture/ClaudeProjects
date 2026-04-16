# Import Product configurations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/be93644b52b44bb897ba36ea4c77b70b.html?locale=en-US&state=PRODUCTION&version=2603
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
Import Product configurations
Import Product configuration

An administrator can allow users to import product configurations in product configurator. The procedure is to enable checkbox "Allow product configuration import" in product administration and to write an Iron Python script to configure this product. Also, "Show product configuration template" application parameter should be set to "YES". This will allow users to upload Excel spreadsheets with product configurations.

Examples
How to read values from uploaded Excel spreadsheet


#adds message that will be shown to user in the responder part of the configurator
Product.Messages.Add("start")
#Gets the uploaded Excel spreadsheet "Sheet1" and loads all cells between B2 and B5 into an array
arr = Workbook.GetSheet("Sheet1").Cells.GetRange("B2", "B5")
#Sets the values for attributes 
Product.Attributes.GetBySystemId("Hard_Drive_cpq").SelectValue(arr[0,0])
Product.Attributes.GetBySystemId("Upgrade_Warranty_cpq").SelectValue(arr[1,0])
Product.Attributes.GetBySystemId("Question_Hardware_cpq").SelectValue(arr[2,0])
Product.Attributes.GetBySystemId("Microsoft_Office_Software_cpq").SelectValue(arr[3,0])
Product.Messages.Add("end")

How to get valid range for Excel spreadsheet


end = Workbook.GetSheet("Sheet1").Cells.GetLastColumnPosition + str(Workbook.GetSheet("Sheet1").Cells.GetRowCount)
Workbook.GetSheet("Sheet1").Cells.GetRange("A1", end)

How to configure parent/child products


Product.Messages.Add("Start")
arr = Workbook.GetSheet("Sheet1").Cells.GetRange("A1", "C5")
siteCont = Product.GetContainerByName("Site Container")
siteCont.AddNewRow()
Product.Attributes.GetByName("PoP").SelectValue(arr[1,1])
Product.Messages.Add("PoP Selected")
Product.GetContainerByName("price").Rows.GetByColumnName(arr[4,1], arr[4,2]).IsSelected = True
Product.Messages.Add("Price selected")
siteCont.Rows[0].Product.Attributes.GetByName("Bandwidth").SelectValue(arr[2,2])
Product.Messages.Add("Site > Bandwidth selected")
countryVal = arr[3,2]
found = False
for val in siteCont.Rows[0].Product.Attributes.GetByName("Country").Values:
    if val.ValueCode == countryVal:
        found = True
        siteCont.Rows[0].Product.Attributes.GetByName("Country").SelectValue(countryVal)
        Product.Messages.Add("Site > Country selected")
        break
if not found:
        Product.Messages.Add("Country not found")        
Product.Messages.Add("Finished Import!")

On this page
Import Product configuration
Examples
Yes
No