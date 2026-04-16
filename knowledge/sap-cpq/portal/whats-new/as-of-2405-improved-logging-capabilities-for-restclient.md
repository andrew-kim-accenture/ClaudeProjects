# As of 2405: Improved Logging Capabilities for RestClient | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/992f07e733ab4992aa71aae2cb126bba.html?version=2603
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
	
SAP CPQ 2511 Breaking Changes and Announcements
	
SAP CPQ 2508 Breaking Changes and Announcements
	
SAP CPQ 2505 Breaking Changes and Announcements
	
SAP CPQ 2502 Breaking Changes and Announcements
	
SAP CPQ 2411 Breaking Changes and Announcements
	
SAP CPQ 2408 Breaking Changes and Announcements
	
SAP CPQ 2405 Breaking Changes and Announcements


	
As of 2405: HaSi Script Workbench Incorporating Microsoft Library Usage
	
As of 2405: Enabling Clients Not Utilizing CPS Integration to Map Pricing Procedures in Integration with ERP
	
As of 2405: Increasing the Minimum Character Length for Generating Secrets for JWT Token Signing Key
	
As of 2405: QuoteListComponent - Template Customization
	
As of 2405: Workflow Bulk API
	
As of 2405: Support Sub-Procedures in the Pricing Procedure Mappings Page
	
As of 2405: Improved Logging Capabilities for RestClient
	
As of 2405: Validation of CSRF Token
	
SAP CPQ 2402 Breaking Changes and Announcements
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2405: Improved Logging Capabilities for RestClient

Description

A change has been made to the behavior of certain methods in RestClient. Previously, some methods would trigger a WebException when encountering status codes in the 4XX and 5XX range, while others would not raise exceptions despite returning responses with the same status codes. This inconsistency has now been resolved. In the future, RestClient methods will uniformly return responses with the appropriate status codes instead of raising exceptions. Clients are advised to adjust their custom logic accordingly, relying on the received status codes in the response rather than exception handling. This adjustment will ensure better integration and alignment with the updated behavior of RestClient.

RestClient's affected endpoints
RestClient:

Post(string uri)

Post(string uri, string parameters)

Post(string uri, IDictionary<string, object> parameters)

Post(string uri, string parameters, IDictionary<string, string> headers)

Post(string uri, IDictionary<string, object> parameters, IDictionary<string, string> headers)

Get(string uri)

Get(string uri, IDictionary<string, string> headers)

Put(string uri)

Put(string uri, string parameters)

Put(string uri, IDictionary<string, string> headers)

Put(string uri, string parameters, IDictionary<string, string> headers)

Put(string uri, IDictionary<string, object> parameters, IDictionary<string, string> headers)

Delete(string uri)

Delete(string uri, IDictionary<string, string> headers)

Patch(string uri)

Patch(string uri, string parameters)

Patch(string uri, IDictionary<string, string> headers)

Patch(string uri, string parameters, IDictionary<string, string> headers)

Patch(string uri, IDictionary<string, object> parameters, IDictionary<string, string> headers)

Yes
No