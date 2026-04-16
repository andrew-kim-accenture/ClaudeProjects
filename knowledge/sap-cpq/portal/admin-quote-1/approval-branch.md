# Approval Branch | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/81b306c2fc5e40288435be48e6951fca.html?locale=en-US&state=PRODUCTION&version=2603
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
Approval Branch

SAP CPQ introduced separate logic for AND/OR in the Branching. Before AND/OR logic in the branching, the branching feature would inherit the approval rule AND / OR logic. Each branch now has its own AND/OR logic. With the AND/OR logic feature in the Branching, you now have the ability to add either AND or OR conditions to your Branching. This gives you more flexibility and control over your workflow.

To create a new branch:

Choose Add New on the Approval Branch page.

Enter the branch name in the Branch Name.

Set the toggle.

Note

When the toggle is in the off position, the logic is AND. When the toggle is in the on position, the logic is OR. By default, the toggle is in the off position.

The branch AND/OR logic will be applied between the rules within the same branch.

Add the branch description.

Choose Save to save the branch.

Note

When the toggle is in the off position, the logic is AND. When the toggle is in the on position, the logic is OR.

Existing branches will be migrated to the new approval branch page.

Mock-up Example

User Case 1

For the purpose of this demo, branch B1 is set with AND logic. Additionally, there are two Approval Rules with the following configurations:

a. Approval Rule A1 with AND Logic and 2 Approvers – User 1 and User 2.

b. Approval Rule A2 with OR Logic and 2 Approvers – User 3 and User 4.

Approval Rules A1 and A2 utilize Branch B1.

When a Quote is submitted for approval under both Approval Rules, both must be approved for the branch to be marked as approved.

For example, if User 3 approves, Approval A2 will be approved due to its use of OR logic. Subsequently, both User 1 and User 2 must approve for Approval Rule A1 to be approved, as it uses AND Logic. Once A1 and A2 are approved, Branch B1 is considered approved.

Note

The Branch AND/OR logic applies only in the case of an approve action. In the case of a Reject, the branch will always act as OR Logic.

Use Case 2

For the purpose of this demo, a branch B1 with OR logic is being used. Additionally, 2 Approval Rules with the following configurations are in place:

a. Approval Rule A1 with AND Logic and 2 Approvers – User 1 and User 2.

b. Approval Rule A2 with OR Logic and 2 Approvers – User 3 and User 4.

Approval Rule A1 and A2 used Branch B1.

Once the Quote is submitted for Approval with both Approval Rules, Any one approval rule should be approved to mark the branch as approved.

If, for example, user 3 approves – Approval rule A2 will be approved as the rule is using OR logic and Branch B1 will also be Approved. Similarly, If User 1 and User 2 both approve A1, the branch B1 will also be approved. Once any one A1 or A2 is approved, the branch B1 is also considered to be approved.

Note

The Branch AND/OR logic applies only in case of the approve action. In case of Reject, the branch will always act as OR Logic.

Yes
No