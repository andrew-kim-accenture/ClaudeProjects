# Auto Quote Expiration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/5f5fab886ebc4ebba426a200e4846fe3.html?locale=en-US&state=PRODUCTION&version=2603
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

	
Statuses
	
Workflow Actions


	
Standard Workflow Actions
	
Action Details
	
Reprice, Reconfigure, and Conditional Reconfigure - Differences
	
Approval Reminder Action
	
Auto Quote Expiration
	
Global Condition for Quote Action
	
Images for Quote Actions
	
Workflow
	
Workflow Permissions
	
Required Fields By Workflow Action
	
Item Actions Workflow
	
Email Lists
	
Notifications
	
Approval Rules
	
Approval Branch
	
Approval Auto-Reminder
	
Likelihood of Approval
	
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
Auto Quote Expiration

This is scheduled action that is executed once a day at midnight (server time) and it will automatically push all quotes that are due to expire to Quote Expired status (or any other desired status), fire post actions or trigger notifications for each quote. Since this feature is not enabled by default, there are certain steps that need to be performed in order to enable it.

By default, quotes will expire 30 days after they have been created. This time period is controlled with the custom field Quote Expiration Date (Setup  Quote  Custom Fields).

Quote Expiration Date is a standard custom field" which means that its Name and Type cannot be changed nor it can be deleted. Everything else is configurable.

In the Quote Expiration Date window, you can see the Formula column is set to <*CTX(Date.AddDays(30))*>, and Calculation Type to Once, when quote is created and there is no selection for Tab (so it won't be visible to users).

After adjusting these settings, user will need to set up the Workflow (Setup  Workflow/Approval  Workflow). Select Other Quotes tab and add Quote Expiration action for desired Start and End status combination (For example: Start Status: Open; End Status: Quote Expired).

Note

Ensure to select the Other Quotes.

Yes
No