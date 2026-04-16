# Deploying Permissions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/486d48cd00f54d788431b095ac9ef522.html?locale=en-US&state=PRODUCTION&version=2603
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
Deploying Permissions

To add permissions to the deployment package and deploy them, follow the steps below.

Create a deployment package as explained in Deployment Packages: select Permissions in Package Component and click Add.

A new page displays.

In Name, define a name for the package component.

(Optional) In Description, enter a description for the package component.

In Permission groups that will be sent, select the groups you want to add to the package.

All Permission Groups: all groups displayed in System Permission Groups are added to the package and sent to the destination environment.

Permission Groups

Selected Permission Groups: only the permission groups you select are added to the package and sent to the destination environment.

To move permission groups from System Permission Groups to Selected Permission Groups, use the right arrow. Alternatively, to remove permission groups from Selected Permission Groups, use the left arrow.

Click Add to Package.

The package component displays in the Deployment Package Component section on the Deployment Packages tab.

Click Save.

The package displays in the grid on the Deployment Packages tab.

Deploy the package as explained in Deployment Packages.

Data Sent to the Destination Environment

When deploying permission groups, the following data is sent to the destination environment:

custom permission groups

user types

companies

markets

brands

Note

If manually created permission groups contain users specified in the destination environment, new users will not be created in the destination environment. Additionally, permission groups that are set for some company may not exist in the destination environment. In this case, permission groups that do not exist in the destination environment will not be created.

Related Information
Permission Groups
On this page
Data Sent to the Destination Environment
Related Information
Yes
No