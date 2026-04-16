# Call an external web service | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/7b2d979858fc4010a91bf5db4ce1da72.html?locale=en-US&state=PRODUCTION&version=2603
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
Call an external web service
How to call an external web service?

An administrator can call an external web service from scripts by using [Scripting.IWebServiceHelper].

If the service method returns xml data, it can be manipulated by [Scripting.IXmlHelper] and used as a simple object afterward.

Otherwise, if the service method returns data in the form of object, its fields can be reached as object members - for example,

webServiceObject.Field1, webserviceObject.Field2...

Note

When invoking WebServiceHelper, all data must be in the same line and data must be hardcoded, otherwise, regex will not recognize that it should reload web service.

Examples

Call webservice and use returning result Set current weather parameters to the custom field "Weather".

Weather parameters are obtained by a web service call that expects city and country parameters for which we want weather info.



ws = WebServiceHelper.Load('http://www.webservicex.net/globalweather.asmx')

f = ws.GetWeather(\
Quote.GetCustomField("City").Content, \
Quote.GetCustomField("Country").Content)

x = XmlHelper.Load(f)

result = 'Location: ' + str(x["Location"].InnerText) \
+ '\r\nTime: ' + str(x["Time"].InnerText) \
+ '\r\nWind: ' + str(x["Wind"].InnerText) \
+ '\r\nVisibility: ' + str(x["Visibility"].InnerText) \
+ '\r\nTemperature: ' + str(x["Temperature"].InnerText) \
+ '\r\nDewPoint: ' + str(x["DewPoint"].InnerText) \
+ '\r\nRelativeHumidity: ' + str(x["RelativeHumidity"].InnerText) \
+ '\r\nPressure: ' + str(x["Pressure"].InnerText)

Quote.GetCustomField("Weather").Content = result


Call WCF webservice Example shows how to update quote custom field Custom_Field_1 within CPQ quote from external system. The script goes through all items and if finds any item custom field that is set to "1", web service (Service_Data) is loaded. CartCompositeNumber is sent by calling ExecuteRemoteLogic method. The status of the quote will be changed.

For more details see [Scripting.IXmlHelper]

This is only an example web service.



for item in Quote.Items:
    if item.ItemCustomField is not None and item.ItemCustomField.Value == '1':
        ws = WebServiceHelper.Load('Svc', 'http://127.0.0.0:8080/Service_Data.svc?wsdl')
        result = ws.ExecuteRemoteLogic(Quote.CompositeNumber)
        Quote.GetCustomField("Custom_Field_1").Content = str(result)
        Quote.Save()
        WorkflowContext.ChangeQuoteStatus = True
        break

On this page
How to call an external web service?
Examples
Yes
No