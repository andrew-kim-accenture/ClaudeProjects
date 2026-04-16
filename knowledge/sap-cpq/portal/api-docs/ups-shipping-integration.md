# UPS Shipping Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/b58e7ee7e22745e59c145faa3a53cc9d.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices


	
UPS Shipping Integration
	
REST API
UPS Shipping Integration

For UPS integration the following application parameters should be set:

UNITOFMEASUREMENT - by default set to grams

UPSAccessLicenseNumber

UPSFromZipCode

UPSURL (for example, https://www.ups.com/ups.app/xml/Rate)

UPSUser

UPSPassword

Weight is calculated during integration and need to be setup for every product.

The tag UPSSHIPPING(code) should be used, code is one of UPS defined codes, for example, code 14 states for 'UPS Next Day Early AM'.

Code	United States Domestic Shipments


01

	

UPS Next Day Air




02

	

UPS Second Day Air




03

	

UPS Ground




12

	

UPS Three-Day Select




13

	

UPS Next Day Air Saver




14

	

UPS Next Day Air® Early A.M.




59

	

UPS Second Day Air A.M.




65

	

UPS Saver

Code	Shipments Originating in United States


01

	

UPS Next Day Air




02

	

UPS Second Day Air




03

	

UPS Ground




07

	

UPS Worldwide Express




08

	

UPS Worldwide Expedited




11

	

UPS Standard




12

	

UPS Three-Day Select




14

	

UPS Next Day Air® Early A.M.




54

	

UPS Worldwide Express Plus




59

	

UPS Second Day Air A.M.




65

	

UPS Saver

Code	Shipments Originating in Puerto Rico


01

	

UPS Next Day Air




02

	

UPS Second Day Air




03

	

UPS Ground




07

	

UPS Worldwide Express




08

	

UPS Worldwide Expedited




14

	

UPS Next Day Air Early A.M.




54

	

UPS Worldwide Express Plus




65

	

UPS Saver

Code	Shipments Originating in Canada


01

	

UPS Express




02

	

UPS Expedited




07

	

UPS Worldwide Express




08

	

UPS Worldwide Expedited




11

	

UPS Standard




12

	

UPS Three-Day Select




13

	

UPS Saver




14

	

UPS Express Early A.M.




54

	

UPS Worldwide Express Plu




65

	

UPS Saver

Code	Shipments Originating in Mexico


07

	

UPS Express




08

	

UPS Expedited




54

	

UPS Express Plus




65

	

UPS Saver

Code	Polish Domestic Shipments


07

	

UPS Express




08

	

UPS Expedited




11

	

UPS Standard




54

	

UPS Worldwide Express Plus




65

	

UPS Saver




82

	

UPS Today Standard




83

	

UPS Today Dedicated Courrier




84

	

UPS Today Intercity




85

	

UPS Today Express




86

	

UPS Today Express Saver

Code	European Union


07

	

UPS Express




08

	

UPS Expedited




11

	

UPS Standard




54

	

UPS Worldwide Express Plus




65

	

UPS Saver

Code	Shipments Originating in Other Countries/Regions


07

	

UPS Express




08

	

UPS Expedited




11

	

UPS Standard




54

	

UPS Worldwide Express Plus




65

	

UPS Saver

Code	Freight Shipments


TDCB

	

Trade Direct Cross Border




TDA

	

Trade Direct Air




TDO

	

Trade Direct Ocean




308

	

UPS Freight LTL




309

	

UPS Freight LTL Guaranteed




310

	

UPS Freight LTL Urgent

Note

SAP CPQ uses a standard size package during UPS integration. The package used by default is UPS Letter Envelope.

Yes
No