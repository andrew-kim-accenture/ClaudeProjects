# Common properties | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/394518f3ad824fd991287c02fc3490e0.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Event Pipeline in Quote 1.0
	
Event Pipeline in Quote 2.0
	
Script Performance
Common properties

There are common properties available for all the scripts, used to access the current context (user data, quote data, and so on).

Additional properties may depend on execution type (see Additional properties available in scripting in Iron Python Events).

The common properties are listed below.

Quote of type Scripting.IQuote, this property is available only when the quote is loaded and used to access quote data.

User of type Scripting.IUser, used to access current logged-in user data.

TagParserProduct of type Scripting.ITagParserProduct, used to parse product tags.

TagParserQuote of type Scripting.ITagParserQuote, used to parse quote tags.

SqlHelper of type Scripting.ISqlHelper, used to access custom tables data.

WebServiceHelper of type Scripting.IWebServiceHelper, used to call external web services.

XmlHelper of type Scripting.IXmlHelper, helps with manipulating XML documents.

Yes
No