# Format Permissions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/f6cbb333caea43ed98b766870da8a747.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Fields, Calculations, Layout
	
Document Generation


	
Document Generation Template


	
Template Definition
	
Sections
	
Visibility Permission
	
Format Permissions
	
Related Fields
	
Additional Content
	
Additional Documents
	
Delegation of Authority for Document Templates
	
Manage Content Documents
	
General Settings
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
Document Generation Tags
	
Document Generation Libraries and Differences
	
Custom Quote Tabs
	
Quote Tables
	
Quote Fields
	
Quote Tab Permissions
	
Quote List Settings
	
Bulk Quote Deletion
	
Quote Visibility
	
Quote Acceptance Settings
	
Partner Functions
	
Solution Design
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Format Permissions

On this page, you can define which permission groups of users can choose to generate output documents in different formats, such as Word and PDF. This is valid only for Simple Output templates with Word active files included.

By default, all permission groups are able to generate templates only in the format selected in Default Output Format in the Document Generation Templates page. The logic between multiple permission groups is OR. By default, the Visible to Everyone toggle option is deselected. In step 2, define the conditions under which the selected permission groups above will be able to generate documents in PDF format in addition to Word. This can also be written as a formula. By default, 1 is displayed in the condition box, meaning that the template is visible under all conditions. If you add 0, the visibility permissions for the selected permission groups above won't apply.

The page allows you to define which permission groups of users can be chosen during the document generation process. Only output templates (both Simple and Multi-Section) are available to users during the document generation process.

The Visibility Permissions tab is available for all types of templates (Output and Section).

Yes
No