# Responsive Design Templates API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/b283817ea7d0417c892a06167cd18939.html?locale=en-US&state=PRODUCTION&version=2603
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
Responsive Design Templates API

Endpoints:


Responsive Templates (Schema1):
				§ GET    - /api/responsiveTemplate/v1/customResponsiveTemplates + query parameters
				§ GET    - /api/responsiveTemplate/v1/customResponsiveTemplates/{id}
				§ POST   - /api/responsiveTemplate/v1/customResponsiveTemplates 
				§ PUT    - /api/responsiveTemplate/v1/customResponsiveTemplates/{id}
				§ GET    - /api/responsiveTemplate/v1/customResponsiveTemplates/{templateId}/versions + query parameters
				§ GET    - /api/responsiveTemplate/v1/customResponsiveTemplates/{templateId}/versions/{versionId}			
				§ DELETE - /api/responsiveTemplate/v1/customResponsiveTemplates/{id}			
		
			System Templates (Schema2):
				§ GET - /api/responsiveTemplate/v1/systemResponsiveTemplates + query parameters
				§ GET - /api/responsiveTemplate/v1/systemResponsiveTemplates/{id}


Methods: GET, POST, PUT, DELETE

Authentication: OAuth basic (username and password)

Schema:


○ Schema1:
		
		{
			"Id": {
				"type": "integer",
				"description": "CPQ internal ID of Responsive Template"
				 },
			"TemplateId": {
				"type": "int
				"description": "Template Id" if not exists BadRequest will be returned
				 },	 
	    	"Name": {
				"type": "string",
				"description": "Name of template"
				 },
			"Description?":  {
				"type": "string",
				"description": "Description of Global script"
				},						
			"Default?":  {
				"type": "boolean",
				"description": "Parameter for defining if Template is Default. Default value will be false"
				 },
		 	"Content": {
				"type": "string",
				"description": "Template code"
				 }
			   						  
			
			}	
			
			○ Schema2:
			{
				"SystemTemplates": 
				{
					"type": "array",
						"description": "List of system templates",
						"items": {
							"type": "object",
							"properties": {
								"Page: {
									"type": "string", 
									"description": "" 
									},
								"Id": {
									"type": "integer",
									 "description": "" 								
									},
								"Content": {
									"type": "string",
									 "description": "content of template" 	
								}
							},
						}
					}
			}

Yes
No