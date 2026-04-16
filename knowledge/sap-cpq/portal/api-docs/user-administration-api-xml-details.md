# User administration API XML Details | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/5dc168613d00420987dd7c7312a83834.html?locale=en-US&state=PRODUCTION&version=2603
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
User administration API XML Details

<USERNAME>

This node is required.

This node should contain the desired username.

If this node is missing and the API is adding a new user, the API call will fail and the XML with error will be sent to the caller.

If this node is missing and the API is updating an existing user, the existing user's username will remain as it was before the API call.

If this field is left blank, the API call will fail and the result containing error will be sent to the API caller.

<PASSWORD>

The user's password will be set to the text value of this node.

The password must meet the following rules:

The password must be between 8 and 50 characters long;

The password must not contain a username;

The password must not contain the previous password;

The password must contain only alphabetic and numeric characters.

The AutoGenerateForNew attribute generates new passwords for new users. Passwords are not updated for existing users via this attribute.

If you are creating a new user, this node is required.

If you want to update a user, you can exclude this node so that the password for the existing users remains the same.

If you are not sure if the user already exists, you will use the ADDORUPDATE action. In this case, you must provide the <PASSWORD> node. In addition, you must provide an attribute AllowSameAsExisting with value 1 for the node <PASSWORD>. This way, you are making sure you are providing the user's existing password if the user exists. If the user does not exist, a new user will be created with the provided password.

If this node is supplied empty, no matter what the action is, the API call will fail and the caller will receive XML with an error message. You cannot erase the user's password, nor can you create a user with an empty password.

If you want to create a new user without providing a password, you need to use one of the following formats in the <PASSWORD> node: <PASSWORD AutoGenerate=“1”/> or <PASSWORD AutoGenerate=“1”></PASSWORD>. When you use one of the aforementioned formats in the <PASSWORD> node, SAP CPQ generates a random password. You can also use <PASSWORD AutoGenerate=“1”>RandomPassword</PASSWORD> for the <PASSWORD> node. In this case, SAP CPQ overrides RandomPassword by automatically generating a password.

<TITLE>

This node is not required.

The user's title will be set to the text value of this node.

If this node is left empty, the user will have the title set to blank.

If this node is not present in the input XML, and the API is updating the existing user, the existing user will preserve the original title.

<FIRSTNAME>

This node is required.

The user's first name will be set to the text value of this node.

If this node is not present in the input XML, and the API is updating the existing user, the user will preserve the original first name.

If this node is left empty, the API call will fail, and the result XML with error code will be sent to the API caller. You cannot erase user's first name, as it is a required field.

If this node is not present and the API is adding a new user, the API call will fail, and the caller will get resulting XML with an error message.

<LASTNAME>

This node is not required.

The user's last name will be set to the text value of this node.

If this node is left empty, the user will have the last name set to blank.

If this node is not present in the input XML, and the API is updating the existing user, the user will preserve the original last name.

<TYPE>

This node is required.

The user's group will be set according to the value of this node.

If the user group with a supplied name does not exist in SAP CPQ DB, the API call will fail and the caller will get XML with an error message.

If this node is left empty, the API call will fail, and the caller will get XML with an error message.

If this node is not present in the input XML, and the API is updating an existing user, the user will preserve the original user group.

If this node is not present in the input XML, and the API is adding a new user, the call will fail, and the caller will get XML with an error message.

<EMAILADDRESS>

This node is not required.

The user's email address will be set to the text value of this node.

If the supplied e-mail address is invalid, the API call will fail, and the caller will get XML response with an error message.

If this node is left empty, the user will have the email address set to blank.

If the API is updating an existing user, and the input XML does not contain this node, the existing user will preserve the original e-mail address.

<ADDRESS1>

This node is not required.

The user's address 1 will be set to the text value of this node.

If this node is left empty, the user will have the address 1 set to blank.

If the API is updating an existing user, and this node is not present in the input XML, the existing user will preserve the original address 1.

<ADDRESS2>

This node is not required.

The user's address 2 will be set to the text value of this node.

If this node is left empty, the user will have the address 2 set to blank.

If the API is updating an existing user, and this node is not present in the input XML, the existing user will preserve the original address 2.

<CITY>

This node is not required.

The user's city will be set to the text value of this node.

If this node is left empty, the user will have the city set to blank.

If the API is updating an existing user, and this node is not present in the input XML, the existing user will preserve the original city.

<STATE>

This node is not required.

Two-letter abbreviation for user's state.

The user's state will be set to the text value of this node.

If this node is left empty, the user will have the state set to blank.

If the API is updating an existing user, and this node is not present in the input XML, the existing user will preserve the original state.

<ZIPCODE>

This node is not required.

The user's zip code will be set to the text value of this node.

If this node is left empty, the user will have the zip code set to blank.

If the API is updating an existing user, and this node is not present in the input XML, the existing user will preserve the original zip code.

<COUNTRY>

This node is required.

The user's country/region will be set to the text value of this node.

The user’s country/region can be represented either as a two-letter country/region code, a three-letter country/region code or the full name of the country/region.

If this node is left empty, the API call will fail, and the caller will get XML with an error message. You cannot erase a user's country/region.

If the API is updating an existing user, and this node is not present in the input XML, the user will preserve the original country/region.

If the API is adding a new user, and this node is not present in the input XML, the API call will fail, and the caller will get XML with an error message.

<PHONENUMBER>

This node is not required.

The user's phone number will be set to the text value of this node.

If this node is left empty, the user will have the phone number set to blank.

If the API is updating an existing user, and this node is not present in the input XML, the existing user will preserve the original phone number.

<FAXNUMBER>

This node is not required.

The user's fax number will be set to the text value of this node.

If this node is left empty, the user will have the fax number set to blank.

If the API is updating an existing user, and this node is not present in the input XML, the existing user will preserve the original fax number.

<COMPANYCODE>

This node is required.

This node represents the code of the company the user belongs to.

If the company with a supplied code does not exist in SAP CPQ, the API call will fail, and the caller will get XML with an error message.

If this node is left blank, the API call will fail, and the caller will get XML with an error message. You cannot erase a user's company code.

If the API is updating an existing user, and this node is not present in the input XML, the existing user will preserve the original company code.

If the API is adding a new user, and this node is not present in the input XML, the API call will fail, and the caller will get an XML response with an error message.

If the company code is not recognized in SAP CPQ, the API call will fail, and the caller will get XML containing an error message.

<DEFAULTDICTIONARY>

This node is not required.

When the node is not provided or is provided empty, the system assigns the default system dictionary to the newly created user.

To assign a specific system dictionary, include the name of the dictionary in the node (for example, <DEFAULTDICTIONARY>NameofSystemDictionary</DEFAULTDICTIONARY>).

To assign a custom dictionary, include isCustom=“true” in the node (for example, <DEFAULTDICTIONARY isCustom=“true”>NameofCustomDictionary</DEFAULTDICTIONARY>).

<ORDERINGPARENT>

This node is not required.

The user's ordering parent will be set according to this node's value.

This node's value should contain the ordering parent's username from SAP CPQ.

If the ordering parent's username is not found in SAP CPQ DB, the API call will fail, and the caller will get XML with an error message.

If the API is updating an existing user, and this node is not present in the input XML, the existing user will preserve the original ordering parent.

If this node is left blank, the user's ordering parent will be erased (or not saved if adding a new user).

<MANAGINGPARENT>

This node is not required.

The user's managing parent will be set according to this node's value.

This node's value should contain the managing parent's username from SAP CPQ.

If the managing parent's username is not found in SAP CPQ DB, the API call will fail, and the caller will get XML with an error message.

If the API is updating an existing user, and this node is not present in the input XML, the existing user will preserve the original managing parent.

If this node is left blank, the user's managing parent will be erased (or not saved if adding new user).

<APPROVINGPARENT>

This node is not required.

The user's approving parent will be set according to this node's value.

This node's value should contain the approving parent's username from SAP CPQ.

If the approving parent's username is not found in SAP CPQ DB, the API call will fail, and the caller will get XML with an error message.

If the API is updating an existing user, and this node is not present in the input XML, the existing user will preserve the original approving parent.

If this node is left blank, the user's approving parent will be erased (or not saved if adding a new user).

<CrmUserId>

This node is not required.

If this node is left blank or does not exist, the Integration User Id will be erased (or not saved if adding a new user).

<CrmName>

This node is not required.

If this node is left blank or does not exist, the CRM User name will be erased (or not saved if adding a new user).

<CrmUserName>

This node is not required.

If this node is left blank or does not exist, the Integration User name will be erased (or not saved if adding a new user).

<CrmPassword>

This node is not required.

If this node is left blank or does not exist, the Integration password will be erased (or not saved if adding a new user).

Note

At least one of the CRM user mapping nodes needs to be present in order to create/update CRM user mappings. In addition, CRM integration needs to be enabled in administration (any setting other than None).

Yes
No