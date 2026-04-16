# As of 2602: Custom Tables APIs Authentication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/0349dec3b266402c9a7b5ef1da9bbf64.html?version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ What's NewVersion: 2603English
Provide feedback on our search

	
What's New Library
	
Breaking Changes and Announcements


	
Latest Breaking Changes and Announcements
	
Archive of Breaking Changes and Announcements


	
SAP CPQ 2602 Breaking Changes and Announcements


	
As of 2602: Custom Tables APIs Authentication
	
As of 2602: Removal of the Option to Switch to the Old UI Design
	
As of 2602: Deprecation of IronPython Eval() Statement
	
SAP CPQ 2511 Breaking Changes and Announcements
	
SAP CPQ 2508 Breaking Changes and Announcements
	
SAP CPQ 2505 Breaking Changes and Announcements
	
SAP CPQ 2502 Breaking Changes and Announcements
	
SAP CPQ 2411 Breaking Changes and Announcements
	
SAP CPQ 2408 Breaking Changes and Announcements
	
SAP CPQ 2405 Breaking Changes and Announcements
	
SAP CPQ 2402 Breaking Changes and Announcements
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2602: Custom Tables APIs Authentication

Description

The JWT token used for authentication with the Custom Table APIs, which is specifically issued and used for these APIs, is set to be deprecated in the SAP CPQ 2602 release. This change doesn't affect the SOAP API. You can continue to use the SOAP API as before.

Actions to Take

Custom Table APIs now support authentication using a single JWT token issued by SAP CPQ for API authentication. Update your logic and switch to the new authentication method for Custom Table APIs prior to the SAP CPQ 2602 release.

Before

To get a token for Custom Table APIs, the following logic was used:

Example

GET {cpq-url}/basic/api/token

POST {cpq-url}/api/rd/v1/core/GenerateJWT

After:

To get a token for Custom Table APIs now, use:

Example

GET {cpq-url}/oauth2/token

This authentication method allows you to obtain the required token for Custom Table API authentication by making a single request to /oauth2/token using the same values previously sent to /basic/api/token.

For more information on OAuth 2.0 authentication mechanisms, see Token API Authentication. Note that these authentication types can also be used with SOAP APIs.

On this page
Description
Actions to Take
Yes
No