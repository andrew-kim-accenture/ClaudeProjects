# Deploying Item Actions Workflow | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/b1555532617f4894b5bd41f809513c33.html?locale=en-US&state=PRODUCTION&version=2603
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
Deploying Item Actions Workflow

To add item actions workflow to the deployment package and deploy them, follow the steps below.

Create a deployment package as explained in Deployment Packages: select Approval Rule in Package Component and click Add.

A new page displays.

In Name, define a name for the package component.

(Optional) In Description, enter a description for the package component.

In Select item actions workflow per tab, select the e item actions you want to add to the package.

My Quotes: item actions defined for the My Quotes tab are added to the package and sent to the destination environment.

Waiting for approval: item actions defined for the Waiting for approval tab are added to the package and sent to the destination environment.

Other Quotes: item actions defined for the Other Quotes tab are added to the package and sent to the destination environment.

Click Add to Package.

The package component displays in the Deployment Package Component section on the Deployment Packages tab.

Click Save.

The package containing item actions workflow as a package component displays in the grid on the Deployment Packages tab.

Deploy the package as explained in Deployment Packages.

Data Sent to the Destination Environment

When deploying item actions workflow, the following data is sent to the destination environment:

item actions

item actions workflow

Note

New users will not be created in the destination environment for the selected approvers.

Related Information
Item Actions Workflow
On this page
Data Sent to the Destination Environment
Related Information
Yes
No