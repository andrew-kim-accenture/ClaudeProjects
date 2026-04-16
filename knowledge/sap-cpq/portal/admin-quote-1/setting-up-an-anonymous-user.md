# Setting Up an Anonymous User | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/5f7cb1082a864ef4874c910217a55cdf.html#related-information
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


	
Users
	
User Types
	
Permission Groups
	
User Custom Fields
	
Companies
	
Guest User


	
User Registration
	
Setting Up an Anonymous User
	
Access Rights
	
Proxy Access
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Setting Up an Anonymous User

Preparations and steps to create a guest user.

Prerequisites

Before creating a new user account that will be used for guest users, there are some preparations to be done:

In the administration under Users, go to Companies to create a new company. For example, GuestUserCompany.

Go to User Types and create a user type for guest users.

Leave the Start page option empty.

Don’t change the visual styles except for Shopping Cart/Quote if necessary, since all other changes won’t be visible.

Set up the privileges for categories and products that are wanted to be visible for guest users. For more information, see Product Administration.

Guest users should have at least the Add Item action available, which is why Workflow Actions must also be set:

Go to the Work-flow/Approval menu and choose the Workflow Permissions option.

Choose the by User Types Premission type of listing and select the guest user's type that you created by clicking . This brings up the Workflow Permissions Edit screen.

In addition to the Add Items action, you can also add the actions Calculate and Save Quote. All other actions aren’t available for guest users and selecting them here won’t make any difference.

Procedure

After completing the prerequisites, you can start creating a guest user:

In the Users menu, go to Users and choose Add New.

Enter the user type and the company that you created for the guest user.

Fill the rest of fields as needed.

To finish, save the changes.

After the guest user account is successfully created, go to the Guest User and Default User Settings and select the guest user.

Note

Inactive users won’t be able to log in, so try not to get into situations where your SAP CPQ is set up to use inactive user as a guest account.

Related Information
Guest User
User Administration
On this page
Prerequisites
Procedure
Related Information
Yes
No