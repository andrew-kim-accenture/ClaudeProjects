# Security Recommendations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e8cd39c7691b46dd8ebc4b4d2e7624b2.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations


	
Explanation of Table Headings
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Security Recommendations

SAP CPQ is delivered with some default security configuration. The table below contains some security settings that you might need to review and adjust to your particular use case and corporate policies.

Priority

	

Secure Operations Map

	

Topic

	

Default

	

Recommendation

	

More Information

	

Index



Filter:
[No selection]
	
Filter:
[No selection]
	
Filter:
[No selection]
				

Priority

	

Secure Operations Map

	

Topic

	

Default

	

Recommendation

	

More Information

	

Index



	
	
	
	
	
	

Critical	Roles & Authorizations	Business Users: Authorization	SAP delivers business role templates for different user personas. These templates must be adjusted to suit your business needs and corporate policies.	

Authorizations for users should be designed to follow the principle of least privilege.

Conduct regular authorization reviews.

	Access Rights	S4-Q2C-BU-001
Recommended	Client security	Frontend Security: Browser	N/A	SAP recommends all users to maintain secure configurations and use the latest version of internet browsers.	

Supported Browsers

	S4-Q2C-CS-001
Advanced	Authentication & Single Sign-On	Authentication: Communication Users	

Authentication must be set up by the customer.

No communication users are configured by default - form based.

	Authentication should always employ the strongest authentication method supported by the communicating systems. 	

Federated Single Sign-On

	S4-Q2C-AUTH-001
Advanced	Authentication & Single Sign-On	Authentication: MFA	Multi-factor authentication (MFA) is off by default.	Recommendation is for admin users to use MFA (Multi-factor authentication). Another factor is increasing chance to prevent attackers from stealing identity and adding another layer of security.	

Multi-factor Authentication

	S4-Q2C-AUTH-002


Recommended

	

Roles & Authorization

	

Business Users: Authorization

	

Default parameter values in Quote approval process for mobile view is set on false

	

Set PDA Approval or One Click Approval parameters to True for Single Sign-On users.

	

Approval via PDA

	

S4-Q2C-BU-002




Recommended

	

Client Security

	

CORS allow list protection

	

A secure default allow list limits allowed functionality to a minimum. Adding more entries will lead to a less secure policy.

	

Only add entries (trusted sites/domains) if required for the business use case and in line with your corporate policy.

	

Application Parameters 1.0

	

S4-Q2C-CS-002



To find out more about the table headings, check Explanation of Table Headings.

Yes
No