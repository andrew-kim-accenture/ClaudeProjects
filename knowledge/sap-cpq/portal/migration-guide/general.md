# General | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/43016352d73f470fad2072da5d398512.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Migration Guide to Quote 2.0 EngineVersion: 2603English
Provide feedback on our search

	
SAP CPQ Migration Guide to Quote 2.0 Engine
	
About Quote 2.0 - Benefits and Compatibility
	
Quote 2.0 Migration Process
	
Migration Effort Estimate


	
Quote 1.0 vs Quote 2.0 - Feature Differences
	
Feature Specific Migration Instructions


	
Pricing/Calculations
	
Products
	
Quotes
	
Customers/Customer Roles
	
Users
	
CRM Integration
	
Providers
	
UI Design
	
Workflow/Approval
	
Develop
	
General
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
Migration Effort Estimate Legend
	
Quote 2.0 Migration Checklist
	
Support Procedure for Migration to Quote 2.0
	
Quote 1.0 to Quote 2.0 Migration FAQ
General

*Migration Effort Estimate Legend

Migration Overview

Setup Section Name

	

Availability in Quote 2.0

	

Status in Quote 2.0

	

Description

	

Migration Effort Estimate

	

Migration Instructions




Application Parameters

	

Available

	

Improved

	

There are some application parameters that are no longer available in Quote 2.0 or that are exclusive for Quote 2.0.

	

S

	

Migration Instructions




Deploy/Send Changes

	

Available

	

No Change

	

Deployment packages created in Quote 1.0 won't work in Quote 2.0 so you need to recreate them

	

S

	

Migration Instructions




Report Module

	

Available

	

Changed

	

Different table structures are used between engines, and therefore a new structure must be adopted for reports data sources so that reports work on the new engine.

	

S

	

Data sources must be changed so the table structure from Quote 2.0 is used.

Migration Instructions
Application Parameters

List Price is not editable in Quote 2.0, you can't add it to the Fields, Calculations, Layout section and there aren't any application parameters that interact with this field. If you are using these application parameters (for example, Allow Edit List Price on the Cart), you need to consider refactoring how and why these are in use. Additionally, the application parameters allowing users to select responsive design have been obsolete because responsive design is mandatory for Quote 2.0.

Review the list of application parameters and check their availability in Quote engines.

Deploy/Send Changes

Deployment packages created in Quote 1.0 will not work in Quote 2.0 because you can only send/deploy packages within the same quote engine. Recreate the packages from Quote 1.0 in Quote 2.0.

On this page
Migration Overview
Migration Instructions
Yes
No