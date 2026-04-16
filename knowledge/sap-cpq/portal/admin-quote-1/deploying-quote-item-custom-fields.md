# Deploying Quote Item Custom Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f8ac584ae9bf40cb8fd840f6ab0c6791.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings


	Setup Help

	
Application Parameters
	
Deploy / Send Changes


	
Deployment Packages


	
Deploying Approval Rules
	
Deploying Cart Level Aggregates
	
Deploying Categories
	
Deploying CRM Integration
	
Deploying Currencies
	
Deploying Custom Actions
	
Deploying Custom Calculations
	
Deploying Custom Fields
	
Deploying Custom Tables
	
Deploying Global Scripts
	
Deploying Guided Selling
	
Deploying Item Actions Workflow
	
Deploying Markets
	
Deploying Notifications
	
Deploying Permissions
	
Deploying Products
	
Deploying Quote Item Custom Fields
	
Deploying Quote Tables
	
Deploying Responsive Templates
	
Deploying Territories
	
Deploying User Types
	
Deploying Workflow
	
Troubleshooting Common Issues During Deployment
	
Deployment Setup
	
Deployment Templates
	
Report Module
	
Countries/Regions, States and Territories
	
Dictionaries
	
Manage Generated Documents
	
File Management
	
Email Settings
	
Time Zones
	
Custom Tabs
	
Recurring Background Jobs Executed on Tenants
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Deploying Quote Item Custom Fields

To add quote item custom fields to the deployment package and deploy them, follow the steps below.

Create a deployment package as explained in Deployment Packages: select Quote Item Custom Fields in Package Component and click Add.

A new page displays.

In Name, define a name for the package component.

(Optional) In Description, enter a description for the package component.

In Selected quote item custom fields, select the quote item custom fields you want to add to the package.

All quote item custom fields: all available quote item custom fields are added to the package and sent to the destination environment.

Selected quote item custom fields: only the quote item custom fields you select are added to the package and sent to the destination environment.

To move available quote item custom fields to Selected quote item custom fields, use the right arrow.

Alternatively, to remove quote item custom fields from Selected quote item custom fields, use the left arrow.

In Quote layout permissions selection, select the quote layout permissions you want to add to the package

All quote layout permissions: all available quote layout permissions are added to the package and sent to the destination environment.

Selected quote layout permissions: only the quote layout permissions you select are added to the package and sent to the destination environment.

To move available quote layout permissions to Selected quote layout permissions, use the right arrow.

Alternatively, to remove quote layout permissions from Selected quote layout permissions, use the left arrow.

Don’t deploy quote layout permissions: quote item custom fields are deployed without quote layout permissions.

(Optional) In the Optional section, if you are deploying quote item custom fields sourced from quote or custom tables and you want to also deploy those source tables, select the checkbox Quote Tables or Custom Tables.

The selected type of tables is now deployed together with the quote item custom fields which reference them.

Click Add to Package.

The package component displays in the Deployment Package Component section on the Deployment Packages tab.

Click Save.

The package containing quote item custom fields as a package component displays in the grid on the Deployment Packages tab.

Quote item custom fields display in the user’s selected language. If a field hasn’t been translated to the selected dictionary, the name in English displays with the QuoteLayout.Columns. prefix.

Deploy the package as explained in Deployment Packages.

Note

Quote item custom fields flagged as personally identifiable information and/or sensitive information retain these flags after the deployment process.

Data Sent to the Destination Environment

When deploying approval rules, the following data is sent to the destination environment: page: select

quote item custom fields

quote layout permissions

custom permission groups

user types

companies

markets

brands

quote tables and custom tables (they are deployed if they are used as source tables for the deployed quote item custom fields, and the checkbox Quote Tables or Custom Tables is selected in the Optional section)

Note

The following data needs to be manually copied to the destination environment:

quote custom tabs

users (if manually created permission groups have users specified in them)

quote tables (if they are referenced by a deployed custom field whose type is autocomplete attribute)

custom tables (if they are referenced by a deployed custom field whose type is autocomplete attribute)

Additionally, if a deployed quote item custom field contains CTX tags, it is necessary to check the fields included in the package, in case the formula contains fields that are not included by default.

Related Information
Quote Item Custom Fields
On this page
Data Sent to the Destination Environment
Related Information
Yes
No