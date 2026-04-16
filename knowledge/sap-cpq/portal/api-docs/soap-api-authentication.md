# SOAP API Authentication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/77b59da533b84949b527577eca8dd2e2.html?locale=en-US&state=PRODUCTION&version=2603
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
SOAP API Authentication

The authentication for all SAP CPQ SOAP APIs is handled in the same way - username/domain and password are sent in each XML request. You can also use token authentication types for SOAP APIs.



<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:web="http://webcominc.com/">
	<soapenv:Header/>
	<soapenv:Body>
		<web:SimpleProductAdministration>
			<!--Optional:-->
			<web:userName>CPQ_Test_User</web:userName>
			<!--Optional:-->
			<web:password>ABCpassword567</web:password>
			<!--Optional:-->
			<web:action>ADDORUPDATE</web:action>
			<!--Optional:-->
			<web:xDoc>
				<Products SkipCategoriesonProductUpdate="True">
					<Product>
						<Identificator>PartNumber</Identificator>
						<PartNumber>SDF234</PartNumber>
						<PricingCode>65</PricingCode>
						<Categories>
							<USEnglish><! [CDATA[Hardware]]></USEnglish>
						</Categories>
						<DisplayType>Configurable</DisplayType>
						<ProductTypes>Hardware</ProductTypes>
						<ProductName>
							<USEnglish><! [CDATA[Hardware]]></USEnglish>
						</ProductName>
						<Description>
							<USEnglish>This is a test description.</USEnglish>
						</Description>
						<Permissions>CFO</Permissions>
					</Product
				</Products>
			</web:xDoc>
		</web:SimpleProductAdministration>
	</soapenv:Body>
</soapenv:Envelope>

Yes
No