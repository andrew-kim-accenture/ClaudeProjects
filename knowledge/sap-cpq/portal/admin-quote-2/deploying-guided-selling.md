# Deploying Guided Selling | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ea1ee373d5784a8da21dd656f5b12b21.html?locale=en-US&state=PRODUCTION&version=2603
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
Deploying Guided Selling

To add guided selling products to the deployment package and deploy them, follow the steps below.

Create a deployment package as explained in Deployment Packages: select Approval Rule in Package Component and click Add.

A new page displays.

In Name, define a name for the package.

The name of the package component is automatically added as a prefix to each guided selling product name in the package, making it easier to discern which products belong to which package component.

You can view the events that are attached to global scripts on the Events tab.

(Optional) In Description, enter a description for the package.

In Guided Selling Product, click Add Product.

A pop-up appears, displaying all guided selling products in the system.

Select the checkboxes next to the guided selling products you want to add

Click Add Selected.

The selected guided selling products are displayed in Guided Selling Product.

Click Checklist next to each selected guided selling product to view the Product Sending Checklist for the product in question.

(Optional) In Product Sending Checklist, deselect the items you want to exclude from the package.

Rules, messages, images and styles, scripts and shipping methods can be safely excluded from the package.

Click Add to Package.

The package component displays in the Deployment Package Component section on the Deployment Packages tab.

Click Save.

The package containing guided selling products as a package component displays in the grid on the Deployment Packages tab.

Deploy the package as explained in Deployment Packages.

Data Sent to the Destination Environment

When deploying guided selling products, the following data is sent to the destination environment:

product name

product description

product part number

permissions and effectivity dates

additional formulas

configuration layout (tabs, order of attributes)

responder layout

product details layout

rules (you can choose not to send them)

messages (you can choose not to send them)

images and styles (you can choose not to send them)

scripts (you can choose not to send them)

attributes (attributes flagged as personally identifiable information and/or information with suppressed logging retain these flags after the deployment process)

attributes values

categories

product types

user types

shipping methods (you can choose not to send them)

replacement products

Note

Container attributes are sent to the destination environment for all newly created containers. However, if you make changes to the existing container attributes, you will have to manually update them in the destination environment.

Related Information
Guided Selling
On this page
Data Sent to the Destination Environment
Related Information
Yes
No