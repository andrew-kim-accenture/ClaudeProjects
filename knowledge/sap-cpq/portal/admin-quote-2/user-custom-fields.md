# User Custom Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/2625c5c2c2f843539b592d0e7167df08.html?locale=en-US&state=PRODUCTION&version=2603
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
User Custom Fields

User custom fields allow you to add additional fields for users.

To view a list of all user custom fields in the system and/or add new custom fields, go to Setup   Users  User Custom Fields. A list of all existing user custom fields displays, and their total number is visible in the top-right corner of the page.

User custom fields can be filtered by specific and advanced criteria. To quickly filter user custom fields, enter one of the following search queries in the search box:

name

label

Additionally, when using the Advanced Search, user custom fields can be filtered by:

name

label

rank

type

whether information logging is suppressed or not.

Values in all columns can be sorted in ascending/descending order by clicking the column headings.
Clicking  opens a pop-up where you can select the columns displayed on the User Custom Fields page. Alternatively, clicking the check mark in the upper-right corner of the Display Settings pop-up selects all columns.
Note

The additional columns display in the grid only the first time they’re added.

Editing a user custom field is done by clicking the Edit button next to the corresponding field name. In addition, copying or deleting a user custom field is done by clicking  and selecting the appropriate action.
Adding a New User Custom Field
To create a new user custom field, go to Setup  Users  User Custom Fields  Add New User Custom Field. All the information needed to create a user custom field is organized into the following two tabs: General and Permissions.
Note
Once created, the user custom field is displayed:

below standard fields in Users  Edit  Additional Settings

on the User Registration page

in Setup   Users  Guest User and Default User SettingsGuest User and Default User Settings  Default User Settings for Self-Registered Users  ..

General
On the General tab, you define general information for the new user custom field.

In Name, enter a name for the new user custom field.

(Optional) In Label, enter a label for the new user custom field.

Even though label is automatically created based on the name entered in Name, you can enter a different label or leave the field blank.

In Rank, click Set Rank.

A pop-up displays.

Drag and drop the user custom field to set its rank.

Click Save.

Select the type of the user custom field from the Type dropdown list.

Free Form - the user custom field appears as a text box in which the user inputs a value. There are no restrictions on what the user can enter.

Date - the user custom field appears as a text box in which the user enters a date. The date the user enters must match the date format set on User Page.

Attribute - the user custom field is attached to an attribute. Selecting this option triggers another dropdown list to display where the user can select the attribute that the field will be connected to.

Long Text - the user custom field appears as a large text box in which the user can enter multiple lines of text. There are no restrictions on what the user can enter.

(Optional) Enable the Suppress Information Logging toggle switch.

Previous and new values aren’t logged in the Audit Trail.

Click Save.

Alternatively, to save your changes and go back to the User Custom Fields page, click Save & Go Back.

Permissions
On the Permissions tab, you define user custom field permissions. The tab displays:

Same permission for all Permission Groups - the switch is enabled by default, allowing all users in the system the same type of access to the user custom field.

Field permission dropdown list - here you select the type of access for the users.

Editable - the user custom field can be edited.

Read-Only - the user custom field can’t be edited.

Required - the user custom field must be defined.

Hidden - the user custom field isn’t displayed to everyone.

To grant the same access to users, leave the toggle switch enabled and select the type of access from the dropdown list.

To limit the access, disable the toggle switch.

When the toggle switch is disabled, you define permission groups for each of the four field permissions by moving permission groups from Available Permission Groups to Selected Permission Groups. If a user custom field is hidden for all permission groups, it can’t be seen or changed on User Page > Modify Personal Details, but the local administrator can still manage that field for the users.

Related Information
User Administration
Users
On this page
Adding a New User Custom Field
Related Information
Yes
No