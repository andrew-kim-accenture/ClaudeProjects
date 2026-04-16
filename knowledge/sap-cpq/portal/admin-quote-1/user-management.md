# User Management | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f1781d8c676349039f1490a4eb004f3c.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Import/Export
	
Delegation of Authority


	
User Management
	
Bulk Quote Reassignment
	
Ability to Manage Documents
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
User Management

This functionality enables users who aren’t SAP CPQ administrators to manage other users and companies.

Delegation of authority for user management is managed through two tabs: Management of users and Management of companies. The functionality is only available for the users with the Standard license.

Management of Users

The tab contains all conditions under which the authority for user management is delegated to users.

Note

If User who creates company can manage its users is selected, users who have created companies can automatically manage all new users that join those companies.

Click Add New to define a new condition. A new page displays, containing the following fields:

Field	Description


Permission Group

	

Type the name of the permission group to which you’re delegating authority, or click the Search icon to find a permission group.




Can Edit Users

	

Select All Company Users and allow the selected permission group to edit all users belonging to the same companies as the selected group. Alternatively, if you select Only if Managing Parent of Users, you’re allowing each user to manage those users to whom they’re set up as managing parents.




Can Manage Users of These User Types

	

Move user types to the right column to enable the selected permission groups to manage them.




Can Manage Users From These Companies

	

Select Users' own company to enable each user to manage other users pertaining to the same company. Alternatively, select specific companies.




Condition

	

Select either OR logic or AND logic depending on whether the users that are going to be managed need to adjust to both criteria (user type and company), or only one of these, respectively.




Can Allow Other Users Permissions to Administer Users

	

Enable the permission group to delegate authority for managing users.




Can Allow Other Users Permissions to Administer Companies

	

Enable the permission group to delegate authority for managing companies to other users.

Management of Companies

The tab displays all conditions under which the authority for managing companies is delegated to users.

Click Add New to define a new condition and fill out these fields:

Field	Description


Permission Group

	

Type the name of the permission group to which you’re delegating authority, or click the search icon to find a permission group.




Can Create New Companies

	

Enable the permission group to create new companies.




Can Edit These Companies

	

Select User's own company and allow each user in the permission group to edit their own company. Alternatively, select specific companies. In addition, you can choose the Where user belongs to the Permission Group which is an administrator option. It allows users from the selected permission group to edit companies for which they’re granted administrator rights through other permission groups (an administrator permission group is assigned to a company in Companies  Permissions).

On the user side of SAP CPQ, the Manage Users page displays all users that the logged user has the rights to manage. Adding and editing of users is also enabled.

On this page
Management of Users
Management of Companies
Yes
No