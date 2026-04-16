# Format Permissions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f6cbb333caea43ed98b766870da8a747.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Template Definition
	
Sections
	
Visibility Permission
	
Format Permissions
	
Related Fields
	
Additional Content
	
Additional Documents
	
Delegation of Authority for Document Templates
	
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
Format Permissions

On this page, you can define which permission groups of users can choose to generate output documents in different formats, such as Word and PDF. This is valid only for Simple Output templates with Word active files included.

By default, all permission groups are able to generate templates only in the format selected in Default Output Format in the Document Generation Templates page. The logic between multiple permission groups is OR. By default, the Visible to Everyone toggle option is deselected. In step 2, define the conditions under which the selected permission groups above will be able to generate documents in PDF format in addition to Word. This can also be written as a formula. By default, 1 is displayed in the condition box, meaning that the template is visible under all conditions. If you add 0, the visibility permissions for the selected permission groups above won't apply.

The page allows you to define which permission groups of users can be chosen during the document generation process. Only output templates (both Simple and Multi-Section) are available to users during the document generation process.

The Visibility Permissions tab is available for all types of templates (Output and Section).

Yes
No