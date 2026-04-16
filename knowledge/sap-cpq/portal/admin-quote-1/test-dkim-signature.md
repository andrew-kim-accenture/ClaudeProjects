# Test DKIM Signature | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/413b5cfd6e674d97b4132881d98df8ff.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Test DKIM Signature
	
Automatic Data Deletion
	
Personally Identifiable Information
	
Personal Data Log
	
WSDL and Certificate Management
	
Credential Management
	
Trusted Applications
	
Password Policy
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Test DKIM Signature

To confirm that DKIM authentication is active, you can use both Gmail and Yahoo accounts.

Test DKIM Signature with Gmail Account

Send a message from your domain (e.g. name@calliduscloud.com) to your Gmail email address.

Open the message in your Gmail inbox

Click the downward arrow next to the recipient’s name (in this case, your name) to view details.

A pop-up displays.

If there is signed-by: your domain, DKIM authentication is active.

Test DKIM Signature with Yahoo Account

Send a message from your domain to your Yahoo email address.

Open the message in your Yahoo inbox.

Next to Spam, click the elipsis icon.

Select View raw message.

A new tab opens, containing the full message, including the email header information. If there is dkim=pass (ok) in the email header, DKIM authentication is active.

On this page
Test DKIM Signature with Gmail Account
Test DKIM Signature with Yahoo Account
Yes
No