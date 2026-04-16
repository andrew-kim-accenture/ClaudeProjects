# Continuous Integration/Continuous Delivery (CI/CD) Process in SAP CPQ – Best Practices | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/c86cd98ed48b4cf5992bfb23c826f44a.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Sending Scripts to CI/CD Tool
	
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
Continuous Integration/Continuous Delivery (CI/CD) Process in SAP CPQ – Best Practices

The page describes the recommended method of establishing integration of SAP CPQ with external applications for deployment and continuous integration/continuous delivery processes.

In establishing this integration, you reduce high manual effort, automate the process of testing scripts, prevent overlapping of modifications you and other administrators perform and improve the overall development process.

Continuous Integration/Continuous Delivery Pipeline

This section outlines the recommended process of deployment of changed SAP CPQ objects through the example of scripts, as they are the most complex entity which requires testing. You can apply this method for deployment of scripts modified in a development tenant, which will be sent to an SAP CPQ QA/UAT/testing tenant once the testing and versioning of scripts is complete, and finally to the production environment.

Note

If you are only using the testing and production tenants, the CI/CD pipeline starts from step 6.

Filter the changed scripts and move them to the CI/CD tool. Refer to the methods of filtering the modified scripts you wish to send to the CI/CD tool.

Note

Filtering and moving scripts is done with the GET API method. Refer to SAP CPQ Swagger documentation for details regarding the AuditTrail and GlobalScripts APIs.

Send a pull request to the Version Control System’s (VCS) development tenant.

Use the GET API method to reach the endpoint from which you wish to retrieve SAP CPQ scripts.

The CI/CD tool pulls the scripts from SAP CPQ and iterates through them to test for any mistakes.

When the scripts are tested and no errors are found, send a pull request to the VCS’s test branch.

The CI/CD tool picks up the scripts for further testing.

When testing is complete, send a merge request to SAP CPQ test tenant to update the modified scripts.

Issue a pull request from VCS test to VCS master branch.

Use the GET API method to retrieve scripts from SAP CPQ test tenant.

The pipeline is initiated, and the CI/CD tool pulls the scripts from SAP CPQ to test them.

Issue a pull request to send the modified and tested scripts to the SAP CPQ production environment.

Once the merge request is approved, the scripts are sent to the main branch in the SAP CPQ Production environment.

Note

The outlined method can be used with various types of Continuous Integration/Continuous Delivery tools and Version Control Systems.

Note

At any given moment, if the scripts contain errors, they can be fixed in the external application for testing and versioning, and sent to SAP CPQ via the API, so that no script modifications are compromised in SAP CPQ.



Sending Scripts to CI/CD Tool

Yes
No