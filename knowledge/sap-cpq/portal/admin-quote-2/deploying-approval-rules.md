# Deploying Approval Rules | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/7821275d80134e9db38b53baec2348fc.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Workflow-Approvals
	
Develop
	
General Settings


	Setup Help

	
Application Parameters
	
Deploy / Send Changes


	
Deployment Setup
	
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
Deploying Approval Rules

To add approval rules to the deployment package and deploy them, follow the steps below.

Create a deployment package as explained in Deployment Packages: select Approval Rule in Package Component and click Add.

A new page displays.

In Name, define a name for the package component.

(Optional) In Description, enter a description for the package component.

In Approval Rules that will be sent, select the approval rules you want to add to the package.

All Approval Rules: all available approval rules are added to the package and sent to the destination environment.

Selected Approval Rules: only the approval rules you select are added to the package and sent to the destination environment.

To move approval rules from All Approval Rules to Selected Approval Rules, use the right arrow. Alternatively, to remove approval rules from Selected Approval Rules, use the left arrow.

Click Add to Package.

The package component displays in the Deployment Package Component section on the Deployment Packages tab.

Click Save.

The package containing approval rules as a package component displays in the grid on the Deployment Packages tab.

Deploy the package as explained in Deployment Packages.

Data Sent to the Destination Environment

When deploying approval rules, the following data is sent to the destination environment:

approval rules

custom approvers selection logic

selected approvers

delegation of approvals

user types

companies

Note

New users will not be created in the destination environment for the selected approvers.

Related Information
Approval Rules
On this page
Data Sent to the Destination Environment
Related Information
Yes
No