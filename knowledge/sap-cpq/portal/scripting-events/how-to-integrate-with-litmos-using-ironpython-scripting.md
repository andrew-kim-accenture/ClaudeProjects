# How to integrate with Litmos using IronPython scripting? | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/b258672e5e1a4718adf9533efb63ade5.html?locale=en-US&state=PRODUCTION&version=2603
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
How to integrate with Litmos using IronPython scripting?

Example below will show how to support SSO with Litmos using IronPython script.

See Scripting.IRestServiceHelper to see available members for entity received by web service call. There are two steps in supporting integration:

Change responder XSLT by adding following code:



<script type="text/javascript" xmlns="http://ddue.schemas.microsoft.com/authoring/2003/5">
        loginToLitmos = function (){
                var ssoLoginUrl = Webcom.Configurator.Config.Manager.ExecuteCustomScript("GetLitmosUrl");
                window.open(ssoLoginUrl.value, "_blank");
        }
</script><a href="#" onclick="loginToLitmos(); return false;" xmlns="http://ddue.schemas.microsoft.com/authoring/2003/5">Login to Litmos</a>


Add new IronPython script:



ws = WebServiceHelper.Load("Rest", "https://api.litmos.com/v1.svc/users/abc12345678?apikey=YOUR_API_KEY&amp;source=sampleapp")

response = ws.GetXml()

ApiResponseFactory.HtmlResponse(response.GetElementsByTagName("LoginKey")[0].InnerText)

Yes
No