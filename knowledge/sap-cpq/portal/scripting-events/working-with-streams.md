# Working with Streams | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/e0f8124c42554027beabe813e9ade2ef.html?locale=en-US&state=PRODUCTION&version=2603
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
Working with Streams

IronPython SAP CPQ API supports working with StreamReader. At some point, you might need to extract some data from stream, e.g. error details in case of exception during REST API call:



try:
response = webclient.UploadString(API_URL + API_PATH, str(requestdata))
except System.Net.WebException, e:
    if e.Response is not None:
        streamR = StreamReader(e.Response.GetResponseStream())
        Trace.Write(streamR.ReadToEnd())
        streamR.Close()

Like shown in example above, you can instantiate StreamReader and read content of the underlying stream, which was provided as an argument.

Due to security reasons you can't manually create any type of Stream (e.g. FileStream, MemoryStream etc.).

StreamReader wrapper supports most of the native methods/constructors:



void Close()
void DiscardBufferedData()
int Peek()
int Read()
int Read(char[] buffer, int index, int count)
int ReadBlock(char[] buffer, int index, int count)
string ReadLine()
string ReadToEnd()
void Dispose()

And variations of constructors which accept System.IO.Stream or System.IO.StreamReader instances. For more details on using each of these methods, see official MSDN link.

Yes
No