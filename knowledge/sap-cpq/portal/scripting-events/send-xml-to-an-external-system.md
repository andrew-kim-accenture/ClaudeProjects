# Send xml to an external system | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/d4fe4f7553b446d0971806c55521460b.html?locale=en-US&state=PRODUCTION&version=2603
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
Send xml to an external system
How to send xml to an external system?
An administrator can send xml to an external system through scripting.
Examples

Create xml, send it to a web service and store response in a custom field.

Xml can be created through scripting in two ways (see the examples below to find out how to create xml).

For more details see Scripting.IXmlHelper. This is only an example web service.



node1 = XmlHelper.CreateXmlNode("Street", "1234 Fake street")
node2 = XmlHelper.CreateXmlNode("City", "San Diego")
node3 = XmlHelper.CreateXmlNode("State", "CA")
node4 = XmlHelper.CreateXmlNode("Postal", "90362")

nodeAddress = XmlHelper.CreateXmlNode("Address", node1, node2, node3, node4)
nodePhone = XmlHelper.CreateXmlNode("Phone", "414-273-4442")
nodeName = XmlHelper.CreateXmlNode("Name", "John Smith")

nodeUser = XmlHelper.CreateXmlNode("User", nodeName, nodePhone, nodeAddress)

nodeUsers = XmlHelper.CreateXmlNode("Users", nodeUser)

ws = WebServiceHelper.Load("http://webcomlocal/UserData.asmx");           

Quote.GetCustomField("User Info").Content = ws.Update(nodeUsers)


The following code is an example of created xml:



<Users xmlns=""><User><Name>John Smith</Name><Phone>414-273-4442</Phone><Address><Street>1234 Fake street</Street><City>San Diego</City><State>CA</State><Postal>90362</Postal></Address></User></Users>


This is another example for xml creation. Xml is created from System.String which nodes are populated by user and quote data. For more details, see Scripting.IXmlHelper. This is only an example web service.



xmlString = "<?xml version='1.0' encoding='UTF-8'?>" + \
"<DataRoot xmlns="http://ddue.schemas.microsoft.com/authoring/2003/5"><User><Name>" + User.Name + "</Name><Email>" + \
User.Email + "</Email><Company><Name>" + User.Company.Name + \
"</Name><City>" + User.Company.City + "</City></Company>" + \
"</User><Quote><QuoteNumber>" + Quote.CompositeNumber + \
"</QuoteNumber></Quote></DataRoot>"

x = XmlHelper.Load(xmlString)

ws = WebServiceHelper.Load("http://webcomlocal/UserData.asmx")

Quote.GetCustomField("User Info").Content = ws.Update(x)


Following code is an example of created xml:



<DataRoot xmlns=""><User><Name>John Smith</Name><Email>support@webcominc.com</Email><Company><Name>SAP</Name><City /></Company></User><Quote><QuoteNumber>00021343</QuoteNumber></Quote></DataRoot>

On this page
How to send xml to an external system?
Examples
Yes
No