# General Deserialization Rules | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/2392efa311f24c8a8785342d1fb00e8b.html?locale=en-US&state=PRODUCTION&version=2603
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


	
User Administration - Input Parameters
	
User Administration - Output Parameters
	
Function Workflow
	
General Deserialization Rules
	
Input XML Scheme - User Administration
	
Output XML Scheme - User Administration
	
Managing User Custom Fields via API Method
	
User administration API XML Details
	
XML Definition
	
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
General Deserialization Rules

This section describes process of deserialization of the input XML.

Depending of the API action (DELETE/ADD/UPDATE/ADDORUPDATE), the input XML is treated differently. If the action is ADD, all nodes that are described as required in below section, are really in need to be present in input XML. When action is UPDATE, the required nodes can be omitted from input XML. However, if these nodes are present in input XML, they must not be empty. If the action is ADDORUPDATE and the existing user is being updated, the required nodes can be omitted. In that case, the existing user will preserve previous value for that node. However, if the action is ADDORUPDATE and the new user is being created, the API call will fail if a required node is not supplied.

Every node from input XML is being copied to respective SAP CPQ user field. If the node is not present in input XML, it will not be copied, and the respective user's field will remain as it was before API call. So, omit the node if you don't want to affect its previous content. If the node is present, and if it is empty (has no content), it will erase respective user's field. If the node is required, and is supplied empty, the API call will fail, and the caller will get the XML response with error message. Required fields cannot be erased from existing users, and no new users can be created without setting required fields. If the node is required, and is not supplied in input XML, and the action is UPDATE, the user will preserve his original respective field. However, if the action is ADD, the API call will fail, returning the XML to the caller, with error message. For ADD, the required nodes must be present. ADDORUPDATE allows the nodes to be absent, but the API call will fail, if ADDORUPDATE action is creating new user and not updating existing one. In that case, the caller will receive result XML with error message.

The nodes that should contain boolean values accept only '1' , '0', 'true' and 'false' values.

Yes
No