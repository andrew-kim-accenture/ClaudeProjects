# Custom Actions API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/d6bc7284f9b74953ad6872af51abb13b.html?locale=en-US&state=PRODUCTION&version=2603
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
Custom Actions API

Note

The CustomActions API will be obsolete mid of 2023. If you are currently using it, make sure to replace the CustomActions endpoints with the Actions API endpoints before this time.

Endpoints:


§ GET    - /api/script/v1/CustomActions + query parameters
			§ POST   - /api/script/v1/CustomActions/ 
			§ PUT    - /api/script/v1/CustomActions/{id}
			§ GET    - /api/script/v1/CustomActions/{id}
			§ GET    - /api/script/v1/CustomActions/{id}/versions + query parameters
			§ GET    - /api/script/v1/CustomActions/{id}/versions/{version id}			
			§ DELETE - /api/script/v1/CustomActions/{id}


Methods: GET, POST, PUT, DELETE

Authentication: OAuth basic (username and password)

Schema:


{
			"ActionDefinition": {
				"Id": {
					"type": "integer",
					"description": "CPQ internal ID of Custom Action"
					 },
				"Name": {
					"type": "string",
					"description": "Name of Custom Action"
					 },
				"System ID?":  {
					"type": "string",
					"description": "System ID of Custom Action"
					 },
				"Placement": {
					"type": "char",
					"description": "Placement of Custom Action"
					 },
				"PrimaryAction?":  {
					"type": "boolean",
					"description": "Parameter for defining if Custom Action is Primary. Default value will be false"
					 },
			    "Script": {
					"type": "string",
					"description": "Script code"// It will return BadRequest if content is not OK (syntax checker will run on this script)
					 },
				"ModifiedBy?": {
					"type": "string",           
					"description": "ID of user that modified script" // Should represent userName in CPQ, and we can use integration user for fallback (if ModifiedBy is null). If ModifiedBy does not exist BadRequest will be returned 
				     },
				"ModifiedOn": {
					 "type": "string",           
					"description": "Date when script was modified " // Parameter will be used only for Get methods. It will take DateTime.Now 
				     },
				},
						  
			"ActionCondition": {
				"GlobalCondition": {
					"type": "string",
					"description": "Global Condition of Custom Action"
					 },
				"PreActionCondition": {
					"type": "string",
					"description": "Pre Condition of Custom Action"
					 },
				"PostActionCondition": {
					"type": "string",
					"description": "Post Condition of Custom Action"
					 },
				},				
			
			"ForceProxyGeneration?": {
					"type": "boolean",
					"description": "Proxy Generation"
				},
				
			}	
			
		


Yes
No