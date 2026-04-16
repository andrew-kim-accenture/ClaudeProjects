# Deploying Workflow | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/5886b76069314ae8bb403a9bc077b42f.html?locale=en-US&state=PRODUCTION&version=2603
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
Deploying Workflow

To add workflow to the deployment package and deploy them, follow the steps below.

Create a deployment package as explained in Deployment Packages: select Workflow in Package Component and click Add.

A new page displays.

In Name, define a name for the package component.

(Optional) In Description, enter a description for the package component.

In Select workflow per tab, select the workflow you want to add to the package.

My Quotes: workflow actions defined for the My Quotes tab are added to the package and sent to the destination environment.

Waiting for approval: workflow actions defined for the Waiting for approval tab are added to the package and sent to the destination environment.

Other Quotes: workflow actions defined for the Other Quotes tab are added to the package and sent to the destination environment.

Click Add to Package.

The package component displays in the Deployment Package Component section on the Deployment Packages tab.

Click Save.

The package containing workflow as a package component displays in the grid on the Deployment Packages tab.

Deploy the package as explained in Deployment Packages.

Excluding Objects from Workflow Deployment
When deploying a workflow, administrators can exclude the following objects from the Workflow Sending Checklist:

custom actions

notifications

email lists

If custom actions are excluded from the checklist, notifications and email lists that are attached to the excluded custom actions are not deployed. However, notifications and email lists attached to the standard actions in the workflow are deployed in a regular way (unless notifications and email lists are excluded from deployment).

Additionally, if custom actions are excluded from the checklist, the system decides whether to send the custom actions attached as pre/post actions to the target environment depending on whether the actions already exists in the source/target environments:

if the same custom action is attached as a pre/post action in both the source and destination environment, the action is sent to the destination environment (the existing action in the destination environment is updated).

if the same custom action exists on both environments, but it’s attached as a pre/post action only in the source environment and not in the target environment, after deploying the workflow, the custom action will be attached as a pre/post action in the target environment.

if a custom action exists only in the source environment and it’s attached as a pre/post action, after the deployment, the post action in the target environment will not have the custom action attached.

When deploying a workflow, administrators can choose between two buttons:

Update all workflows - current settings are overwritten by the settings from the source environment.

Only create new workflows - settings from the source environment are added to the current settings.

Data Sent to the Destination Environment

When deploying workflow, the following data is sent to the destination environment:

statuses

actions

IronPython custom actions

workflow permissions

pre-actionspost-actions

workflow conditions

workflow flags

notifications

email lists

required fields by workflow action

Related Information
Workflow-Approvals
On this page
Excluding Objects from Workflow Deployment
Data Sent to the Destination Environment
Related Information
Yes
No