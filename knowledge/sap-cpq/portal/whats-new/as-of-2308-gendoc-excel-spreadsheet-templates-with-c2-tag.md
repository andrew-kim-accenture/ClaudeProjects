# As of 2308: GenDoc – Excel Spreadsheet Templates With C2 Tag | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/17a8e55d0b074c7a994498ad158da041.html?version=2603
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
As of 2308: GenDoc – Excel Spreadsheet Templates With C2 Tag

Description

This breaking change is caused by transferring from the old engine for Document Templates Processing to the new engine for Document Templates Processing.

If your template includes a C2 tag and the number of processed rows in the generated document is larger or equal to number of rows remaining after the C2 range is populated with a header and a footer, the new engine doesn’t insert empty rows like the old engine did.

In this example of an Excel spreadsheet template, the range of C2 is 7. If the header range, footer range and processed rows fill the C2 range, there wont be any empty rows inserted in generated document with the new engine.

<<C2(7x2)>>

	 


<<HEADER(1x2)>>

	 


Country

	

Side-ID




<<MAIN(3X2)>>

	 


<<CONTAINER(2x2|Container L1)>>

	 


<<CONTAINER_ITEM(1x2)>>

	 


<<CONTAINER_TAG(<*CTX( Container(Container L1).Row().Column(c).Get )*>)>>

	 


Next Container – Container L2

	 

Example: Processed with the new engine for a product configuration: 

Example: Processed with the old engine for the same product configuration: 

Actions to Take

No action is required from your side.

On this page
Description
Actions to Take
Yes
No