# Responsive Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/7bb67e2f0a7c4b0b8be15fea04603cd6.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design


	Setup Help

	
Branding
	
Catalog Layout
	
Quote Layout
	
Responsive Templates


	
Responsive Template Customization in Setup
	
Responsive Design Customizations
	
Template Versions
	
Freeze Templates
	
Obsolete Features
	
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
Responsive Templates

Responsive templates are building blocks of all pages in SAP CPQ’s Responsive Design. Templates define the look and feel of the application – colors, icons, the order in which buttons are displayed, and so on.

Each page in the application consists of at least one template. For example, the Catalog page consists of the CatalogPage template, while the ApprovalHistory page consists of ApprovalHistoryPage and Editors/DelegatedApprovers templates. Some templates are used on multiple pages in SAP CPQ. These templates are stored in the Shared page.

In Setup  UI Design  Responsive Templates, you can see which templates SAP CPQ pages consist of if you click Add New and scroll through the contents of the Page and Template dropdown lists respectively.

On the user side, you can see which templates are used on pages by performing a right click and selecting Inspect Element from the context menu. In the following screenshot, the CatalogPage template can be seen in the Catalog page.

Responsive templates can be left as is, although some administrators choose to customize their environments by changing the responsive templates they contain. Core templates are always compatible with new SAP CPQ features, so you don’t need to modify them each time a release occurs. Preserving the original state of core templates minimizes the risk of breaking changes occurring, as well. If you customize templates, you also need to manage them each time a release occurs, and their pages are changed. It’s highly recommended that you customize responsive templates only when necessary, and apply minimal changes, which can easily be tracked and modified.

Note

When creating custom Razor pages, all HTML and JS capabilities are available to users with administrator privileges.

Yes
No