# Retrieve generated documents | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/9685d6b320d545318a1eca2d23d690a7.html?locale=en-US&state=PRODUCTION&version=2603
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
Retrieve generated documents
How to retrieve generated documents?

For each CPQ quote, there may or may not be generated documents. Documents created can be accessed through the tab “Documents” on the Quote page. Each generated document has a name, quote number, date created and other properties. Retrieving documents through the web browser is straightforward.

When it comes to retrieving the last generated document for a particular quote via the API, three methods (listed below) are available:



GetLatestGeneratedDocumentStream()
GetLatestGeneratedDocumentInBytes()
GetLatestGeneratedDocumentFileName()

The challenge with using any of these three methods is that they only reference the latest generated document. They cannot retrieve previously generated documents. GetGeneratedDocumentList() method is used to retrieve the list of all generated documents for a particular quote along with data about each document. You can use this method no matter if you want to retrieve all the generated documents or just the documents that were generated using a particular template. In the first scenario you should call a non-parametrized method - GetGeneratedDocumentList(), while in the second scenario GetGeneratedDocumentList(string templateName) is used. The parameter is the name of the template that was used to generate the document.

This method returns a list of generated documents, ordered by document creation timestamp in descending order. The most recent document will be at the top of the returned list. This method also returns additional data about each generated document, including:

File name

User id

Cart id

Date Created

Document as array of bytes

Document stream

Template name

Example 1 demonstrates how an Iron Python script uses the GetGeneratedDocumentList() method of API.

Example 1

It is assumed that the list of generated documents should be returned no matter what template was used to generate the document. Therefore, the Iron Python script retrieves all of the documents, traverses the list and traces the information.



documents = Quote.GetGeneratedDocumentList()
    for document in documents: 
    Trace.Write(document.FileName)
    Trace.Write(document.UserId)
    Trace.Write(document.CartId)
    Trace.Write(document.TemplateName)
    Trace.Write(document.Id)
    Trace.Write(document.DateCreated)
    Trace.Write(document.GetStream())
    Trace.Write(document.GetBytes())
Example 2

This example shows how to retrieve only the documents that were generated using the template named “Sample”, and how to filter the list to display only the first one (the most recent). System.Linq namespace should be imported so the method First() can be used to filter the list easier.



templateName = “Sample”
document = Quote.GetGeneratedDocumentList(templateName)[0]
Trace.Write(document.FileName) Trace.Write(document.UserId) Trace.Write(document.CartId) Trace.Write(document.TemplateName) Trace.Write(document.Id) 
Trace.Write(document.DateCreated) Trace.Write(document.GetStream()) Trace.Write(document.GetBytes())

On this page
How to retrieve generated documents?
Example 1
Example 2
Yes
No