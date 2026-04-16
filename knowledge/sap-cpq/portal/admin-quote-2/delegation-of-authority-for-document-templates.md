# Delegation of Authority for Document Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/820e5de7d822431287d48458fbf30c6a.html?locale=en-US&state=PRODUCTION&version=2603
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
Delegation of Authority for Document Templates

On this page, you can define which permission groups of users are able to manage your templates by themselves in their User Menu.

For example, if a regional SAP CPQ administrator responsible for several markets wishes to authorize certain users in a specific market to create document templates, this feature can make that possible. Alternatively, if you select Visible to all permission groups, all users can manage the template locally in their User Menu.

In Step 2, 2 define the condition under which above selected permission groups will be able to manage template locally. It can also be written as a formula. By default, 1 displays in the condition box, meaning that the template is available for selected permission groups under all conditions. If you add 0, permissions for selected permission groups above won't apply.

When users are given the authority for managing a document generation template, the template becomes available in the Manage Global Document Templates section of the User Menu. Just like the administrators, users can select the language in which the template names and descriptions are displayed. The selection of languages on the administrator and user side is codependent (the language selected in one page is automatically selected in the other).

Templates which users can manage are organized into Output Templates and Section Templates sections. When users open a simple template, they can manage the details in Template Definition, Related Fields, and Additional Files tabs.

Under User Menu page Manage Global Document Templates, users can only manage existing delegated templates and can't add new templates or delete the existing delegated templates. This is a different behavior of using Delegation of Authority function from Setup.

Yes
No