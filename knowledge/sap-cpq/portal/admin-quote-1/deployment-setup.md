# Deployment Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/002b8aaa619547459ff5ae2e7f009856.html?locale=en-US&state=PRODUCTION&version=2603
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
Deployment Setup

On the Deployment Setup tab, you connect your current environment, also known as source environment, to the environments to which you want to deploy changes.

Note

To enhance the security of data transfers, token-based authentication has been introduced for the Deploy / Send Changes feature in the 2602 release. The existing authentication mechanism is now obsolete and will be removed in the 2608 release. Backward compatibility is maintained for existing environments during the deprecation period. However, newly created connections only support the new approach.

If you have connected environments that were set up with the legacy authentication mechanism, you will see a warning icon next to them. This icon alerts you that these environments aren't yet configured for the new authentication approach. Follow the procedure explained in this document to re-authenticate them. Once you reconfigure the environment to use the new token-based approach, the warning disappears. For more information, see As of 2608: Removal of the Legacy Authentication for the "Deploy / Send Changes" Feature.

Prerequisites

You have the Client ID and Client Secret for the target environment.

To generate the Client ID and Client Secret:

Log in to the target environment and navigate to Setup  Security  Trusted Applications.

Create a Client ID and Client Secret using the Client credentials grant.

Select a user for whom the token will be generated when sending packages.

Set Up the Current Environment

To set up your current environment, follow the steps below.

In Current Environment, click Add Current Environment.

A pop-up displays.

Environment Type, URL (without http prefix) and Domain are prepopulated with the current environment information.

Click Save.

Your current environment displays in the Current Environment section, where it can be edited or deleted.

Set Up the Target Environment

Users can send changes made in the current environment to a target environment. To connect your current environment to a target environment, follow the steps below.

In Connected Environment, click Add Connected Environment.

A pop-up displays.

Select the destination environment type from the Environment Type dropdown list.

Test, Production and Sandbox environment types are available.

In URL (without http prefix), enter the URL of the destination environment without the http prefix (for example, yourdomain.cpq.cloud.sap).

In Domain, enter your tenant name on the destination environment (for example, webcomqa).

In Client ID, enter the Client ID of the target environment generated in step 2 of Prerequisites.

In Client Secret, enter the Client Secret of the target environment generated in step 2 of Prerequisites.

Click Save.

The destination environment displays in the Connected Environment section.

Note

You can connect multiple target environments to your current environment.

On this page
Prerequisites
Set Up the Current Environment
Set Up the Target Environment
Yes
No