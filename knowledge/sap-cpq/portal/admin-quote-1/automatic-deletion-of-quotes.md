# Automatic Deletion of Quotes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/a0f972f1c3c1423fa81ac46583c92b0c.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Security


	Setup Help

	
DKIM Support for Outbound Emails
	
Automatic Data Deletion


	
Blocked Data
	
General Deletion


	
Automatic Deletion of Customers
	
Automatic Deletion of Quotes
	
Automatic Deletion of Users
	
Audit Trail Deletion
	
Personally Identifiable Information
	
Personal Data Log
	
WSDL and Certificate Management
	
Credential Management
	
Trusted Applications
	
Password Policy
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Automatic Deletion of Quotes

When deleting quotes, you have three options at your disposal.

Namely, you can delete all quotes that meet the deletion criteria, regardless of their status and the quote owner’s company. Additionally, you can delete only quotes in particular status which is useful when you want to set different deletion periods for specific statuses. Finally, you can delete quotes according to the status and company by combining the quote status and the quote owner’s company with the deletion period.

Automatic Deletion of Quotes Regardless of Status or Company
To delete quotes without taking into account their status or the quote owner’s company:

Go to Setup  Security  Data Deletion.

A new page displays.

In General Deletion  Quotes, enable the Default Deletion Period toggle switch.

Time period selector displays.

Define a period after which quotes will get deleted.

The period can be set in either months or years.

Click Save.

A confirmation message displays.

The system calculates the deletion period from the date the quote was last modified. For example, if you set the default deletion period to one year, all quotes with a modified date older than one year will be deleted immediately.

Automatic Deletion of Quotes by Status

To delete quotes in particular status:

Go to Setup  Security  Data Deletion.

A new page displays.

In General Deletion  Quotes, enable the Delete Quotes by Status toggle switch.

Time period selector and field for selecting a status display.

In Deletion Period, set the number of months or years after which the quotes will get deleted.

In Status, define the status of quotes you want to delete.

The field offers autocomplete suggestions as you start typing a search query. Statuses matching the input are displayed as suggestions. Alternatively, you can select a status from the dropdown list.

Note

This is a single-choice selection field. To define multiple statuses, click Add Status below the Deletion Period time selector for each status you want to define.

Click Save.

A confirmation message displays.

The system calculates the deletion period from the last modified date.

Automatic Deletion of Quotes by Status and Company

To delete quotes by status and company:

Go to Setup  Security  Data Deletion.

A new page displays.

In General Deletion  Quotes, enable the Delete Quotes by Status and Company toggle switch.

A grid displays with an Add rows button above it.

Click Add rows.

Select the needed number of rows from the dropdown.

Rows display in the grid.

The grid contains the following columns: Delete, Period, Status and Company.

To choose which columns you want to be displayed in the grid click .

In the column selection window, select or unselect appropriate columns and click Save.

In the Delete column, click  to delete an entire row and cancel quote deletion.

In the Period column in the grid, set the number of months or years after which the quotes will get deleted.

In the Status column, define the status of the quotes you want to delete.

In the Company column, define the quote owner’s company.

Note

The fields in the Status and Company column are autocomplete fields which automatically suggest values as you type. Each field allows you to select only one value. To define multiple statuses or companies, you should add new rows for each quote.

Additionally, all deletion criteria can be filtered by status and company in the quick filter above the grid. Values in the grid can be sorted in ascending or descending order by quote status and company.

Click Save.

A confirmation message displays.

The system calculates the deletion period from the date the quote was last modified.

Default Deletion Period, Status-Based Deletion and Delete Quotes by Status and Company Working in Parallel

You can set all three deletion options to work in parallel. In that case, quote deletion rules are executed in the following order of priority with those of higher importance overruling the succeeding ones:

Delete Quotes by Status and Company

Delete Quotes by Status

Default Deletion Period

Therefore, the rules which are set for the default deletion period and the deletion based on the quote status will be overruled by the ones defined by Delete Quotes by Status and Company option.

Example

You want to keep quotes in Won status for a longer time than quotes in all other statuses. Moreover, you want to remove quotes in Lost status from the system and you want to delete all quotes in the status Rejected.

The first thing you can do is to set the Default Deletion Period to 1 year. Next, after enabling the Delete Quotes by Status toggle switch, you can set the deletion period for quotes in Won status to 3 years and for quotes in Lost status can be set to 5 months. For the quotes in the status Rejected activate the Delete Quotes by Status and Company toggle switch, set the deletion period to 2 years and select the company assigned to the user who created the quote.  

As a result, quotes in Won status will be kept in the system for 3 years, that is, they will be deleted 3 years after their last modified date. Quotes in Lost status will be deleted 5 months after their last modified date. Quotes in the status Rejected will be deleted 2 years after the last modification. On the other hand, quotes in all other statuses will be deleted 1 year after their last modified date. 

Logging Deleted Quotes

Each deleted quote is recorded in Setup  Audit Trail  Admin Actions. Additionally, quote number of the deleted quote is displayed in the Action column in the following format: GDPR - delete quote - user ID - cart ID.

Related Information
Automatic Deletion of Users
Automatic Deletion of Customers
Scheduled Quote Deletion (Soft Delete)
Bulk Deletion
On this page
Automatic Deletion of Quotes Regardless of Status or Company
Automatic Deletion of Quotes by Status
Automatic Deletion of Quotes by Status and Company
Default Deletion Period, Status-Based Deletion and Delete Quotes by Status and Company Working in Parallel
Example
Logging Deleted Quotes
Related Information
Yes
No