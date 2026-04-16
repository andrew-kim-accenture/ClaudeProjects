# ImportMaterialsFromERP SOAP API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/543ef25347df4317aaa69d090fb34c4b.html#dictionary-support
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


	
ImportMaterialsFromERP - Input Parameters
	
ImportMaterialsFromERP - Input XML Schema
	
ImportMaterialsFromERP - Input Examples
	
ImportMaterialsFromERP - Output XML Schema
	
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
ImportMaterialsFromERP SOAP API

The ImportMaterialsFromERP SOAP API is used for importing materials from back-end applications such as SAP ERP and SAP S/4HANA. Note that this API does not support standard SAP CPQ attributes.

Authentication

See SOAP API authentication.

Integrations
Variant Configuration

You can use the ImportMaterialsFromERP SOAP API whether or SAP CPQ is integrated with Variant Configuration.

You can manually set the flag isSyncedFromBackOffice through the payload sent to the ImportMaterialsFromERP endpoint for any product imported via this API.

Products imported via the API can be marked as isSyncedFromBackOffice even if they are not Variant Configuration products, in which case they will have the value Yes in the column Synced from Back Office in the Setup.

Note

Payloads created before the 2111 release of SAP CPQ (November 2021) contain the IsSapProduct flag instead of isSyncedFromBackOffice. Although the system is adapted to accept both flags, all payloads created after the 2111 release should contain the isSyncedFromBackOffice flag only.

SAP Billing Revenue and Innovation Management

If SAP CPQ is integrated with SAP Billing Revenue and Innovation Management, the ImportMaterialsFromERP API is used for replicating products into SAP CPQ.

All simple products arriving via this API that have the IsSubscription flag set to TRUE are automatically created as configurable products in SAP CPQ.

The API payload contains the system attributes Contract Duration and Billing Cycle, which are created on the product in SAP CPQ.

Dictionary Support
The ImportMaterialsFromERP SOAP API only supports one dictionary, and only the dictionary values (translations) in the default language are supported. The default language is tenant-specific. Unless it is configured differently for a specific tenant, the default language is the system dictionary with the lowest rank that has a default formula that evaluates to 1.
Note

You can use the ImportMaterialsFromERP SOAP API to add and update dictionaries using the dictionary system ID or the dictionary name.

On this page
Authentication
Integrations
Dictionary Support
Yes
No