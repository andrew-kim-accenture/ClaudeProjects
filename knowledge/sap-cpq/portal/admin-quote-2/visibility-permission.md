# Visibility Permission | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e6903f385b6644bfb4072ef9e61456fb.html?locale=en-US&state=PRODUCTION&version=2603
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
Visibility Permission

The page allows you to define which permission groups of users can be chosen during the generation of documents. Only output templates (both simple and multi-section) are available on the user side during the generation of documents.

You can allow users to access specific templates when quotes are in a certain status. When setting the visibility of a section template, you allow/disallow access to that section only, not to the entire multisection template in which the section is included. Visibility is controlled via permission groups and defined conditions, which are the required data. To limit the visibility, unselect the Visible to Everyone toggle that is selected by default, and move the permission groups that should have access to the template to the Selected Permission Groups column. The logic between multiple permission groups is OR. In Step 2,Define the conditions under which the selected permission groups above will be able to have visibility permissions. It can also be formulated as a formula.. By default, a 1 is displayed in the condition box, indicating that the template is visible under all conditions. If you add a 0, visibility permissions for selected permission groups above will not apply.

The page allows you to define which permission groups of users can be chosen in the process of generating the documents. Only output templates (both simple and multi-section) are available on the user side during the process of generating the documents. Visibility Permissions tab is available to all types of templates (Output and Section).

Yes
No