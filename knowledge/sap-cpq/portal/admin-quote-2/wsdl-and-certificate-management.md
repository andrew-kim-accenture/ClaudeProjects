# WSDL and Certificate Management | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/7b0ee502e103415f8329a491bb7d5961.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
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
	
Credential Management
	
Trusted Applications
	
Password Policy
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
WSDL and Certificate Management

These features can be used for establishing efficient and secure API communication between two different servers.

You can upload WSDL files for interpreting secured SOAP messages sent from third-party web services to SAP CPQ. These SOAP messages are secured with X.509 certificates which are created with the Certificate Management feature. The same web service URL should be defined during the creation of a certificate for secure communication with the server on which the service is installed, and WSDL which describes the service.

Certificates can also be used for authentication of system users in external systems, which is especially useful in integration scenarios.

You can also create User Certificates which can be used for authentication of integration users via API.



Certificate Management

On the Certificate Management page, you can create and manage certificates for securing SOAP and REST communication or map certificates to users, so that they can later be used for authentication of individual users with API.
WSDL Management

This feature gives administrators the ability to upload and store WSDL files in SAP CPQ.
Yes
No