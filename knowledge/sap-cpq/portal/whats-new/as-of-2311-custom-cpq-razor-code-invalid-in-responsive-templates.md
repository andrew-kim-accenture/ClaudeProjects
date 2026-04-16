# As of 2311: Custom CPQ Razor Code Invalid in Responsive Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/c4f9815de4a747b6821918a055387501.html?version=2603
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
	
SAP CPQ 2402 Breaking Changes and Announcements
	
SAP CPQ 2311 Breaking Changes and Announcements


	
As of 2311: CLR Module Import No Longer Supported
	
As of 2311: Custom CPQ Razor Code Invalid in Responsive Templates
	
As of 2311: Restricted File Types for Uploading into SAP CPQ
	
As of 2311: Change in the Quote Items Collaboration Comments and Time Zone Format
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2311: Custom CPQ Razor Code Invalid in Responsive Templates

Description

As of the 2311 release, Razor code (custom C# code) will be validated in responsive templates. New templates won’t allow invalid code, and changes to existing templates that contain invalid code won’t be allowed. For more information, see Razor Validation for Responsive Templates in the What’s New document.

Note

Razor validation starts in 2308 and becomes mandatory in 2311. To disable it for 2308, you can contact the SAP CPQ support team.

The main motivation for this change is that razor validation will make responsive templates and therefore SAP CPQ more stable and secure. Before the razor validation, administrators could access and use custom C# code, which is part of the SAP CPQ core code and should actually be only used by the internal engineering team.

Regarding stability, razor validation will improve it for SAP CPQ environments. In responsive templates, administrators can edit razor code, but without validation these code changes could unknowingly lead to breaking changes in the administrator’s environment. Regarding security, issues derived from using custom code can no longer occur with razor validation nor impact the administrator’s environments.

Actions to Take

Please start adjusting your templates already as of the 2308 release:

Remove or replace code lines that contain custom CPQ Razor code.

If you create new templates, avoid using custom CPQ Razor code.

For more information about how to fix invalid code, see Razor Validation in Responsive Templates in the SAP CPQ Setup and Administration Guide.

On this page
Description
Actions to Take
Yes
No