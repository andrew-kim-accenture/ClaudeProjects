# Deploy / Send Changes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/52daf1898110473ca20a1060a4f6db0d.html?locale=en-US&state=PRODUCTION&version=2603
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
Deploy / Send Changes

The Deploy / Send Changes functionality enables you to send changes made in one SAP CPQ environment (such as sandbox or test) to another (such as production).

For example, imagine that you made several changes to a product in your sandbox environment (for instance, you added formula rules, attribute triggers and global scripts). After running tests and concluding that the changes will not break your existing customizations in the production, you can use the Deploy / Send Changes feature to send and deploy the product to the production environment.

To access this feature, go to Setup  General  Deploy  Send Changes. The page that displays contains the following tabs:

Deployment Setup

Deployment Packages

Deployment Templates

Note

Products and attributes synchronized from the back end can’t be sent or deployed using this feature. However, they can be referenced in the deployment package using their system ID. For example, if a synchronized product is referenced in the container of a product bundle, this container will keep the reference to that synchronized product after deployment, but that referenced product should already exist in the target tenant. It is expected that these synchronized products exist in the target tenant and that they are in the correct state (that is, that they have the same attributes as the synchronized products in the source tenant).

Yes
No