# Use Quote Total custom calculations? | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/8e97bb39567943658af431056def08e5.html?locale=en-US&state=PRODUCTION&version=2603
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
Use Quote Total custom calculations?

An administrator can create Quote Total custom calculations by using scripting.

Main entity for this calculation type is Total (See Scripting.IQuoteTotal for available members.

Beside Total, Quote entity can be used (See Scripting.IQuote for available members).

Calculate Margin for Quote Total.

Example of Quote Total custom calculation.

For example, if Subtotal amount of Total is not zero, calculate Margin percent of Total as difference of Subtotal Amount and Cost of Total divided by absolute value of Subtotal Amount.



Total.MarginPercent = 0
if Total.SubtotalAmount != 0:
    Total.MarginPercent = 100 * (Total.SubtotalAmount - Total.Cost) / abs(float(Total.SubtotalAmount))

Total.MarginAmount = Total.SubtotalAmount - Total.Cost
Total.TotalMrcMarginPercent = 0

if Total.MrcSubtotalAmount != 0:
    Total.TotalMrcMarginPercent = 100 * (Total.MrcSubtotalAmount - Total.TotalMrcCost) / abs(float(Total.MrcSubtotalAmount))

Total.TotalMrcMarginAmount = Total.MrcSubtotalAmount - Total.TotalMrcCost

Yes
No