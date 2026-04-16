# Workflow/Approval | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/23b43660662b4d819f7b5117327de7af.html?locale=en-US&state=PRODUCTION&version=2603
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
Workflow/Approval

*Migration Effort Estimate Legend

Migration Overview

Setup Section Name

	

Availability in Quote 2.0

	

Status in Quote 2.0

	

Description

	

Migration Effort Estimate

	

Migration Instructions




Actions

	

Available

	

Improved

	

A number of workflow actions are yet to be added to Quote 2.0 and some have been deprecated.

	

S

	

Migration Instructions




Workflow

	

Available

	

Improved

	

The functionality has stayed unchanged in Quote 2.0. However, if you are using deprecated CTX tags in conditions, you'll need to update them.

	

S

	

Migration Instructions




Notifications

	

Available

	

Improved

	

The functionality has stayed unchanged in Quote 2.0. However, if you are using deprecated CTX tags in the message body, you'll need to update them.

	

S

	

Migration Instructions




Approval Rules

	

Available

	

No Change

	

The functionality has stayed unchanged in Quote 2.0. However, if you are using deprecated CTX tags in the approval rules, you'll need to update them.

	

S

	

Migration Instructions

Migration Instructions
Actions

Check which actions are obsolete and which are still not implemented in Quote 2.0 to see if there is anything that you need to change in your implementation. The most common actions like Add Item and Generate Document have been implemented. The workaround for any missing system actions is to create custom actions instead.

Workflow

Check which CTX tags have been deprecated and updated and update your conditions.

Notifications

Check which CTX tags have been deprecated and updated and update your notifications.

Approval Rules

Check which CTX tags have been deprecated and updated and update your approval rule conditions and dynamic approvers.

On this page
Migration Overview
Migration Instructions
Yes
No