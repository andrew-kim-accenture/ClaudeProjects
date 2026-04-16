# Quote Revisions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/a4af20b235304640937c01142e4a9fea.html?locale=en-US&state=PRODUCTION&version=2603
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
	
User Interface Design
	
Workflow-Approvals


	Setup Help
	
Approving Quotes in One Click
	
Quote Revisions
	
Outbound SAP CPQ Emails
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Quote Revisions

A quote revision is a copy of the quote from which the revision was created.

You can create as many revisions as needed and they do not have to be directly sourced from the master quote. All revisions with a common master quote have the same quote composite number.

When you create a quote revision, all the data except approval history from the source revision will be copied to the new revision. All the subsequent changes will not be propagated from the source quote to the revision and vice versa.

Quote revisions allow sales representatives to create multiple quote versions before the final agreement on the offer is reached. Additionally, they can track how the offer changed over time by accessing the revisions’ history.

Example
Example

A sales representative John is creating a quote for a family looking to refurnish their kitchen. The family wishes to buy a table and a cupboard, so John creates a quote for the pieces that fit into their budget. Additionally, John creates a quote revision and adds a set of chairs that match the design of the table and the cupboard. The family likes the new offer but they think the price is a bit out of their range. John creates a new revision, changes the discount and sets the revision as active. From there on, the revision will go through the approval process and if the revision gets approved and the family accepts the offer, the deal will be closed. If new changes to the offer are needed, John will create new revisions accordingly.

Setup Prerequisites

Handling quote revisions is completely on the user side of SAP CPQ, and other than the workflow settings, no other adjustments need to be made by administrators.

First, you need to allow the user type to access the revisions-related actions. In Workflow/Approval  Workflow Permissions, allow the user type to access these actions:

Edit

View

Delete

New Active Revision

New Revision

History

Set Active

Also, in Workflow/Approval  Workflow, add the actions to the quote status. Secondly, in General  Application Parameters, find the parameter Available actions for Inactive Revisions and select one of these values:

Based on status of ACTIVE revision - users can delete and edit only the active revision (although deleting the active revision will delete all related revisions as well). Also, when this parameter is on, you can create an active revision only from an active revision.

Based on status of EACH revision - users can delete and edit all revisions (active and inactive).

Note

If you delete an active quote revision, it's pertaining master quote and all related revisions will be deleted as well.

Application Parameters

With the following application parameter, you influence the behavior of revisions:

Reset Quote Expiration Date on New Revision - if set to TRUE, the system resets the expiration date of every new revision.

On this page
Example
Setup Prerequisites
Application Parameters
Yes
No