# Creating Favorites Permissions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/3e9fa5b52d93471d9c04b8f8bc37a77f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Product Implementation
	Product Actions
	
Product Categories
	
Attributes
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites


	
Creating Favorites Permissions
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	Integrations
	
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
	
SAP CPQ Tags
Creating Favorites Permissions

Create Favorites Permissions enables you to limit users who are permitted to share Favorites.

Let’s say you’re a large industrial manufacturer, comprising a tools unit and an equipment unit, with one unit having no involvement in the operations of another. In this case, you want only the tools unit, and not the equipment unit, to be able to see the tools Favorites, and vice versa. Create Favorites Permissions allows you and other SAP CPQ users to define parties (individual users, company branches, or specific departments) affected by, and involved in your product configurations who are able to share the Favorites.

Using the Feature

With Create Favorites Permissions, you can:

Notify sales representatives about the new product versions when they add, configure or edit their favorites

To do so, turn on the toggle: Display the "Upgrade to New Version" dialog box on the Add, Configure, or Edit action

Define user types who will be able to define favorites at the company level

Select user types from the list view in the first panel. Those users can grant permission to other users within their company to view the shared favorites.

Tick the Everyone checkbox to give everyone the permission within their company to share Favorites.

Note

Favorites created by a user with the appropriate rights will remain visible inside their company even if the option Define user types who will be able to define favorites on company level is later disabled for that user. In that scenario, the user will no longer be able to create favorites, but those they created previously will still be accessible on the company level.

Define user types who will be able to define favorites at the tenant level

Select user types from the list view in the second panel. Those users can grant permission to all users within SAP CPQ to view the shared favorites.

Tick the Everyone checkbox to give everyone the permission within SAP CPQ to share Favorites.

Tip

Hold down the Ctrl key to select more than one user type while making your selections.

Click Save when you're done making your selections.

Related Information
Favorites
On this page
Using the Feature
Related Information
Yes
No