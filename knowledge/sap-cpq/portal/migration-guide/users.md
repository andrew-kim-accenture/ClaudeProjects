# Users | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/87792398ec3a4861a90bf00eec2d3256.html?locale=en-US&state=PRODUCTION&version=2603
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
Users

*Migration Effort Estimate Legend

Migration Overview

Setup Section Name

	

Availability in Quote 2.0

	

Status in Quote 2.0

	

Description

	

Migration Effort Estimate

	

Migration Instructions




User Types

	

Available

	

Improved

	

The feature works in the same way in both engines, only one option has changed.

	

S

	

Migration Instructions




Permission Groups

	

Available

	

Improved

	

The feature works in the same way in both engines, only some of the related CTX tags have changed. You need to update the changed CTX tags after the migration.

	

M

	

Migration Instructions

Migration Instructions
User Types

The option When creating a new quote, require customer to be selected first (available in user page administration in Quote 1.0) has been deprecated in Quote 2.0. In Quote 1.0, after creating a quote, the user is redirected to the Customer page. To achieve the same in Quote 2.0, you need to edit the respective user type and in Start Page select New Quote and a new quote will be created when the user logs in.

Permission Groups

The Advanced Mode of permission groups settings allows the use of CTX tags in both quote engines. However, some CTX tags have changed in Quote 2.0. For example, the CTX tags for customers have been deprecated and new tags for involved parties are added. To check if you need to make any changes, edit a permission group in Setup  Users  Permission Groups. Scroll down to the Advanced mode. If the Advanced Mode toggle is disabled, no changes are required. If Advanced Mode is enabled, check to see if the tag is available in Quote 2.0 by browsing through tags in this list.

On this page
Migration Overview
Migration Instructions
Yes
No