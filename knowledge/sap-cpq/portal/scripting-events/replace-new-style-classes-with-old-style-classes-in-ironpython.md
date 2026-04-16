# Replace New Style classes with Old Style classes in IronPython | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/978036eb90e447b9aa9d8b6df778cdd7.html?locale=en-US&state=PRODUCTION&version=2603
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
Replace New Style classes with Old Style classes in IronPython
How to replace New Style classes with Old Style classes in IronPython?
This is required because of performance improvement and resource consumption IronPython engine has with new style classes.
Example:

*new style classes*



class Parent(object):
    def __init__(self, variable):
        self.variable = variable;

    def GetVariable(self):
        return self.variable

class Child(Parent):
    def __init__(self, variable):
        super(Child, self).__init__(variable);

    # call function from parent    
    def GetVariable(self):
        super(Child, self).GetVariable()

should be replaced with *old style classes*



class Parent:
    def __init__(self, variable):
        self.variale = variable;

    def GetVariable(self):
        return self.variable

class Child(Parent):
    def __init__(self, variable):
        Parent.__init__(self, variable);

    # call function from parent      
    def GetVariable(self):
        Parent.GetVariable(self)
On this page
How to replace New Style classes with Old Style classes in IronPython?
Example:
Yes
No