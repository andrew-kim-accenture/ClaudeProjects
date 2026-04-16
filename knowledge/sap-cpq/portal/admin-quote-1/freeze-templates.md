# Freeze Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/ccac451e717c4cb2bf86599d206f4722.html?locale=en-US&state=PRODUCTION&version=2603
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
Freeze Templates

This feature gives you an option to roll back the uncustomized (original) templates to the state they were in the previous SAP CPQ release.

The SAP CPQ development team only manages the original templates that customized templates are derived from. So, when a new release occurs, bear in mind that:

If the core template which you have customized has been modified in this release, you should apply the added changes to your customization, as well. If you don’t, some of the newly added SAP CPQ functionalities may be unavailable to you.

If the core template located in the same page as your customized template has been modified, check if these templates are compatible. If they aren’t, breaking changes may ensue, and you need to fix them independently or with the help of SAP CPQ Support team.

Note

SAP CPQ What’s New contains the list of all modified templates, for each release, as well as fixes for the known breaking changes.

If the breaking changes occur in a page when the release A is deployed, and you didn’t manage to apply the necessary fixes to the customized templates before the release B is deployed, you can use the Freeze Templates feature to roll back all uncustomized templates on the broken pages to the state they were in during the release A. In this way, you will have more time to deal with incompatibilities between templates.

Rollback from SAP CPQ to version A can be applied only until the version C is released. Once that occurs, all pages will be deployed to the version C, new breaking changes may occur, and the uncustomized templates can only be rolled back to the version B.

Page rollback is only a temporary solution. If you roll back uncustomized templates, the pages will work as they did in the previous release, but you may not see new functionalities or fixes that were applied to the environment with the new release. For this reason, once you freeze templates, you need to apply necessary changes to templates as soon as possible, or try to avoid using this feature altogether by fixing templates on broken pages before the release is deployed.

This feature should ONLY be used in the following cases:

if the breaking changes prevent you from working.

if you can’t fix the issues caused by breaking changes on your own in the period between the sandbox and the production release.

To access the feature, go to Setup  UI Design  Responsive Templates. Here, you can find all page names listed next to checkboxes used for rolling the pages back to the previous version. To freeze the uncustomized templates on a broken page, select the checkbox next to it.

Related Information
Responsive Templates
Customize Templates
Yes
No