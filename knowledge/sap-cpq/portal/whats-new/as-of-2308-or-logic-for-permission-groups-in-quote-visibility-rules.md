# As of 2308: OR Logic for Permission Groups in Quote Visibility Rules | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/3764c2879e9446dba4b9e28ce106abb5.html?version=2603
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
	
SAP CPQ 2308 Breaking Changes and Announcements


	
As of 2308: SAP CPQ Tenant URL Change Adoption End - Risk of Production Down
	
As of 2308: OR Logic for Permission Groups in Quote Visibility Rules
	
As of 2308: GenDoc Preprocessor Breaking Changes
	
As of 2308: GenDoc – Excel Spreadsheet Templates With C2 Tag
	
As of 2308: GenDoc - Table of Content Styles Different in Multi-section Documents if Predefined TOC Styles Different Among sections
	
As of 2308: Removal of REST API Salesforce Integration (Version 21-30) with SAP CPQ
	
As of 2308: Data Center Transition to Microsoft Azure
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2308: OR Logic for Permission Groups in Quote Visibility Rules

Description

As of the 2308 release, the administration of quote visibility rules ( Setup  Quotes  Quote Visibility) on Quote 2.0 has been redesigned to enable the configuration of advanced conditions without technical knowledge of SQL and CPQ database queries like before.

This feature introduces a breaking change for the relationship between permission groups in quote visibility rules. Before 2308, the relationship between permission groups was AND, now it is OR.

If you have rules that define visibility based on a combination of user permissions, in 2308 the selected permission groups in those rules are migrated to custom permission groups to keep the AND relationship.

The migrated custom groups have the following properties:

Name: Quote visibility permission group + #Previous ID#.

This enables you to recognize them by the ID of your previous visibility rule.

Description: Contains the permission fields that were migrated.

Actions to Take

No action is required from your side. If your visibility rules required migration of user permissions, you see the results in the rule details, under Selected Permission Groups  Custom Permission Groups. You may make adjustments to your needs.

Example

For example, you had a quote visibility rule that defined the user’s visibility based on values from the permission groups Company AND User Type. As of 2308, without migration the new OR logic would apply, meaning that the user’s visibility would be based EITHER on the company OR the user type. With the migration, the visibility rule will instead have a new custom permission group selected with the previously configured values for companies and user types.

On this page
Description
Actions to Take
Yes
No