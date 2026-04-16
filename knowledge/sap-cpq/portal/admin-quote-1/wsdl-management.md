# WSDL Management | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/0b7f42e197754a5d8298b61f80d3ee45.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security


	Setup Help

	
DKIM Support for Outbound Emails
	
Automatic Data Deletion
	
Personally Identifiable Information
	
Personal Data Log
	
WSDL and Certificate Management


	
Certificate Management
	
WSDL Management


	
Add a New WSDL
	
Credential Management
	
Trusted Applications
	
Password Policy
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
WSDL Management

This feature gives administrators the ability to upload and store WSDL files in SAP CPQ.

WSDL files are used for describing a SOAP-based web service and creating a link between two distinct servers. In order to be used properly, WSDL files added to SAP CPQ need to be connected to a URL of the endpoint on which the web service is installed.

To initialize the web service, you need to use the following method from scripting:


ws = WebServiceHelper.LoadImportedWsdlService(“Wsdl”,”UrlToService”)
ws.pathToWSDLServiceMethod()

Once you do this, the SAP CPQ scripting environment will create a proxy class which can perform communication targeting the service URL.

Yes
No