# Deploying Global Scripts | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/4245167b7ec64cfbaf585be7a25625dc.html?locale=en-US&state=PRODUCTION&version=2603
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
Deploying Global Scripts

To add global scripts to the deployment package and deploy them, follow the steps below.

Create a deployment package as explained in Deployment Packages: select Approval Rule in Package Component and click Add.

A new page displays.

On the Scripts tab, define a name for the package component in the Name field.

You can view the events that are attached to global scripts on the Events tab.

(Optional) In Description, enter a description for the package component.

In Script Selection, select the scripts you want to add to the package.

All Scripts: all available scripts are added to the package and sent to the destination environment.

Selected Scripts: only the scripts you select are added to the package and sent to the destination environment.

To move scripts to Selected Scripts, use the right arrow. Alternatively, to remove approval rules from Selected Scripts, use the left arrow.

For each script in Selected Scripts, select which version of the script is sent to the destination environment.

Click on the script.

Available versions of the script display in the Scripts Sending Checklist, and the active version is preselected.

Select the checkboxes next to the versions you want to send.

Hover over the script version to view its content.

The most recent script version you select in the source environment will be active in the destination environment.

Click Add to Package.

The package component displays in the Deployment Package Component section on the Deployment Packages tab.

Click Save.

The package containing approval rules as a package component displays in the grid on the Deployment Packages tab.

Deploy the package as explained in Deployment Packages.

On the destination environment, in Setup  Develop  Global Scripts, locate the script you deployed and click  to view it.

On the History tab, you can see when the script was created and on what environment, as well as whether there are various versions of the script. You can also view description changes for each version in the Description column.

Data Sent to the Destination Environment

When deploying approval rules, the following data is sent to the destination environment: page: select

scripts

events

script history

Related Information
Approval Rules
On this page
Data Sent to the Destination Environment
Related Information
Yes
No