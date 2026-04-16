# SOAP API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/c890f71f1c2e4fe2b96accb7c109fa9f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API


	
Simple Product Administration SOAP API
	
Customer Administration SOAP API
	
User Administration SOAP API
	
ImportMaterialsFromERP SOAP API
	
Company Administration SOAP API
	
Link Opportunity SOAP API
	
Custom Table Administration SOAP API
	
Get Catalogue Data SOAP API
	
Get Quote Data SOAP API
	
Get Quote Items Attributes SOAP API
	
Request for Quotation SOAP API
	
Search Quotes SOAP API
	
Search Quotes from SF SOAP API
	
New Quote SOAP API
	
Place Order SOAP API
	
Validate Catalogue Codes SOAP API
	
Get Cart Properties SOAP API
	
Get Cart Actions SOAP API
	
Perform Cart Action SOAP API
	
Add Items Data SOAP API
	
Perform Quote Action SOAP API
	
Set Cart Properties SOAP API
	
Set Cart Properties For Every Quote In Opportunity SOAP API
	
Set Cart Item Properties SOAP API
	
Create New Quote and Get Quote Data SOAP API
	
SOAP API Authentication
	
SOAP API Error Codes
	
Pricing API
	
DoYouSeeMe API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
SOAP API

SOAP API messages are in the XML format and are typically sent over the HTTPS protocol. You can use this API to create, retrieve, update or delete system and custom entities in SAP CPQ.

With SOAP API, you can:

Create, manage or delete products

Create, manage or delete customers

Create, manage or delete users

Import materials from back-end applications like SAP ERP and SAP S/4HANA

Create, manage or delete companies

Link an SAP CPQ quote to a CRM opportunity

Create, manage or delete custom tables

Retrieve a hierarchical overview of the catalog

Retrieve general quote data (main/line items, actions, key attributes, product types, promo codes, additional discounts, markets, shippings, customer data and custom fields)

Retrieve attributes from the specified quote

Create a new quote in the context of the SAP Commerce Cloud Integration with Variant Configuration configurable products

Retrieve quotes from SAP CPQ based on the provided search criteria

Retrieve quotes from SAP CPQ based on the provided search criteria (authentication is performed with the session ID and API URL received from the Salesforce)

Create a quote, billing info, shipping info, end user info, quote properties, and set attributes

Create a quote, billing info, shipping info, end user info, quote properties, calculate the shipping method, and execute the Place Order action

Execute reverse search on the supplied part numbers

Retrieve values for the specified quote properties

Retrieve the available actions for the specified quote and username, based on the quote's status

Perform a workflow action

Add/update quote/order items data

Perform any action on a quote

Set up or update custom fields on a quote

Set up or update custom fields for every quote in the opportunity

Update the value of custom fields on quote items

Create a new quote and retrieve quote details

Test whether the credentials you're using in the API call form an external system are valid

Create, delete or modify pricebooks

SOAP API consumers need to be authenticated before they can access and modify the data in SAP CPQ. Once you establish authentication with a SOAP envelope containing your credentials, you don't need to authenticate yourself again in any of the subsequent API calls.

Yes
No