# System Certificates for Secure Communication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/57358f546f98447d888b69defb5bad14.html?locale=en-US&state=PRODUCTION&version=2603
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


	
System Certificates for Secure Communication


	
Signed SOAP API Envelope Sent to SAP CPQ
	
Create User Certificates
	
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
System Certificates for Secure Communication

System Certificates can be used either for encrypting and securing SOAP API requests, or for authenticating client systems in SAP CPQ.

To create a new certificate, go to Setup  Security  Certificate Management and click New Certificate.

When SOAP messages are encrypted with certificates, only those who have the appropriate public key can verify the received SOAP message requests and access the information contained within the messages. In short, if the received SOAP message is verified, messages can be exchanged between two endpoints securely.

Note

SOAP communication can be secured in two directions – from SAP CPQ towards the client system, and from the client system towards SAP CPQ.

Certificates can be added in several ways:

Let SAP CPQ generate a certificate – Enter the certificate name, select the encryption type and key size. This is the best option if you do not already have a certificate that can be used.

Upload a certificate from a file – upload a PFX file containing a certificate by clicking Upload a PFX file. Enter the password for the file in the Password (required) field.

Note

The certificate that is added to SAP CPQ must be installed on the client machine (the service that is called, or the service that calls SAP CPQ) , and the response must be signed with that same certificate, as well. Usually there is already an installed certificate on the server side, which you can upload to the Certificate Management page in SAP CPQ.

Regardless of the selected certificate creation method, the Purpose (required) dropdown and the Service URL (required) field are required and common in all three cases (except when the selected certificate purpose is Client Certificate Authentication).

In the Purpose (required) dropdown, you can choose between:

Outbound SOAP Header Signing - secure SOAP communication from SAP CPQ towards a client system.

Inbound SOAP Header Signing - secure SOAP communication from a client system towards SAP CPQ.

Note

In addition to making the certificate with inbound SOAP header signing purpose active in SAP CPQ, you need to make sure the signature is provided in the certificate body. If this condition isn't met, the Rejected by policy. error messsage will be displayed.

Client Certificate Authentication - used if SAP CPQ needs to be authenticated in external systems with a certificate instead of a username and password. For now, it can only be used in relation to the mTLS client and Subscription to Events.

In the Service URL (required) field you need to provide the URL which contains the specific endpoint of the webservices’ API SAP CPQ is connecting to.

If you wish to create a secure signed request to an outbound SOAP service via scripting, and if the WSDL for that outbound service is not public, you need to define the WSDL for that service in the WSDL Management page first, and then add the service URL to that definition. After that, in the Certificate Management page, you define Outbound SOAP Header Signing certificate with the same service URL. That way, when the outbound service is called from scripting, SAP CPQ loads the WSDL file and makes a proxy class that communicates with the service.

Once you have created a certificate and made it Active via the toggle switch, it will be used to secure API communication exchanged between SAP CPQ and the client service. Only one Outbound SOAP Header Signing certificate can be made active per a service URL.

Note

When an administrator uploads/generates a certificate in SAP CPQ and makes it active, the certificate will be used on SAP CPQ side to verify all inbound SOAP messages from that client. Likewise, if the client is verifying a SAP CPQ response of an inbound SOAP message, they need to use the matching certificate.

Yes
No