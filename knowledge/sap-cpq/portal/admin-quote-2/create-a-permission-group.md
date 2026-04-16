# Create a Permission Group | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/f57d4e7a91b3440f915238b1ce6b5e57.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Users
	
User Types
	
Permission Groups


	
Create a Permission Group
	
User Custom Fields
	
Companies
	
Guest User
	
Access Rights
	
Proxy Access
	
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
Create a Permission Group

To create a Permission Group, you can either apply simple and advanced filter criteria or browse for exact Users you wish to include in the group.

Procedure
In Setup, access Users  Permission Groups.
Define the name of the permission group. The System Id is automatically generated as you enter the name of the group.
(Optional) In Description, describe the group and add any additional notes you might have.
In Logic Between Selected Permission Groups, select one of the following values:
AND - the user must belong to all selected permission groups to be included in the main permission group.
OR - the user must belong to at least one of the selected permission groups to be included in the main permission group.
Move permission groups from Available Permission Groups to Selected Permission Groups.
Type a search query into the Available Permissions Groups search box.
Expand the group (for example, Companies) and select a specific group from the list that displays (for example, SAP Sales Cloud). Alternatively, to expand all available permission groups, click Expand All. Selecting a specific permission group from the list is done by either clicking on the name of the group in question or by clicking the arrow that appears when hovering over the name of the group.
Add all groups belonging to the main permission group. To do so, hover over the name of the main permission group and click either Add all or the rightward-pointing arrow. The selected permission groups are listed in Selected Permission Groups.
Enable the Advanced mode toggle switch for a more complex filtering. In advanced mode, you can create formulas to inspect values of User custom fields.
Click Formula Builder and a formula builder pops up.
Create an advanced formula using tags. The system accepts only the tags that pull values from the fields of the logged User. You can’t pull values from the Quote or the Configurator context.
Click Save. The filtered Users are included in the group.
Note

If you know the names of Users you wish to include, you should skip the simple and advanced search and enter their name in the Users search field. Multiple selections are allowed and the list of Users is displayed below the search field.

Caution

In the advanced mode of Permission Groups, do not use the tag Visitor.BelongsToPermissionGroup.

For more details on defining permission groups, click See how to combine fields into permission group, placed above Available Permission Groups.
Related Information
Permission Groups
User Administration
On this page
Procedure
Related Information
Yes
No