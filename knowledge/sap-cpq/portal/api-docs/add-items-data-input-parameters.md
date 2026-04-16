# Add Items Data - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/eb7a3799da0f4fae83fe9c50d1781bba.html#input-xml-example
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


	
Add Items Data - Input Parameters
	
Input XML Schema - Add Items Data
	
Output XML Schema - Add Items Data
	
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
Add Items Data - Input Parameters
Tag	Data Type	Description	Required	Comments


Username

	

String (20)

	

Only SAP CPQ users can execute this function. SAP CPQ user is defined in SAP CPQ Setup.

	

Yes

	

Username of API user




Password

	

String (25)

	

Only SAP CPQ users can execute this function. Password is defined in SAP CPQ Setup.

	

Yes

	

Password of API user




OrderID

	

Number (8)

	

Order# (8-digit number)

	

Yes

	

SAP CPQ System quotation number




ERPOrderID

	

String (255)

	

External System (ERP) Order Number assigned to the SAP CPQ OrderID

	

No

	 


ItemObjects

	

XML

	

Object passing Item(s) Data

	

Yes

	

The Items Object XML structure is shown below

ItemObjects XML definition
Element Name	Data Type	Description	Required	Comments


ItemObjects

	 	

Only SAP CPQ users can execute this function. SAP CPQ user is defined in SAP CPQ Setup.

	

Yes

	 


ItemObject

		

There will be one ItemObject node for each Item on the order function. Password is defined in SAP CPQ Setup.

	

Yes

	

If Order has 3 Items, there will be 3 <ItemObject> nodes




ItemID

	

Number (5)

	

Order Item Number

	

Yes

	 


ItemDetail

	

String (255)

	

There will be one ItemDetail node for each quantity for the Item

	

Yes

	

If the Item qty is 5, there will be 5 <ItemDetail> nodes




ItemSequence

	

Number (8)

	

Item Sequence Number

	

Yes

	 


SerialNumberEach

	

String (255)

	

(Phantom/SubItem) Serial Number

	

No

	 


TrackingNumber

	

String (255)

	

Tracking Number

	

No

	 


TrackingURL

	

String (255)

	

Tracking URL

	

No

	 


EstimatedShipDate

	

Date

	

Estimated Ship Date

	

No

	 


ActualShipDate

	

Date

	

Actual Ship Date

	

No

	 


LicenseKeyNumber

	

String (255)

	

License Key Assigned to the Item Sequence Level (Phantom/SubItem)

	

No

	 


MiscItemDetail01

	

String (255)

	

Miscellaneous Data Element for Item Detail level

	

No

	 


MiscItemDetail02

	

String (255)

	

Miscellaneous Data Element for Item Detail level

	

No

	 


MiscItemDetail03

	

String (255)

	

Miscellaneous Data Element for Item Detail level

	

No

	 


MiscItemDetail04

	

String (255)

	

Miscellaneous Data Element for Item Detail level

	

No

	 


MiscItemDetail05

	

String (255)

	

Miscellaneous Data Element for Item Detail level

	

No

	 
Input XML Example


<ItemObjects>
  <ItemObject>
    <ItemID>1</ItemID>
    <ItemDetail>
      <ItemSequence>6845</ItemSequence>
      <SerialNumberEach>
        WEBKD982</SerialNumber>
        <TrackingNumber>1Z0E35F4M375139076</TrackingNumber>
        <TrackingURL>
          http://wwwapps.ups.com/etracking/tracking.cgi?TypeOfInquiryN
  umber=T&AcceptUPSLicenseAgreement=yes&InquiryNumber1=1Z0E35F4M3751
          39076
        </TrackingURL>
        <EstimatedShipDate>02/15/2007</EstimatedShipDate>
        <ActualShipDate>02/12/2007</ActualShipDate>
        <LicenseKeyNumber>
          ABC-333-DEF-4546YUZ
        </LicenseKeyNumber>
      </ItemDetail>
    <ItemDetail>
      <ItemSequence>0240</ItemSequence>
      <SerialNumberEach>
        UIE65432</SerialNumber>
        <TrackingNumber>1Z0E35F4M37763189076</TrackingNumber>
        <TrackingURL>
          http://wwwapps.ups.com/etracking/tracking.cgi?TypeOfInquiryN
  umber=T&AcceptUPSLicenseAgreement=yes&InquiryNumber1=1Z0E35F4M3776
          3189076
        </TrackingURL>
        <EstimatedShipDate> 02/15/2007</EstimatedShipDate>
        <ActualShipDate>02/12/2007</ActualShipDate>
        <LicenseKeyNumber></LicenseKeyNumber>
      </ItemDetail>
  </ItemObject>
  <ItemObject>
    <ItemID>2</ItemID<ItemDetail>
      <ItemSequence>0320</ItemSequence>
      <SerialNumberEach>
        WER56432</SerialNumber>
        <TrackingNumber>1Z0E35F4M39433489076</TrackingNumber>
        <TrackingURL>
          http://wwwapps.ups.com/etracking/tracking.cgi?TypeOfInquiryN
  umber=T&AcceptUPSLicenseAgreement=yes&InquiryNumber1=1Z0E35F4M3943
          3489076
        </TrackingURL>
        <EstimatedShipDate>01/29/2007</EstimatedShipDate>
        <ActualShipDate>02/26/2007</ActualShipDate>
        <LicenseKeyNumber> </LicenseKeyNumber>
      </ItemDetail>
  </ItemObject>
</ItemObjects>
On this page
ItemObjects XML definition
Input XML Example
Yes
No