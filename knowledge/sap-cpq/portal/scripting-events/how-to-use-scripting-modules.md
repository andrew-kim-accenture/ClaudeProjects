# How to use Scripting Modules? | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/0796f52d29a642ee8aed8b94459d4cda.html?locale=en-US&state=PRODUCTION&version=2603
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
How to use Scripting Modules?

To create new scripting module, go to Setup  Develop  Global Scriptsand click Add New. Make sure to tick Module checkbox, insert name and code and save it. As you can notice, after ticking Module checkbox Attach to Event will dissapear - modules can't be used as standard scripts, so they can't be attached to any event. They're just helper scripts that store definitions of common actions (functions) and are reusable. By using modules, you don't have to duplicate code across global/product scripts - you just have to import module in main script as you would import any other python module or .NET library/assembly.

Note

Do not store the context, or any other state, in scripting modules.

The system caches modules, so changing the context invalidates the cached reference. Therefore, use these modules to define methods or variables independent of the current context state.

Let's create module script named TestModule that contains 2 functions, Add and Subtract:



def Add(num1, num2):
    result = num1 + num2
    Trace.Write('Result of Add is: ' + str(result))
    return result

def Subtract(num1, num2):
    result = num1 - num2
    Trace.Write('Result of Subtract is: ' + str(result))
    return result

Now, let's use this module in one of the product scripts and set attribute values by adding/subtracting some random numbers:



import TestModule

sumResult = TestModule.Add(5,8)
Product.Attributes.GetByName('Sum').AssignValue(str(sumResult))

remResult = TestModule.Subtract(9,4)
Product.Attributes.GetByName('Remainder').AssignValue(str(remResult))

Beside importing whole module, you can import only functions that are needed:



from TestModule import Add
# if importing more than one function, use following synthax:
# from SomeModule import Func1, Func2, Func3 ...etc.

sumResult = Add(3,4)
Product.Attributes.GetByName('Sum').AssignValue(str(sumResult))
Notes

You can import module and use its functions within other scripting module. Also, you can import as many modules as you need - there's no any restriction.

Not all global SAP CPQ objects are available in module's scope - only stateless objects. Following entities are available in modules:

ScriptExecutor

Log

Trace

SqlHelper

XmlHelper

RestClient

mTLSRestClient

UserPersonalizationHelper

FileHelper

Translation

If you need e.g. Product, Quote or SFEnvironment to be available in module, you'll have to pass them (or some of their properties) as input parameters of function in main (caller) script. Take a look at the example below.



# in module script, define function that expects quote object
def MyFunc(quote):
    if quote is not None:
        oppName = quote.OpportunityName
        compNum = quote.CompositeNumber
        # ...do some operation with quote data...


# in main script pass global quote object to module's function
from SomeModule import MyFunc

result = MyFunc(Quote)
# ........
Yes
No