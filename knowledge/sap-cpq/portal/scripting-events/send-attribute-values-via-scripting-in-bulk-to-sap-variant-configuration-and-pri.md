# Send Attribute Values via Scripting in Bulk to SAP Variant Configuration and Pricing | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/17107ad3c1754ec8aae92b1e1739c4b5.html?locale=en-US&state=PRODUCTION&version=2603
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
Send Attribute Values via Scripting in Bulk to SAP Variant Configuration and Pricing

When you use scripting to modify attributes on a Variant Configuration product, you can send the changes to SAP Variant Configuration and Pricing in bulk, instead of individually after each change.

How-To Example
When sending attribute values to SAP Variant Configuration and Pricing in bulk via scripting, you can:

select, deselect, or reset attribute values, or

reset the entire configuration

Sample Code


b = ProductHelper.CreateProduct('CPS_BURGER').AddToQuote()
quote = context.Quote
Product = quote.GetItemByItemNumber(1).AsMainItem.Edit()

# Select attribute values
Product.SelectAttrValues('Garnish', 'F')
Product.SelectAttrValues('Second garnish', 'S')
Product.SelectAttrValues('Third garnish', 'T')

#Reset Atrributes
Product.ResetAttr("Third garnish")

# Deselect attribute values
Product.DeselectAttrValues('Second garnish', 'S')
Product.ApplyRules()
quote.AddItem(Product, 1)
Product = quote.GetItemByItemNumber(1).AsMainItem.Edit()

# Reset configuration
Product.ResetConfiguration()
quote.AddItem(Product, 1)
ApplyRules Method

Changes made on attributes via scripting are retained in system memory. To send them in bulk to SAP Variant Configuration and Pricing, you must call the method ApplyRules.

Note

This function of the method ApplyRules is implemented by default on new SAP CPQ domains after the 2202 release.

On previous domains, the old behavior, where the changes are sent individually after every selection, remains as the default setting. To enable the new behavior on older domains, please contact the SAP CPQ Support team.

Related Information
Variant Configuration Integration
On this page
How-To Example
Related Information
Yes
No