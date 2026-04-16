# Troubleshooting Common Issues During Deployment | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e5eed95dd5f140a3a4446d33437342b8.html?locale=en-US&state=PRODUCTION&version=2603
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
Troubleshooting Common Issues During Deployment

The two most common issues you can encounter during deployment are as follows:

The shipping name already exists.

In this case, a shipping method with the same name, but different system ID, exists on both the source and destination environment.

The user type group name is already in use.

In this case, a user type with the same group name, but different system ID, exists on both the source and destination environment.

To fix the issues, you need to change the system ID of the conflicted shipping method or user type in the source environment.

To change the system ID of the shipping method:

In the source environment, go to Setup  Pricing/Calculations  Shipping.

Find the shipping in question and click  to edit it.

A new page displays.

In Shipping Method System Id, click  to change the system ID.

The field becomes editable.

Enter the system ID that matches the ID of the same shipping method in the target environment.

Click Save.

To change the system ID of the user type group name:

In the source environment, go to Setup  Users  User Types.

Find the group name in question and click the Edit button.

A new page displays.

In System ID, click  to change the system ID.

The field becomes editable.

Enter the system ID that matches the ID of the same user type in the target environment.

Click Save.

Yes
No