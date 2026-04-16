# Quote Tab Permissions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/a1522dd41c474219bb8ebc3ad18a2ca4.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
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
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Quote Tab Permissions

The Quote Tab Permissions allows managing visibility of the quote tabs based on the workflow statuses and permission groups.

Unless you select a status and/or a permission group, all defined quote tabs are visible in all status and to all permission groups. Quote tab permissions are managed under Setup  Quotes  Quote Tab Permissions. When you access the page, a list with the following data for all existing permissions is displayed:

Tab - the name of the tab for which the permission is created.

Permission - the name of the selected status and the permission group.

Custom Permission - displays the values Yes/No depending on whether additional visibility restrictions are set up.

The Show drop-down list allows you to filter the list per specific tabs or display all tab permissions in the list. You can always edit or delete a permission by clicking  and, respectively.

Create a Quote Tab Permission

In the Quote Tab Permissions page, click Add Tab Permission.

In the new page, select a tab on which the permissions are applied.

Select a status in which the tab is hidden.

Make use of the Select all Statuses checkbox if you wish the tab to be hidden in all statuses.

(Optional) Select all or specific permission groups that won’t have access to the tab.

The logic OR is applied between the permission groups.

In the Additional visibility restriction section, click  to create a condition formula for a more specific restriction.

Click Save to finalize the creation.

Tip

Quote.CurrentItem CTX tag can’t be used for defining additional visibility restrictions.

Note that the condition formula additionally restricts the tab visibility related to permission groups and statuses, it doesn’t overrule it. The system re-evaluates the condition formula every time the quote is modified.
Yes
No