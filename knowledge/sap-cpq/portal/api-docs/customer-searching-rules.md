# Customer Searching Rules | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/e294a76b68824f64a00cd62cda62f843.html#related-information
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API


	
Simple Product Administration SOAP API
	
Customer Administration SOAP API


	
Customer Administration-Input Parameters
	
Customer Administration - Output Parameters
	
Customer Administration Details
	
Customer Administration Execution Workflow
	
Customer Searching Rules
	
Customer Updating Rules
	
Input XML Schema - Customer Administration
	
Output XML Schema - Customer Administration
	
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
Customer Searching Rules

There are two scenarios for performing the search.

There are no SearchFields provided: ID and ExternalID have priority successively. If ID is provided, the customer will be searched by SAP CPQ ID, and External ID will be ignored. If the value of the ID field is empty, ExternaID will be used for the search.

We have two cases if SearchFields are provided, depending on Priority attribute of SearchFields node:

Priority = “1”; the search will be performed as a combination of the fields that are provided as search fields. If the search fails (returns none or multiple Customers), the search will be tried again like described in scenario #1.

Priority has any other value; first, the search will be tried like described in scenario #1. If search fails, the search will be performed as a combination of the fields that are provided as search fields. If a value for a search field is missing or empty, it will be omitted from search condition.

Search Tips and Tutorials

Currently, the SAP CPQ API Customer Administration does not support having more than one custom field in the “search custom field” section. The custom field specified in the search section must be added for each customer in the XML file respective to their custom field list; otherwise, when importing the XML an error message will pop up.

Actions delete, update and addupdate work only with a single customer at one given time. If using search parameters we don’t find one distinct customer, or we find more than one, the specified search field is overrun and search parameters are defined by the customer’s ID or ExternalID.

When using this type of search, the first customer that the system finds will be returned by his ID. If the customer is not found, the customer will be searched by his ExternalID. Regardless of values entered in other search fields, the system will return the first customer it finds. If, after completing our search, we still cannot find a single customer, an error message will pop up – except for add action for which the system does not use the search function

To avoid any accidental updates or customer deletes, the search field and parameters should be picked for their respective values so that only a single customer will be affected by these actions. This isn’t as easy because only the SAP CPQ ID is a valid identifier of a single customer. In other words, there is a possibility that a combination of other search fields can return more than one customer.

SoapUI seems to interpret spaces and new line characters a bit differently than other API App so this should be written in the same line as follows: Instead of these lines in XML



<CustomFields>
                          <CustomField>
                            <Name>JasonTest</Name>
                            <Value>Hello</Value>
                         </CustomField>
                      </CustomFields>

add



<CustomFields><CustomField><Name>JasonTest</Name><Value>Hello</Value></CustomField></CustomFields>


* all in one line with no spaces

Related Information
SOAP API Authentication
On this page
Search Tips and Tutorials
Related Information
Yes
No