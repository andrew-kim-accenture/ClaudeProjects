# Product completed event | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/8b602f9ab1c74f158f3809dec7498b31.html?locale=en-US&state=PRODUCTION&version=2603
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
Product completed event
Product Completed event

An administrator can invoke script on product completed event in the configurator.

Examples

Populate container rows on product completed event

Create new container rows with asset values received from external webservice on the product completed event in the configurator.

Asset data is recevied by providing opportunity name to the example webservice AssetData.

Licence key is recevied from other webservice Licences, which is returning value based on item part number.

Renewal Data column is populated with current date/time.

Asset is received from webservice AssetData as following XML:



<ArrayOfTestObject xmlns="http://ddue.schemas.microsoft.com/authoring/2003/5"><TestObject><PartNumber>PN-001</PartNumber><OpportunityId>OPPORTUNITY1</OpportunityId></TestObject><TestObject><PartNumber>PN-002</PartNumber><OpportunityId>OPPORTUNITY1</OpportunityId></TestObject></ArrayOfTestObject>



ws = WebServiceHelper.Load("http://webcomlocal/AssetData.asmx");
licenceWS = WebServiceHelper.Load("http://locallicences/Licences.asmx");
data = ws.GetAssets("OPPORTUNITY1");

container = Product.GetContainerByName("Assets");

for item in data:
    if container is not None:
        row = container.AddNewRow();
        row["PartNumber"] = item.PartNumber;
        row["LicenceKey"] = licenceWS.GetLicence(item.PartNumber);
        row["RenewalDate"] = str(DateTime.Now);
On this page
Product Completed event
Examples
Yes
No