# User Administration - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/e6ab7c20370342afa0753cbd4ff1b57a.html#example-for-user-addministration-properties-xml
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
User Administration - Input Parameters

Tag

	

Data Type

	

Description

	

Required

	

Comments




Username

	

String (20)

	

Only SAP CPQ administrators can execute this function. SAP CPQ user is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator user name




Password

	

String (25)

	

Only SAP CPQ administrators can execute this function. Password is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator's password for the administrator user name provided in the username element




Action

	

String (50)

	

Action that will be executed for the user

	

Yes

	

Examples: - ADDORUPDATE - DELETE




UserProperties

	

XML

	

Object Passing User Data

	

Yes

	

The UserProperties XML structure is shown below

Data Definition for User Properties XML

Field Name

	

Description

	

Sample Data

	

Type

	

Size




USERNAME

	

User Name (once set does not change)

	

Jasmith123

	

Text

	 


TITLE

	

User Gender Title

	

Mr.

	

Text

	 


FIRSTNAME

	

User First Name

	

Joe

	

Text

	 


LASTNAME

	

User Last Name

	

Smith

	

Text

	 


TYPE

	

Group User Belongs To (must be pre-configured by SAP CPQ Administrator)

	

CD2

	

Text

	 


EMAILADDRESS

	

User E-Mail Address

	

Joe.smith@pac.com

	

Text

	 


ADDRESS1

	

User First Address Line

	

123 Letters Way

	

Text

	 


ADDRESS2

	

User Second Address Line

	

P.O. Box 123

	

Text

	 


CITY

	

User City

	

Mytown

	

Text

	 


STATE

	

User State

	

WI

	

Text

	 


ZIPCODE

	

User Zip Code

	

55555

	

Text

	 


COUNTRY

	

User Country/Region

	

United States

	

Text

	 


PHONENUMBER

	

User Phone Number

	

1E+10

	

Text

	 


FAXNUMBER

	

User FAX Number

	

8.889E+09

	

Text

	 


COMPANYCODE

	

Code of the Company User Belongs to (usually is the SAP number) Company must exist (be pre-configured by SAP CPQ administrator

	

9.99E+09

	

Text

	 


ISSSOUSER

	

Defines whether a user signs in with the Federated Single Sign-On method, or with a username and a password.

	

1, true, 0, false

	

Text

	 


DEFAULTDICTIONARY

	

Dictionary (can be set to be either system or custom)

	 	

Text

	 


ORDERINGPARENT

	

Ordering parent SAP CPQ user name

	

nzagorac

	

Text

	 


MANAGINGPARENT

	

Managing parent SAP CPQ user name

	

ppetrovic

	

Text

	 


APPROVEPARENT

	

Approving parent SAP CPQ user name

	

vzaric

	

Text

	 


CrmUserId

	

Integration user Id

	

WEBCOM/CLESAR@WEBCOMINC.COM

	

Text

	 


CrmName

	

CRM User name

	

WEBCOM/CLESAR@WEBCOMINC.COM

	

Text

	 


CrmUserName

	

Integration User name

	 	

Text

	 


CrmPassword

	

Integration password

	

webcom123

	

Text

	 

Example for User Addministration properties XML


<USERPROPERTIES>
  <USERNAME>ksmith</USERNAME>
  <PASSWORD AllowSameAsExisting="1">xdF5460Bf</PASSWORD>
  <TITLE>Mr.</TITLE>
  <FIRSTNAME>Kyle</FIRSTNAME>
  <LASTNAME>Smith</LASTNAME>
  <TYPE>Sales</TYPE>
  <EMAILADDRESS>ksmith@mycompany.com</EMAILADDRESS>
  <ADDRESS1>Summer Street</ADDRESS1>
  <ADDRESS2 />
  <ADMINISTRATOR>TRUE</ADMINISTRATOR>
  <CITY>New Berlin</CITY>
  <STATE>WI</STATE>
  <ZIPCODE>53151</ZIPCODE>
  <COUNTRY>United States</COUNTRY>
  <PHONENUMBER>262-785-8320</PHONENUMBER>
  <FAXNUMBER />
  <COMPANYCODE>SAP</COMPANYCODE>
  <MUSTCHANGEPASSWORD>0</MUSTCHANGEPASSWORD>
  <PASSWORDLOCKED>0</PASSWORDLOCKED>
  <DEFAULTDICTIONARY></DEFAULTDICTIONARY>
  <ORDERINGPARENT>jsmith</ORDERINGPARENT>
  <MANAGINGPARENT>msmith</MANAGINGPARENT>
  <APPROVINGPARENT>msmith</APPROVINGPARENT>
  <CrmUserId>SAP/CLESAR@SAP.COM</CrmUserId>
  <CrmName>SAP/CLESAR@SAP.COM</CrmName>
  <CrmUserName></CrmUserName>
  <CrmPassword>crm_123zfgTlm</CrmPassword>
  </USERPROPERTIES>

Details about each XML node in this example can be found in User administration API XML Details.

On this page
Data Definition for User Properties XML
Example for User Addministration properties XML
Yes
No