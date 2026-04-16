# As of 2408: Introduction of AND / OR Logic in Branching | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/956a7db47b4c42ffbd60b977c95753f5.html?version=2603
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


	
As of 2408: Deprecation of Property Label on Scripting.Quote.IQuoteItemCustomField
	
As of 2408: Introduction of AND / OR Logic in Branching
	
As of 2408: Approvals Page Template Customization Update
	
As of 2408: The User Is Unable to Add CPS Items to the Quote
	
As of 2408: Changes in the Templates
	
As of 2408: Monthly Fields Relocated to General Settings Page from BRIM Set Up Page
	
As of 2408: Customization of UserDetailsPage
	
SAP CPQ 2405 Breaking Changes and Announcements
	
SAP CPQ 2402 Breaking Changes and Announcements
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2408: Introduction of AND / OR Logic in Branching

Description
From 2408 release onwards, the option to select AND / OR logic in the approvals branching feature has been introduced. Before this change, the branching feature would inherit the approval rule AND / OR logic. With this feature, customers will now have the ability to select either the AND or OR option between approval rules within a branch, providing them with more flexibility and control over the approval workflow, making it more predictable.

With the introduction of this new feature, the existing branches in the systems (branches created before 2408) will be by default set to AND logic. If Approval Rule configuration for a few branches is set to OR, the existing approval process will be directly impacted.

Actions to Take

Post sandbox upgrade, customers need to review and readjust the existing branches to OR in the new Approval Branch page under the Setup in order to test and accommodate the impact. Similar adjustments can then be made after the production upgrade to ensure a smooth continuation of the business process.

Note

All existing branches will be available in new approval branch page under the Setup.

By default, the existing branch will have AND logic after the 2408 upgrade and can be adjusted as per business needs.

On this page
Description
Actions to Take
Yes
No