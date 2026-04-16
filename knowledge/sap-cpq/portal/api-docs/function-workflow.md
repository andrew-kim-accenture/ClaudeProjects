# Function Workflow | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/dcf2f5c26a3f4ae58de8f54ebbf66186.html?locale=en-US&state=PRODUCTION&version=2603
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
Function Workflow

The supplied username and password are checked for security reasons.

The username node is checked to see if it contains value, because it is a required field. If username node is left empty, the API call will end, and the NOK result xml will be returned to caller.

The action node is parsed. If the action is “DELETE” then the API will try to delete the supplied user from DB. Whether delete succeeds or not, the resulting XML will contain OK or NOK result.

If the action is ADDORUPDATE or ADD or UPDATE, the API will do the following:

The supplied username is used to find existing user in cpq DB.

If the action is update, and the user with supplied username does not exist in SAP CPQ database, the API call will fail, and the caller will get the response XML with error message.

If the user is found, this user is going to be updated with new supplied XML data.

If the user with given username already exists, and the action is ADD, the existing user will be updated with new supplied data, so there is no way to create two users with same username.

If the user is not found, and the action is ADDORUPDATE or ADD, the new user will be created using new supplied XML data, and given username.

The input XML is deserialized to SAP CPQ user object.User's name property will be deserialized to combination of first name and last name from input XML. If updating existing user, this will happen only if name property is empty on the existing user that is being updated. While deserializing, ordering parent / managing parent / approving parent user names are checked in SAP CPQ system. (These nodes should contain SAP CPQ usernames). If any of these is supplied wrong, the API call will fail, and the XML returned to caller will contain an error message specifying that the error occurred while trying to find specified parent username in SAP CPQ system. This same workflow applies if XML contains invalid company code or user type – when it's invalid, the API call will fail and the caller will get the xml result describing the error.

Note about treating empty nodes while deserializing:When an empty node is supplied, and API is updating an existing user, the user data from all nodes (even empty ones) will overwrite old user data. Overwriting user's values with empty data is however, not the case with required fields. If supplying empty nodes which are required, the API call will fail. If omitting not required node values, they will not overwrite old user's fields. When empty nodes are supplied, and API is creating new user, the user will be created, having values as specified in input XML. However, API call will fail if any of the required nodes has no value in input XML.

The SAP CPQ user object is deserialized to appropriate table row

Users table is being updated with new row data if API is updating existing user, or the table is being appended with new data if API is creating new user.

If no errors occurred during API call, the OK result XML will be returned to caller. Otherwise, the NOK result XML will be returned, with information about the error.

Possible errors:

The username and/or password used for authentication are incorrect

The username is not present in input XML

The action is not supplied to API

The user type node is left blank or supplied wrong.

Any of the required nodes are supplied blank, or omitted from input XML.

E-mail address is supplied in a non standard format. (invalid e-mail address).

Ordering parent / managing parent / approving parent nodes are supplied with wrong data (user names that do not exist in SAP CPQ system).

Company code is supplied wrong in input xml.

Yes
No