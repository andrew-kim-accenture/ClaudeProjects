# Rate Plans Schema | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/10772afc62d24057af94dbb002eb1862.html?locale=en-US&state=PRODUCTION&version=2603
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
	
REST API


	
SAP CPQ REST API Authentication
	
SAP CPQ to Third Party Authentication
	
Script API
	
SCIM API
	
Configurations API
	
Custom Table API
	
Rate Plans API


	
Rate Plans Schema
	
REST API for Updating Ship To, Bill To, and End User
	
API for Content Upload
	
REST API Error Codes
	
Custom API (Global Scripts Consumed as REST API Web Services)
	
User Interface API
	
Product Integration REST API
	
Headless SAP CPQ Configurator
Rate Plans Schema


[ 
  { 
    "Id": "string", 
    "Code": "string", 
    "Description": "string", 
    "RatePlanTemplateId": "string", 
    "Snapshots": [ 
      { 
        "EffectiveAt": "string", 
        "Parameters": [ 
          { 
            "Code": "string", 
            "Value": "string", 
            "Type": "string" 
          } 
        ] 
      } 
    ] 
  } 
]
Yes
No