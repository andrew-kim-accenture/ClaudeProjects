# Managing User Custom Fields via API Method | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/f6e815ed63f14da4ad90c2af8f870abb.html?locale=en-US&state=PRODUCTION&version=2603
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
Managing User Custom Fields via API Method

The node <CustomFields> is not required and may have children where custom fields are specified:



<CUSTOMFIELD>
          <NAME>CUSTOMFIELDSNAME</NAME>
          <VALUE>CUSTOMFIELDVALUE</VALUE>
        </CUSTOMFIELD

SAP CPQ will look for specified custom fields and assign values accordingly.

SAP CPQ will not update custom fields nor delete their content during user update unless this has been specified in XML.

SAP CPQ

If the provided custom field is not recognized in SAP CPQ, the following message will pop up Specified Custom Field ‘Street 3’ doesn’t exist in the system.

The response will be as follows:



<RESPONSE XMLNS="">
  <RESULT>NOK</RESULT> 
  <ERROR>
        <CODE>103005</CODE>
        <MESSAGE> SPECIFIED CUSTOM FIELD 'STREET 3' DOESN'T EXIST IN THE SYSTEM</MESSAGE>
  </ERROR>
  </RESPONSE>


The following is an input XML sample that can be used when calling the API Method for updating custom fields:



<USERPROPERTIES>
   <USERNAME>AOSHEPAR</USERNAME>
   <PASSWORD>EASUP4SSW0RD</PASSWORD>
   <TITLE>MR.</TITLE>
   <FIRSTNAME>ADAM</FIRSTNAME>
   <LASTNAME>SHEPARD</LASTNAME>
   <TYPE>BU DRIVES</TYPE>
   <EMAILADDRESS>ADAM.O.SHEPARD@US.ACME.COM</EMAILADDRESS>
   <ADDRESS1>16250 W GLENDATE DR</ADDRESS1>
   <ADDRESS2 />
   <CITY>NEW BERLIN</CITY>
   <STATE>WI</STATE>
   <ZIPCODE>53151</ZIPCODE>
   <COUNTRY>UNITED STATES</COUNTRY>
   <PHONENUMBER>111222333</PHONENUMBER>
   <FAXNUMBER />
   <COMPANYCODE>ACME</COMPANYCODE>
   <MUSTCHANGEPASSWORD>0</MUSTCHANGEPASSWORD>
   <PASSWORDLOCKED>0</PASSWORDLOCKED>
   <ORDERINGPARENT>NZAGORAC</ORDERINGPARENT>
   <MANGAGINGPARENT>PPETROVIC</MANGAGINGPARENT>
   <APPROVINGPARENT>VZARIC</APPROVINGPARENT>
   <CRMUSERID>WEBCOM/CLESAR@WEBCOMINC.COM</CRMUSERID>
   <CRMNAME>WEBCOM/CLESAR@WEBCOMINC.COM</CRMNAME>
   <CRMUSERNAME></CRMUSERNAME>
   <CRMPASSWORD>WEBCOM123</CRMPASSWORD>
   <CUSTOMFIELDS>
     <CUSTOMFIELD>
       <NAME>STREET 3</NAME>
       <VALUE>YONGE STREET</VALUE>
     </CUSTOMFIELD>
     <CUSTOMFIELD>
       <NAME>CELL PHONE NUMBER</NAME>
       <VALUE>4422445666</VALUE>
     </CUSTOMFIELD>
   </CUSTOMFIELDS>
  </USERPROPERTIES>
Note

Keep in mind that XML is case sensitive. This means that the node names written in uppercase and lowercase letters will not accomplish the same results. The convention of the Simple User API calls should be created in the uppercase letters.

Yes
No