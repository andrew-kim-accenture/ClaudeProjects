# Sending Scripts to CI/CD Tool | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/15a2803a7eaa4b9b836d2bcaacae4dc2.html?locale=en-US&state=PRODUCTION&version=2603
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
Sending Scripts to CI/CD Tool

You can use Script API to push modified scripts into an external version control system (such as GitHub), which can feed it back into a higher SAP CPQ environment once the script changes are validated with a CI/CD tool.

Once you modify scripts, either via the SAP CPQ editor, or your local editor (and send them to SAP CPQ), you can filter the modified scripts you wish to move to the CI/CD tool in two ways:

If several scripts needs to be versioned, extract the changed objects from SAP CPQ via the CI/CD tool by using the GET API method that corresponds to the modified script. To retrieve the scripts changed in a specific time frame, you can filter their Date Modified column to get only the entities which were modified between certain dates.

If a large number of scripts needs to be versioned, extract the changed objects by calling the Change Set API or Audit Trail API, which return all changes made in the specified time frame, and then call the GET API method for the modified entities.

Note

It is also possible to set up a periodic pull of modified scripts via the CI/CD tool (this approach is recommended if only a few scripts are changed, as simultaneous changes on a larger number of scripts performed by several developers could lead to overlapping inconsistent script modifications.

Yes
No