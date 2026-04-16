# Revision Management | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/225193009f164ed492914267adda2269.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey
	
Load Existing Quotes
	
Quote
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
Revision Management

Several revisions of the same quote can exist at the same time, but only one of them can be active at a time.

The list of existing quotes contains only active quote revisions and their names are visible in the Rev. column. The quote that was created first is initially named MASTER, but you can rename it in the Revision list and in the revisions grid. Clicking a revision’s name in the list of all quotes opens the grid with all the revisions of the quote.

Once on a quote, you can access all revisions with the same composite number in the Revision drop-down list on the Quotation tab. The name of the currently open revision is preselected. To create a new revision and edit the name of the currently selected revision, click  and , respectively. After renaming a revision, click  to save the changes. When the button for creating a new revision is clicked, a predefined revision name is displayed in focus so you can change it. Predefined revision names contain the number that increases by one with every new revision. If users don’t have the permission to view inactive revisions, those revisions are grayed out in the list and clicking is disabled.
Note

The changes you make to the new revision don't apply to the source quote. However, all future revisions created from that revision inherit its data.

Active Revisions

The quote you’re currently negotiating over with your customers should be set as active. When SAP CPQ is integrated with third-party tools, updates that are sent to SAP CPQ only apply to the active quote. A revision doesn’t automatically become active. To activate it, click the Set as Active button under the Revision list. The button is visible only when an inactive revision is opened. An active revision has (Active) appended to its name. Only one revision can be active at a time.

All Revisions
In the Revision dropdown list, the All Revisions option takes you to an overview of all the related revisions. Columns in the grid are fixed and can’t be changed. The following actions can be performed on the revisions:

edit (disabled if the user has no rights to edit the revision)

change the revision name and description

make a revision active/inactive

Additional actions are available under the  menu, depending on the work-flow permissions:

Delete

New Revision - a new quote revision opens.

New Active Revision - a new quote revision opens and it’s automatically active.

History - takes you to the Quote History window with a log of all the actions performed on that revision.

Undo Action
When a new quote revision is created, the Undo action isn’t available until users edit the quote. After that, users can undo changes performed only on that new quote revision. Additionally, when a revision is set as active, users can only undo the actions performed on that revision, not the actions performed on the revision that was previously active. Once a revision is set as active, it can’t be undone (you can only set another revision to be active).
Note

The Undo action is available only for Quote 1.0.

Quote 1.0 and Quote 2.0 - Differences

The user interface of the revision grid differs between the engines, but in terms of functionality, the same actions can be performed on revisions in both engines.

On this page
Active Revisions
All Revisions
Undo Action
Quote 1.0 and Quote 2.0 - Differences
Yes
No