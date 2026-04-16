# Global Scripts API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/da3cedca421d4efb86cabe04da61e97c.html?locale=en-US&state=PRODUCTION&version=2603
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
Global Scripts API

Endpoints:


§ GET    - /api/script/v1/GlobalScripts + query parameters
			§ POST   - /api/script/v1/GlobalScripts/ 
			§ PUT    - /api/script/v1/GlobalScripts/{id}			
			§ GET    - /api/script/v1/GlobalScripts/{id}
			§ GET    - /api/script/v1/GlobalScripts/{id}/versions + query parameters
			§ GET    - /api/script/v1/GlobalScripts/{id}/versions/{version id}
			§ DELETE - /api/script/v1/GlobalScripts/{id}


Methods: GET, POST, PUT, DELETE

Authentication: OAuth basic (username and password)

Schema:


{
			"ScriptDefinition": {
				"Id": {
					"type": "integer",
					"description": "ID of Global script"
					},
				"Name": {
					"type": "string",
					"description": "Name of Global script"
					},
				"Description?":  {
					"type": "string",
					"description": "Description of Global script"
					},
				"Script": {
					"type": "string",
					"description": "Script code"// It will return BadRequest if content is not OK (syntax checker will run on this script)
				           },
				"Active?":  {
					"type": "boolean",
					"description": "Parameter for defining if Global script is active. Default value will be false"
					},
				"Module?":  {
					"type": "boolean",
					"description": "Module"
					},
				"StartDate?":  {
					"type": "string", // ISO format should be used - yyyy-mm-dd
					"description": "Start date of Global script activity"
					},
				"EndDate?":  {
					"type": "string", // ISO format should be used - yyyy-mm-dd
					"description": "End date of Global script activity"
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
				
					
			"Events": {
				"type": "array",
				"description": "List of events to which script will be assigned",
				"items": {
					"type": "object",
					"properties": {
						"rank?": {
							"type": "integer", 
							"description": "event ranking for global script" // If it is not provided, it will be automatically assigned by CPQ system - it will be assigned highest rank number (it will be the last executed script for concerned event)
							},
						"EventID": {
							"type": "integer"							
							},
						},
					},
				},
			}
		


Yes
No