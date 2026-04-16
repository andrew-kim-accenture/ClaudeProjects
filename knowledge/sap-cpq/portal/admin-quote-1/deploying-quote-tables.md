# Deploying Quote Tables | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/e544159602584a9fa2abb8693e396686.html?locale=en-US&state=PRODUCTION&version=2603
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
Deploying Quote Tables

To add quote tables to the deployment package and deploy them, follow the steps below.

Create a deployment package as explained in Deployment Packages: select Quote Tables in Package Component and click Add.

A new page displays.

In Name, define a name for the package component.

(Optional) In Description, enter a description for the package component.

In Table selection, select the quote tables you want to add to the package.

All Quote Tables: all available quote tables are added to the package and sent to the destination environment.

Selected Quote Tables: only the quote tables you select are added to the package and sent to the destination environment.

To move approval rules to Selected Quote Tables, use the right arrow. Alternatively, to remove approval rules from Selected Quote Tables, use the left arrow.

In Sending Checklist, select the checkboxes for Actions, Validations or Permissions if you want to include them in the package.

If you decide to deploy only one element (for example, Actions) of a quote table that does not exist on the destination environment, the system will first create the table in the destination environment and then create the action.

Click Add to Package.

The package component displays in the Deployment Package Component section on the Deployment Packages tab.

Click Save.

The package containing quote tables as a package component displays in the grid on the Deployment Packages tab.

Deploy the package as explained in Deployment Packages.

Note

Quote tables flagged as personally identifiable information and/or information with suppressed logging retain these flags after the deployment process.

Data Sent to the Destination Environment

When deploying quote tables, the following data is sent to the destination environment:

quote tables

attributes

permissions - all permission groups are always sent to the destination environment. Additionally, by selecting/deselecting the Permissions checkbox in the Sending Checklist, you control whether the permissions related to the quote table that is being deployed will be included in the package.

Note

When you deploy a quote table that is in a quote tab that only exists on the source environment, that quote tab is automatically created on the target environment and can be found under General  Tabs in Setup. However, since custom quote tabs are not sent to the target environment, you must manually activate it by adding it as a new tab in   Custom Quote Tabs.

Related Information
Quote Tables
On this page
Data Sent to the Destination Environment
Related Information
Yes
No