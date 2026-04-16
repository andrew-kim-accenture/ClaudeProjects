# Permission Groups | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/b584062269dc4672a8143effb4c14652.html?locale=en-US&state=PRODUCTION&version=2603
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
Permission Groups

The Permission Groups section in Setup  Users allows administrators to add new and modify existing permission groups.

Users should be included in a permission group to share access rights over SAP CPQ objects (Pricebooks, Tables on Quotes, etc.). As a result, administrators can assign access rights to multiple users in one click.

Permission groups can be filtered by specific and advanced criteria. To quickly filter permission groups, enter one of the following search queries in the search box:

permission group name

member name

Group members can be quickly filtered by their username.
Additionally, when using the Advanced Search, permission groups can be filtered by:

permission group name

description

members

User Search Logic
To add users to a group, administrators can perform simple and/or advanced search or browse for specific users. To do a simple search, you select User Types, Companies, Markets, and Brands. The logic AND is applied between each of the groups. However, if multiple values are selected within a group, the logic OR is applied. When combining simple and advanced search, the logic AND is applied. The advanced search is performed through formulas you can create when Advanced mode is selected.
Example
To enable the same permission rights to all Sales Administrators who work in SAP Sales Cloud, you should combine simple and advanced search. Selecting Sales and Sales Management user types and SAP Sales Cloud company filters a group of Users that match both criteria. After an advanced formula such as CTX(Visitor.IsAdmin ) is applied, the group is additionally filtered to Administrators. Due to AND logic between the simple and advanced search, the Permission Group contains Sales Administrators from SAP Sales Cloud.
Advanced Mode
The Advanced Mode allows you to filter Users per custom fields and also per fields that aren’t included in the simple search. To perform a search, you create a formula using SAP CPQ tags. Note that formulas should primarily be used to inspect the field values for the logged User. Retrieving values from the Quote and Configurator-related fields won’t return valid results.
Re-Evaluating Permission Group Formulas
Once a Permission Group formula is created, the system re-evaluates it on the following occasions to include/exclude Users:

When Users log in.

After saving personal details on the User Page.

When the Quote is loaded.

After the Quote market is changed.

If you create a formula inspecting a Quote field, the system doesn't re-evaluate it every time a change is made on the respective Quote but only when the Quote is loaded. The re-evaluation of formulas isn’t triggered by the changes on Quotes and consequently, the formula filters the same Users as before the change was made. Reloading the Quote re-evaluates the formula and corresponding Users are included in the Permission Group.


Create a Permission Group

To create a Permission Group, you can either apply simple and advanced filter criteria or browse for exact Users you wish to include in the group.
On this page
User Search Logic
Example
Advanced Mode
Re-Evaluating Permission Group Formulas
Yes
No