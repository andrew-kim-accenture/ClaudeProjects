# Sales Organization Visibility | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e587c68fe73b4728a86d0ebdc55fdcb4.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration


	
Sales Area Assignments
	
Sales Organizations
	
Distribution Channels
	
Divisions
	
Payment Terms
	
Shipping Conditions
	
Incoterms
	
Sales Organization Visibility
	
Sales Area Parameters
	
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
	
SAP CPQ Tags
Sales Organization Visibility

Display sales organizations on a quote based on the visibility setup.

Overview

You manage sales organization visibility rules under Setup  Sales Area  Sales Organization Visibility.

The Sales Organization Visibility setup section consists of the list of configured visibility rules. In this section you can create, edit, and delete sets of rules.

Rule Settings

To configure a sales organization visibility rule:

Name and describe in detail the visibility rule for identification purposes.

Select one or more sales organizations for which you want the rules to apply..

Choose to which permission groups the visibility rule applies.

Permission Groups

The selected permission groups define to whom the visibility rule applies. If you select more than one permission group, the rule applies to either of the selected permission groups.

Example

You select the user John Doe and the user type Sales Manager. That way, the rule conditions apply to either John Doe or any user that is a sales manager. In this example, John Doe doesn't have this user type.

If no permission groups are selected, the visibility rule applies to all users.

You can select from the following permission groups:

Permission Group Type

	

Description

	

Setup




Company

	

Permission based on the organization to which your users belong.

	

In the setup, companies are configured under Users  Companies and then assigned to users.

For more information, see Companies.




Custom Permission Groups

	

Permission based on customized permission groups.

	

In the setup, custom permission groups are configured under Users  Permission Groups.

For more information, see Permission Groups.




Brand

	

Permission based on brand design for the user interface.

	

In the setup, brands are configured under UI Design  Branding and then assigned to users in the User Administration.

For more information, see Branding and Users.




User Type

	

Permission based on user type of the users.

	

In the setup, user types are configured under Users  User Types and then assigned to users.

For more information, see User Types.




User

	

User accounts in your SAP CPQ tenant.

	

In the setup, users are configured under Users  Users.

For more information, see Users.

On this page
Overview
Rule Settings
Permission Groups
Yes
No