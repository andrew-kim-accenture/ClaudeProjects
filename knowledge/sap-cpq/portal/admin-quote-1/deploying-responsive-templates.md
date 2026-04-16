# Deploying Responsive Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/1c6c26fc3eac484ea9ec865c9162fcab.html?locale=en-US&state=PRODUCTION&version=2603
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
Deploying Responsive Templates

To add responsive templates to the deployment package and deploy them, follow the steps below.

Create a deployment package as explained in Deployment Packages: select Responsive Templates in Package Component and click Add.

A new page displays.

In Name, define a name for the package component.

(Optional) In Description, enter a description for the package component.

In Template Selection, select the responsive templates you want to add to the package.

All Responsive Templates: all available responsive templates are added to the package and sent to the destination environment.

Selected Responsive Templates: only the responsive templates you select are added to the package and sent to the destination environment.

To move available responsive templates to Selected Templates, use the right arrow.

Alternatively, to remove responsive templates from Selected Templates, use the left arrow.

Click on a template in Selected Templates.

Checkboxes display in the Responsive Templates Checklist, allowing you to select the version of the template you wish to deploy. The active version will be selected by default.

Click Add to Package.

The package component displays in the Deployment Package Component section on the Deployment Packages tab.

Click Save.

The package containing responsive templates as a package component displays in the grid on the Deployment Packages tab.

Deploy the package as explained in Deployment Packages.

Data Sent to the Destination Environment

When deploying responsive templates, the following data is sent to the destination environment:

responsive templates

responsive templates history

Yes
No