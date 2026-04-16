# How to Reuse Custom Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/b48e8ddf5111454fab8f453e4b41c0ae.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Business Partners
	
User Administration
	
User Interface Design


	Setup Help

	
Branding
	
Catalog Layout
	
Responsive Templates


	
Responsive Template Customization in Setup
	
Responsive Design Customizations


	
Prerequisites
	
Knockout Extension Functions
	
Customization Examples
	
Advanced Customization Examples
	
Server Side Rendering


	
Translation function
	
PartialWithNameAsComment Function
	
How to Reuse Custom Templates
	
Url.MTContent
	
Manage Custom CSS/JS Files with File Manager
	
Upgrade Templates to Newer Versions with Newer Releases
	
Template Versions
	
Freeze Templates
	
Obsolete Features
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
How to Reuse Custom Templates

The purpose of shared template is that we can use it on many places, as part of some other template or as separate template. So, with this possibility we don't have to write the same code so many times.

Procedure
Go to Setup  UI Design  Responsive Templates and click Add New button.
Configure template as shown below.
After shared template is created, we can use it within some other template. For example, if we have template for Catalog page and we want to use some shared template within it, we simply call it with @html.PartialCustomTemplate("Template_Name") where we want to add that part.
Results
After naming shared template we will see it as part of Catalog page template when we exit setup. As it is shown below, the point where is shared template placed matches the point where we call it within the code (on the top of the page).
On this page
Procedure
Results
Yes
No