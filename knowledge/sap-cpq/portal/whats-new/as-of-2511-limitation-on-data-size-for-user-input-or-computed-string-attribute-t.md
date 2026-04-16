# As of 2511: Limitation on Data Size for User Input or Computed - String Attribute Type | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/dd6ffee07b76442395d705b2f261ca27.html?version=2603
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


	
As of 2511: Limitation on Data Size for User Input or Computed - String Attribute Type
	
As of 2511: Deprecation of Deletion of Products Synced from External Systems
	
As of 2511: Environment Field Replaced with Tenant URL
	
As of 2511: Deprecation of PDA Approval Logic
	
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
As of 2511: Limitation on Data Size for User Input or Computed - String Attribute Type

Description

The main reason for restricting the size of the User Input or Computed - String attribute is to avoid performance issues and prevent unnecessary additional costs that could occur during the implementation on Azure Cloud.

Actions to Take

Affected customers are those who use attributes of the type User Input or Computed - String. Starting with the 2511 release, these attribute types have a limit of 2,000 characters. If the input exceeds 2,000 characters, the system will throw a validation exception and revert the data to its previous value.

Affected customers should provide additional information about their usage of User Input or Computed - String attributes. Based on this information, we will attempt to find an alternative or workaround solution.

On this page
Description
Actions to Take
Yes
No