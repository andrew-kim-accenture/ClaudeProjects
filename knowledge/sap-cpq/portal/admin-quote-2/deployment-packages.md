# Deployment Packages | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/d545907a71f44adcb2c8bf81f39186f2.html?locale=en-US&state=PRODUCTION&version=2603
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
Deployment Packages

Deployment packages enable you to combine one or more SAP CPQ objects (such as products, users, templates, and so on) into a package, which you can then deploy to the target environment.

SAP CPQ objects that can be combined into a package are referred to as package components or change types. Additionally, you can make changes to the deployment package as many times as needed, which makes the deployment process more flexible. You can create a deployment package in SAP CPQ or upload an existing deployment package. Details are provided in the following sections. Deploying an object that already exists in the target environment overwrites the existing object.

Note

When products, attributes, attribute values, categories, product types, tabs, configuration templates, details templates, user types, shipping methods, global scripts, custom actions, custom calculations, product-level scripts, or Responsive Design templates are deployed/sent to other environments, their system ID remains the same. If an entity with several versions is deployed to another environment, all versions will have the same system ID, and the entity can be filtered according to the creation dates of its versions.

Create a Deployment Package

To define a deployment package, follow the steps below.

Go to Setup  General  Deploy / Send Changes  Deployment Packages.

Click Create Package.

A new page displays.

In the Create New Package section, enter a name for the deployment package.

(Optional) Enter a description of the deployment package in the dedicated fields.

(Optional) If you’re deploying a Change Set to the destination environment, select the change set to which changes within that package are assigned in the Change Set dropdown list.

In Destination Environment, select the target environment to which you want to deploy the package. If you previously set up only one target environment on the Deployment Setup tab, this environment is selected by default. Otherwise, you can choose your destination environment by selecting the appropriate radio button.

In the Deployment Package Component section, select the SAP CPQ object you want to add to the package from the Package Component dropdown list. There is no limit to the number of components you can add to the deployment package.

The Select Components radio button is selected by default when creating a deployment package. This option allows you to select and add package components.

The Apply Template radio button allows you to select and add a deployment template. Once you add a template, the product components from the template display in the grid.

Click Add.

A Product Sending Checklist opens, corresponding with the component you have previously chosen. Click on a specific component in the list below to see the next step.

The following is a list of package components that can be added to the deployment package and deployed. Click the appropriate link to learn how to add a particular component.

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

Once you add a package component, save your changes. The newly created package is displayed in the grid on the Deployment Packages tab. You can perform the following actions on the package:

clone

edit

download

send

delete

The grid displays the following columns: Package Name, Package Description, Source Environment, Destination Environment, Comment, Status Date and Status. You can sort the columns in an ascending or descending order by clicking the arrows next to the column name. Additionally, values in columns can be searched by entering a query in the dedicated box and clicking on Search or by pressing Enter.

Note

The system uses System ID to match entities in the source and the target environment. If there is an entity with the same System ID but a different name in both environments, the system will display an error and the deployment will be unsuccessful. The message in the user interface states the name of the entity that caused the issue. To fix the issue, you should change the System ID or the name of the scripts. To update the existing entity, adjust the name and System ID so they match. If you want to create a new entity in the target environment, make sure that the name and the System ID of the entities are different in the two environments.

Upload a Deployment Package

Apart from creating a deployment package from start to finish, you can also upload an existing package from your computer. Uploaded packages can be managed the same way as any packages made in SAP CPQ.

Go to Setup  General  Deploy / Send Changes  Deployment Packages.

Click Upload Package.

A pop-up displays.

In the Comment field, enter a comment for the package. This field is mandatory.

Click Choose File to browse and select the package you want to upload.

Click Upload.

The uploaded package displays in the grid on the Deployment Packages tab. The status of the package is Uploaded.

Note

Only .zip files can be uploaded.

Decompressing a .zip file creates a folder of the same name. If you decompress a .zip file and subsequently decide to compress it again in order to upload it back to SAP CPQ, you should open the folder, compress the contents into a .zip file and upload the file. Compressing the folder (as opposed to opening the folder and compressing the contents) prevents the .zip file from properly uploading.

Deploy a Package

To deploy a package to the destination environment, follow the steps below.

Click  next to the package name in the current environment.

The package is automatically sent to the destination environment.

Log into the destination environment.

Go to Setup  General  Deploy / Send Changes  Deployment Packages.

Find the package you sent to the destination environment.

The status of the package in the destination environment is Received, so you can search by Status to find the package more easily.

Click  next to the package name to deploy the package.

A new page displays.

In the Deployment Package Component section, define or change the deployment order of components:

Click  next to the package component.

A pop-up displays.

In Deployment Order, enter a number to define the order in which the component is deployed.

Click Update.

In the Deployment Questionnaire section, answer additional questions about the package components. The questions are specific to the package component that is being deployed.

Click Deploy.

A message displays, notifying you whether the deployment was successful. The deployed package is displayed in the grid and has the status Deployed. You can view the content of the deployed package by clicking  next to its name

Note

The size limit for deployment packages is 20 MB.

On this page
Create a Deployment Package
Upload a Deployment Package
Deploy a Package
Yes
No