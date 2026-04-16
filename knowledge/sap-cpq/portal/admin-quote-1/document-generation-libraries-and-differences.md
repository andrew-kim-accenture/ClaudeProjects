# Document Generation Libraries and Differences | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/d9aeb18cd5ea4e82a153e14e06fba9eb.html#table-of-content-styles-different-in-multi-section-documents-if-predefined-toc-styles-different-among-sections:-document-generation-processor
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation


	
Document Generation Tags
	
Document Generation Template
	
Supporting Custom Fonts for the Document Generation Process
	
Document Generation Libraries and Differences
	
Setup Administration
	
Manage Content Documents
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
Custom Quote Tabs
	
Quote Tables
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
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
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Document Generation Libraries and Differences

The differences between document generation libraries you need to be aware of. This page will be updated as soon as differences become apparent.

From the 2311 release onwards all customers will be using new Document Generation Engine.

GenDoc – Excel Spreadsheet Templates With C2 Tag
Section Break in Complex Tag: Document Generation Preprocessor
Different Fonts in the Tag: Document Generation Preprocessor
Table of Content Styles Different in Multi-section Documents if Predefined TOC Styles Different Among sections: Document Generation Processor
Description

This breaking change is caused by transferring from the old engine for Document Templates Processing to the new engine for Document Templates Processing.

Table of content styles can be different in multi-section documents if predefined TOC styles (such as TOC 1, TOC 2, and TOC Heading) are different in sections documents.

Actions to Take

To avoid this, make sure that the base TOC styles are the same across all sections. If they are altered, they can be imported/exported across documents to unify them.

If they are not different, the new engine for import format mode parameter value Use Destination styles will behave the same way as the old engine.

On this page
GenDoc – Excel Spreadsheet Templates With C2 Tag
Section Break in Complex Tag: Document Generation Preprocessor
Different Fonts in the Tag: Document Generation Preprocessor
Table of Content Styles Different in Multi-section Documents if Predefined TOC Styles Different Among sections: Document Generation Processor
Yes
No