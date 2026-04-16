# As of 2311: CLR Module Import No Longer Supported | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/c16c838d92f14aa089986830f3dda7ee.html?version=2603
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
As of 2311: CLR Module Import No Longer Supported

Description

As of the 2311 release, you will no longer be able to import the CLR module or use any associated namespaces in SAP CPQ scripting. Starting with the 2302 release, alternatives to using the CLR module in scripting have become available, which you can use to effectively replace the instances where the CLR module import is currently used.

Actions to Take

Please refer to the before-and-after code examples illustrating how to replace CLR module import, and the complete list of classes and methods introduced in 2302 to be used for this purpose. In addition, you can review the exposed SAP CPQ APIs in the Script Workbench to look for any additional alternatives you may require.

Note

The announced changes will only apply to writing new scripts or modifying existing scripts.

CLR module import will not be forbidden on any customer environments until the appropriate alternatives have been implemented.

No breaking changes will occur with existing scripts. Existing scripts that will not undergo any additional modifications (scripts that are in maintenance mode) will continue to work as usual after these changes are implemented.

However, if you intend to further modify your scripts in the future, you will need to update these scripts to use the new classes and methods introduced in the 2302 release to ensure that they are not affected by these changes.

We value customer feedback and encourage you to provide us with information on how the changes affect your business model and if any additional support is needed to make the transition to the new scripting methods.

On this page
Description
Actions to Take
Yes
No