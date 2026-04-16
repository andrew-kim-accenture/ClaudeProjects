# Required Fields By Workflow Action | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/4ee7e26e660943a088e4e3999c6df6f8.html?locale=en-US&state=PRODUCTION&version=2603
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
Required Fields By Workflow Action

The Required Fields by Workflow Action section determines which fields are required before a certain workflow action can be performed.

Unlike Workflow Permissions and conditions that hide any action the user isn’t allowed to perform, Required Fields by Workflow ensures that certain fields are entered before the action is successfully performed. The option to perform the action is visible to the user, but a message is displayed telling the user certain fields must be entered before the action can be performed.

In administration, user can find this section by clicking on “Workflow/Approvals”, and then on Required Fields by Workflow Action. The Workflow/Custom fields matrix shows up, which enables user to set up desired behavior. Note that this page has 3 tabs, to set up workflow for My Quotes, quotes that are edited from Waiting for Approval tab, and quotes from other users (Other quotes).

For example, by default, Bill To field is required to place an order.

Clicking the Place Order button without entering information into the Bill To fields brings up the following message: Bill To role data is not defined.

Clicking OK redirects the page to the Customer Info Tab where the Bill To field is located.

In general, there are three default fields, the Bill To, Ship To, and End User that can be set as required fields before a user can perform a specified workflow action. A customer is fully defined only when all of the fields that are required for that customer are filled.

Note

If business partners and partner functions are used instead of customers (only on Quote 2.0 tenants), all partner functions are automatically added to the list and customer-specific fields are not available.

The other fields that can be set to as required fields are custom fields (see the section on Quote Custom Fields for how to add custom fields). All custom fields added are automatically populated on the left (Fields rows) of the Required Fields by Workflow Action table.

A field can be required for a particular action by checking the checkbox in the intersection of the field and that action and clicking Save. Also, a condition can be set that must be true before the field is required. To set a condition, choose the  button next to the checkbox and enter a condition using the syntax builder. Choose the Save after setting a condition.

On the user side, when the user selects the action via a button or a drop down box, SAP CPQ checks if the required fields have been filled out and if not, SAP CPQ displays a message box and then redirects the user to the tab containing the required field.

After clicking OK button, user will be redirected to the appropriate quote tab so that he can enter the required field.

Yes
No