# Approval Process Administration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/74465a8b82db424b9dbc39d5e39005a9.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Parallel Approval
	
Approval Process Administration
	
Approval Rules
	
Submit Upstream
	
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
Approval Process Administration

The following section describes detailed approval process.

Approval Rule by itself doesn't do any work – Workflow must be set up in order to have working Approval Process. Approval rule is just here to serve as a flag in workflow that will allow some actions to happen that will move the quote throughout the approval process.

Typical approval workflow is explained below:

Owner edits his quote, and violates one of the approval rules (For example, exceeds discount). After clicking on Approvals button, he is taken to the page where he can leave a comment, see who are approvers, and what rules he violated. We can see that this rule defines two responsible approvers.

After submitting the quote for approval, his approver will have it on Waiting for approval tab on load quote page. There, approver can edit the quote, view what triggered approval rule, and after clicking on Approvals button, he can perform an action on that quote:

Approver can here either approve or reject the quote. Now, what about the second approver? Even though one approver has accepted the quote, on the user side in My Quotes tab, quote is still pending approval.

Clearly, the quote is still pending approval, so other approver needs to approve it also. (Remember the "AND" /"OR" types of approve logic – this rule is definitively an "AND" logic type, since the first approver did approve and the quote still waits the other approver to either approve/reject. Now the second approver decides what to do with the quote.

As can be seen on the picture, the approval history section clearly displays that the first approver approved the quote, and can see all the comments enterred, etc. Whatever action does this approver choose to perform, the approval process will end because there are no additional approvers for which this quote is still pending for approval.

The following describes how to administer this typical approval workflow:

First of all, discounting rules have to be defined, that will limit quote owner when setting discount, so that 50 will trigger an exceeded discount flag. This section is described in Discounts/Multipliers 1.0 section of this manual, so refer there for more details about this simple step. Once the discounting rule is defined, we can add an approval rule that will treat discounting.

We choose "Workflow/approval", then "Approval rules" menu items to the left. Next we add new approval rule, and we call it "Discount Exceeded" (enter something user friendly here – both users and approvers should be able to know what this rule applies to by its descriptive name). Next we select one user to be the user that this rule applies to. (We can also select a particular user group, company, or combination of these). Then, in the condition box, we enter: „<*GI(EXCEEDEDISCOUNT)*>” . This formula will check the "EXCEEDEDISCOUNT" global information variable flag, which will be set if discounting rules are violated. This condition ensures that discounting rules are being treated in this approval rule.

Next, we setup approval requirements (approve logic) – Set it to "AND" type.

From the Approvers list, we select two users that will be responsible for this rule.

Setting up the Workflow
After saving, we are done with creating approval rules. Now we need to take care of workflow, in order to complete approvals setup. First of all, let's define what actions are used during approval process:

Approvals

Submit for approval

Approve

Reject

In the administration, we select Workflow/Approval then Workflow actions in the menu to the left, so that we are now on the page that is used to set up workflow on "My Quotes" user tab.

There, we set up the following actions: From status open to status open, check the action "Approvals" and add a condition to it: <*APPROVALREQUIRED*>. This will ensure that we have "Approvals" action only when we need to submit the quote for approval.

Submit for approval action: we need to do just the same as for "Approvals" action, except from the fact that "Submit for Approval" should change quote status, so we will place it to flow from "Open" to "Waiting for Approval" rather than from "Open" to "Open". Also, we need to add condition formula <*APPROVALREQUIRED*>. This will prevent users to submit for approval quotes that are not violating any approval rules. User can also attach notifications to this action, so that for example Approvers can get email when someone submitted a quote for approval to them.

That concludes workflow for "My quotes" tab, which is important to owner/submitter. Now on the admin menu to the left click "Workflow/approval" then "Workflow" and on that page, click on "Waiting for approval" tab.:

This will open the similar workflow page, only that this one defines workflow for approvers, who use "waiting for approval" tab rather than "my quotes".

In this tab, we need to have 3 approval actions: "Approve quote", "Reject quote", "Approvals" and "Submit for approval".

"Approvals" action doesn't change status, so we will put it to flow from "Pending Approval" status to "Pending Approval" status.

Also, on this screen, we need to check "Submit for approval" action – in case that the approver himself also violates some approval rules, so that he can submit it for further approval.

We need to add a condition: Approver can only submit for further approval if he is violating some rules. Therefore, we add a condition to this action.

So we entered <*APPROVALREQUIRED*> tag, which evaluates to "TRUE" when user is violating approval rules. The "Submit for Approval" action is useful when setting up multilevel approvals: For example, one approver can have right to handle discounting up to 10, but for anything more, he cannot approve himself: he must also submit for approval to the next approver, who can approve up to 20, and needs to further submit for more discounting, and so on.

We place "Approve quote" action to flow from "Pending approval" to "Approved" status.

Also condition for this action has to be set up, so that we prevent approving quotes by approvers that should not be able to approve (because they violate some approval rules themselves), so click on condition button and enter [NOT](<*APPROVALREQUIRED*>) into condition field.

By clicking Update and Save, workflow changes will be completed. Finally, we need to set up Reject action on Waiting for Approval tab. We will place it from "Waiting from Approval" status to "Rejected" status.

This rule can also be added an condition, if we need it. By default, Any approver can reject a quote if he wants to. But we can also limit approvers to be able to reject a quote only if they don't violate any rules themselves. For example, if an Approver needs to submit a quote for further approval, we already forbid him to approve it, and we can forbid him to reject it, too. In that case, we need a condition on "Reject quote" action, so we click on condition button and set up the following formula in condition field: "[NOT](<*APPROVALREQUIRED*>)".

After this has been set up, current workflow has to be saved and approval process has been successfully set up.

Yes
No