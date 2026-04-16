# Visibility Permission | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/e6903f385b6644bfb4072ef9e61456fb.html?locale=en-US&state=PRODUCTION&version=2603
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
Visibility Permission

The page allows you to define which permission groups of users can be chosen during the generation of documents. Only output templates (both simple and multi-section) are available on the user side during the generation of documents.

You can allow users to access specific templates when quotes are in a certain status. When setting the visibility of a section template, you allow/disallow access to that section only, not to the entire multisection template in which the section is included. Visibility is controlled via permission groups and defined conditions, which are the required data. To limit the visibility, unselect the Visible to Everyone toggle that is selected by default, and move the permission groups that should have access to the template to the Selected Permission Groups column. The logic between multiple permission groups is OR. In Step 2,Define the conditions under which the selected permission groups above will be able to have visibility permissions. It can also be formulated as a formula.. By default, a 1 is displayed in the condition box, indicating that the template is visible under all conditions. If you add a 0, visibility permissions for selected permission groups above will not apply.

The page allows you to define which permission groups of users can be chosen in the process of generating the documents. Only output templates (both simple and multi-section) are available on the user side during the process of generating the documents. Visibility Permissions tab is available to all types of templates (Output and Section).

Yes
No