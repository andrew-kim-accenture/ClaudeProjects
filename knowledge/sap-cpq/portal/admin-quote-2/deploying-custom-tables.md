# Deploying Custom Tables | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/99c7fef223d5453fa80d0478f093532b.html?locale=en-US&state=PRODUCTION&version=2603
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
Deploying Custom Tables

To add custom tables to the deployment package and deploy them, follow the steps below.

Create a deployment package as explained in Deployment Packages: select Categories in Package Component and click Add.

A new page displays.

In Name, define a name for the package component.

(Optional) In Description, enter a description for the package component.

In Table selection, select the custom tables you want to add to the package.

All Custom tables: all available custom tables are added to the package and sent to the destination environment.

Selected Custom tables: only the custom tables you select are added to the package and sent to the destination environment.

To move available custom fields to Selected Custom tables, use the right arrow.

Alternatively, to remove custom fields from Selected Custom tables, use the left arrow.

Click Add to Package.

The package component displays in the Deployment Package Component section on the Deployment Packages tab.

Click Save.

The package containing custom tables as a package component displays in the grid on the Deployment Packages tab.

Deploy the package as explained in Deployment Packages.

Note

Custom tables flagged as personally identifiable information and/or information with suppressed logging retain these flags after the deployment process.

Data Sent to the Destination Environment

When deploying custom tables, no data other than custom tables is sent to the destination environment.

Note

The maximum size limit of custom tables that are sent to the destination environment is 20MB.

Note

If you are deploying a custom table to an environment that already contains a table with the same name, the outcome depends on whether you select Yes (all Custom tables will be updated) or No in the deployment questionnaire. If you select Yes, and a table with the same name already exists, the existing table is deleted and the new table with the same name is inserted. However, if you select No, existing tables aren't updated and new tables aren't created.

Access Rights

On source environments, you can:

Create deployment packages containing custom tables if the visibility of those tables is enabled for you with the Access Rights feature.

Send packages containing those custom tables to target environments.

On target environments you can:

Deploy packages containing custom tables only if you have editing access rights for them.

Create or update the existing custom tables from the package if you have editing access rights for custom tables. To do this, the visibility of custom tables needs to be granted to you with the Access Rights feature. If the package contains custom tables you can’t see, it can’t be deployed.

Related Information
Custom Tables
On this page
Data Sent to the Destination Environment
Access Rights
Related Information
Yes
No