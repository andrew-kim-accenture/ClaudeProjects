# Quote Management | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/93f6aafa5e614c11ab21785e1afc6389.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Recently Visited Objects
	
Custom Load Quote XSLT Transformation - Managing Quote Link
	
Custom Load Quote XSLT Transformation - Managing Revision Column
	
Quote Management
	
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
Quote Management

Quote management from the Quote List page can be performed in three main ways: performing actions, changing the status, and making revisions. Quote management can also be performed from the Revisions screen.

Performing Quote Actions

Quote actions range from reassignment to editing or creating a copy. You can easily see the list of actions available in a quote by clicking the dropdown box (found in the Actions column).

Selecting an action from the dropdown box activates it. For some actions, an alert box is displayed asking confirmation for the action.

The View action gives users the ability to view the quote without editing it. In the view mode, three quote tabs are available to users: Quotation, Additional Information and Documents.

Changing the Status

Quotes go through a workflow, or a lifecycle, in the system through changing the quote status. The current status of the quote is displayed in square brackets in the Change Status column. Quotes can be pushed through the workflow automatically or manually. Performing actions can put the quote into a different status. You can manually change the status by selecting a status from the dropdown in the Change Status column.

Quote Revisions

Revisions can be created and maintained from the Revisions screen. This screen can be accessed by clicking the link in the Revision column. Visibility of revision column can be controlled in Setup  Quote  Quote List Settings (for changing custom existing quotes transformation in order to support this functionality view Custom Load Quote XSLT Transformation - Managing Revision Column). From Revisions you can create new revisions, compare revisions, name and describe revisions, or perform actions on the quote.

Each quote revision is stacked on top of the previous one. The currently active revision is highlighted in blue. All other versions are gray.

To add a name or description to a quote or revision, you can type it in the fields provided and then click Save Revision Name/Description. Adding a name or description can help in keeping additional information about the quote. The Actions column contains the actions available for the current quote. In addition to the actions listed in the dropdown box on the Quote List page, actions specific to revisions can also be found. These actions are New Revision and Set Active.

To create a new revision, you can choose the New Revision action from the dropdown box in the Actions column. The new revision is gray, indicating that it isn't currently active. To make it active, Set Active has to be selected from the dropdown box in the Actions column. On selection, the revision is highlighted in blue. In addition, this revision’s information is displayed on the Quote List page, along with its revision number in the Rev. column.

Comparing Revisions

When there are multiple revisions for a quote, it’s often hard to determine which information is different among them. An easy way to determine the differences in the revisions is through the Compare operation. Comparing revisions is done by checking revisions in the Compare column and clicking the Compare button.

The Compare operation displays quote information for each revision selected on the Revisions screen. The quote information includes the customer information, anything entered for the quote information such as custom fields, and any key attribute values that the administrator sets up. You can see what has been changed among the revisions by reviewing this information side by side.

Note

Comparing revisions is supported only in Quote 1.0.

Encrypted and Unencrypted OwnerId and CartId

Both encrypted and unencrypted OwnerId and CartId are supported when opening a quote in view mode.

By default, when clicking View Quote from the existing quotes page, a URL containing encrypted OwnerId and CartId opens. In this case, you can open a quote in view mode if you have the permission to execute the View Quote action, as defined in Workflow.

When unencrypted, only the quote owner can open a quote in view mode. If any user other than the quote owner tries to open the quote in view mode, an error message displays. The same applies to users who have the permission to execute the View Quote action, as defined in Workflow.

On this page
Performing Quote Actions
Changing the Status
Quote Revisions
Comparing Revisions
Encrypted and Unencrypted OwnerId and CartId
Yes
No