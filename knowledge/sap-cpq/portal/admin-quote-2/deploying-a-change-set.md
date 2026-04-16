# Deploying a Change Set | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ea872b6c01bc4790a94b542d2a58c6d3.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail


	
Audit Trail Logs
	
Change Set


	
Create Change Set
	
Deploying a Change Set
	
SAP CPQ Tags
Deploying a Change Set

It is possible to deploy active change sets from development and testing to sandbox and production environments.

In this initial phase of improved SAP CPQ transport mechanism, there are two ways to deploy change sets to target environments. You can either do it manually or via a deployment package.

Manual Deployment
Once you click the Deploy button in Setup   Audit Trail  Change Set, a popup window displays. You are prompted to select a target environment and a change set or change sets that should be deployed to it.

Target environments – a list of connected environments (Deploy/Send Changes  Deployment Setup  Connected Environment. If there are no connected environments, you need to establish a connection between environments first.

Change set grid – a grid with all active change sets. You can select change sets you wish to deploy here.

When a change set is deployed from one of development or testing environments, it will appear in the target environment’s list of active change sets. No changes previously performed in the source environment will be applied to that environment automatically or logged in the target environment’s Audit Trail.

Example
An administrator selects the CPQ Test change set in the source environment, performs some changes manually and sends that change set's definition to the target environment by clicking the Deploy button in the Change Set page. Then an administrator selects that change set on the target environment and applies the same changes manually there.
Deployment Package

To deploy a change set via a deployment package, navigate to the Deployment Packages tab in Setup  General  Deploy/Send Changes  Deployment Setup in the source environment and click Create Package. There, you can select the change set and deploy the package to the target environment.

The Change Set dropdown list is blank by default and selecting a change set from the list is mandatory. However, the field isn’t visible if there are no active change sets in the environment.

If the change set with that ID already exists in the target environment, it is preselected in Setup and all changes that were deployed in the package are applied in the target environment and logged as a part of that change set. If the change set does not exist in the target environment, it is created, preselected and all changes associated with it are applied in the target environment and logged in that environment's Audit Trail.

Note

If an administrator performs one change in the source environment as a part of the Change Set A and another change as a part of the Change Set B, there are no restrictions which prevent both changes to be sent as a part of the Change Set B if they are deployed in the same package when Change Set B was selected in Setup.

Related Information
Change Set
Audit Trail Logs
On this page
Manual Deployment
Example
Deployment Package
Related Information
Yes
No