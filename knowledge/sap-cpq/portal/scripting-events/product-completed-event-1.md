# Product completed event | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/b764a98da19b4b7aa5579eec8b4b11d0.html?locale=en-US&state=PRODUCTION&version=2603
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
Product completed event

An administrator can invoke script when product is completed in the configurator.

Populate container row with weather information on product completed event

Create new container row with weather data received from external webservice when product is completed in the configurator.

System calls webservice by providing current country/region zip code from free from attribute.

Weather data is received from webservice Weather as following XML:



<WeatherReturn xmlns="http://ddue.schemas.microsoft.com/authoring/2003/5"><Success>true</Success><ResponseText>City Found</ResponseText><State>NY</State><City>New York</City><WeatherStationCity>White Plains</WeatherStationCity><WeatherID>11</WeatherID><Description>Clear</Description><Temperature>11</Temperature><RelativeHumidity>54</RelativeHumidity><Wind>W7</Wind><Pressure>30.22F</Pressure></WeatherReturn>



ws = WebServiceHelper.Load("http://wsf.cdyne.com/WeatherWS/Weather.asmx")
item = ws.GetCityWeatherByZIP(Product.Attributes.GetByName("Country Zip Code").GetValue())

container = Product.GetContainerByName("Current Weather Container");

if container is not None and item.Success == "true":
    row = container.AddNewRow();
    row["City"] = item.City
    row["Temperature"] = item.Temperature
    row["Relative Humidity"] = item.RelativeHumidity
    row["Wind"] = item.Wind
    row["Pressure"] = item.Pressure


Populate container rows with several asset data on product completed event

Create new container rows with asset values received from external webservice when product is completed in the configurator.

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
ws = WebServiceHelper.Load("http://calliduslocal/AssetData.asmx");
licenceWS = WebServiceHelper.Load("http://locallicences/Licences.asmx");
data = ws.GetAssets("OPPORTUNITY1");

container = Product.GetContainerByName("Assets");

for item in data:
    if container is not None:
        row = container.AddNewRow();
        row["PartNumber"] = item.PartNumber;
        row["LicenceKey"] = licenceWS.GetLicence(item.PartNumber);
        row["RenewalDate"] = str(DateTime.Now);

Populate container column on product completed event

Create new container row with value received from custom table 'Prices', based on part number received from other container column 'PartNumber'.

Container row is created based on system id of the product which container is using.



container = Product.GetContainerByName("Assets")
if container is not None:
    row = container.AddNewRow("A004_Product_cpq")
    query = SqlHelper.GetFirst("SELECT Price FROM Prices WHERE PartNumber='" + row["PartNumber"] + "'")

    if query is not None:
        row["Price"] = str(query.Price)

Yes
No