# Use the <*ExecuteScript()*> Tag | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/4bb3a64f2b704961827ea7409dc46d23.html?locale=en-US&state=PRODUCTION&version=2603
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
Use the <*ExecuteScript()*> Tag

The <*ExecuteScript(MyGlobalScriptName) *> tag is used for executing global scripts.

It works in much the same way as the IP ScriptExecutor in that it can run any script which is active except for the modules.

Note

The ScriptName can be generated dynamically. For example: <*ExecuteScript(<* ProductName *>) *>

An additional parameter can be passed to the script <*ExecuteScript(MyGlobalScriptName,22) *> and in the script the Param will have the value "22".

In case of two or more parameters, the syntax is as follows: <*ExecuteScript(GlobalScript1,{"A":1,"B":2}) *>. In the script Param.A hass the value 1, and param.B has the value 2.

The additional parameter can be generated dynamically <*ExecuteScript(scriptName,<* ProductName *>) *>.

Some additional information on this tag:

The TagParserProduct.ParseString method can not be used in script which has been run from tag.

The Product.ApplyRules() method will not work in script which has been run from tag.

The script run from tag can return value. The result of executing the tag <*ExecuteScript(scriptName) *> will be variable Result from script

Note

The <*ExecuteScript()*> tag works only in the context of the configurator.

Yes
No