# Custom Calculations API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/659cbc5a5b054f749e8376c5dca90a25.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Global Scripts API
	
Custom Actions API
	
Custom Calculations API
	
Product-Level Scripts API
	
Responsive Design Templates API
	
Continuous Integration/Continuous Delivery (CI/CD) Process in SAP CPQ – Best Practices
	
SCIM API
	
Configurations API
	
Custom Table API
	
Rate Plans API
	
REST API for Updating Ship To, Bill To, and End User
	
API for Content Upload
	
REST API Error Codes
	
Custom API (Global Scripts Consumed as REST API Web Services)
	
User Interface API
	
Product Integration REST API
	
Headless SAP CPQ Configurator
Custom Calculations API

Endpoints:


§ GET    - /api/script/v1/CustomCalculations + query parameters
			§ POST   - /api/script/v1/CustomCalculations/                           
			§ PUT    - /api/script/v1/CustomCalculations/{id}			
			§ GET    - /api/script/v1/CustomCalculations/{id}
			§ GET    - /api/script/v1/CustomCalculations/{id}/versions + query parameters
			§ GET    - /api/script/v1/CustomCalculations/{id}/versions/{version id}
			§ DELETE - /api/script/v1/CustomCalculations/{id}


Methods: GET, POST, PUT, DELETE

Authentication: OAuth basic (username and password)

Schema:


{
			"CalculationDefinition": {
				"Id": {
					"type": "integer",
					"description": "ID of Custom Calculation"
					},
				"Name": {
					"type": "string",
					"description": "Name of Custom Calculation"
					},
				"Active":  {
					"type": "boolean",
					"description": "Parameter for defining if Custom Calculation is active. Default value will be False"
					},
				"RowType":  {
					"type": "enum", 
					"description": "Row Type for Custom Calculation"
					},
				"Description?":  {
					"type": "string",
					"description": "Description of Custom Calculation"
					},
				"Script": {
					"type": "string",
					"description": "Script code"// It will return BadRequest if content is not OK (syntax checker will run on this script)
				     },			
				"ModifiedBy?": {
					"type": "string",           
					"description": "ID of user that modified script" // Should represent userName in CPQ, and we can use integration user for fallback (if ModifiedBy is null). If ModifiedBy does not exist BadRequest will be returned 
				     },
				 "ModifiedOn?": {
					 "type": "string",           
					"description": "Date when script was modified " // Parameter will be used only for Get methods. It will take DateTime.Now 
				     },
				},			
			
			"ForceProxyGeneration?":  {
					"type": "boolean",
					"description": "Proxy Generation" // Default value will be False
				},
		
			}
	
	    

Yes
No