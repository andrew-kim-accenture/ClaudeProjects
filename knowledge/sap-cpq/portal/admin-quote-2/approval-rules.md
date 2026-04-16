# Approval Rules | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/773174653a4447de803a2a9e203a7bff.html?locale=en-US&state=PRODUCTION&version=2603
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
Approval Rules

The following section describes detailed function of approval rules.

Getting Started

Approval Rules is an SAP CPQ feature in the Workflow submenu that enables you to enforce rules for users operating with quotes. Let’s say you want to limit the number of users (or identify specific users) who are permitted to apply a discount of 10% or more on a product. Or, you want the quote to comprise computers with a hard drive capacity of up to 100 GB only. You can enforce these rules by assigning an approver, or a hierarchy of approvers, designated with consenting or rejecting the discount.

Glossary of Terms

To understand the Approval Rules process, we recommend you familiarize yourself with the following terms: Approver, Submitter and Approval Rule.

Submitter is an SAP CPQ user who submits a quote for approval. The submitter can be the quote owner or a user currently operating a particular quote. In a multilevel process users’ approvers can also be submitters if approvers themselves violate approving rules.

Approver is an SAP CPQ user managing the approval status for a particular quote. The approver does this by first reviewing a quote submitted by the submitter, and then deciding if the quote is valid or not. The designated approver can submit the quote for further approval if he or she lacks authority (violates rule) to complete the approval process. In this case, an approver becomes a submitter. You must assign at least one approver to an Approval Rule but you can also assign as many as required. In other words, you can assign several approvers to validate the decision of other approvers. Make sure that you select only active users as approvers. If you assign an inactive user as the approver, the quote will get stuck in the Waiting for Approval status. If this happens, check approval history and make sure that you don’t have an inactive user assigned as approver to the rule.

Approval Rule is triggered when the condition for that rule is rendered "true". If it is not rendered true, the approval process will not be triggered. Approval rules are listed in a table that allows you to edit, delete or add a new approval rule. Each time anyone enters the quote, SAP CPQ automatically re-assesses the quote and checks if any approval rule has been violated. If any of the rules are violated, SAP CPQ will alert you that the rule has been violated and ask you to send the quote for approval.

Using This Feature

Approval Rules comprises two main sections: Creating a new approval rule and Delegation of Approval.

Creating a New Approval Rule

Follow these steps to create a new Approval Rule. Learning how to create a new Approval Rule is the best way to understand the table on the Approval Rules submenu page. Note that the fields marked with an asterisk (*) are required:

Choose the Add New and enter the name of the rule in the Approval Name text-entry box.

Describe the Approval Rule in the Description box or choose the icon to enter an expression in the formula builder. The description informs you about the restrictions defined by the rule that users can violate. Let’s say you are authorized to apply a discount of 30% but you applied a discount of 40%. Going forward, you must decide if you will stick with this decision or if you will send the quote up for further approval along the approval hierarchy. In other words, you can modify the quote so that you no longer violate that rule or ask for additional approval. First, make sure that the rule has been defined in the workflow, and perform the steps below.

Select a user/user type/company (or all three) for whom the approval rule will apply.

Select the company users belong to from the Company drop-down menu.

Enter a condition in the Condition text-entry box that will trigger the approval process (the condition must be rendered "true"). The condition is the core of the approval process and defines an expression on which the Approval Rule will be based. The condition text-entry box accepts all standard SAP CPQ formulas which give administrators greater flexibility when creating approval rules. Let’s say you want to limit the currency amount of your quote to 5,000. If the expression is evaluated to 1 (true) the rule is violated which triggers the approval process: [GT](<*CTX Quote.Total.TotalNetPrice.DefaultDecimal )*>, 5000).

The Parallel Approval section of Approval Rules is explained in a separate document. See Parallel Approval for more details.

In Approval Requirements select:

AND logic (approved if all approvers from the list approve) if you want all approvers on the list to be required to approve the quote and only one to reject it. Note that choosing this option is restrictive and that you may be stuck waiting for that one approver to approve your rule.

OR logic (approved if any approver from the list approves) if you want only one approver form the list to approve the quote. The "OR" logic is less restrictive and gives you more options. It is a great solution when employees are away on vacation and you may lose time being stuck waiting for one approver to approve your quote.

Now choose the Select Users to select Approver(s) from a list of all Users currently defined in Setup.

Choose the Save and Exit Setup.

Check out the following figure and the text below to learn about Based on Hierarchy and Custom Approver Selection Logic:

Based on Hierarchy list allows you to select the submitter’s managing, ordering and/or approving parent as an additional approver or approvers. Choose the arrow pointing left. To cancel your selection, choose your selection in the Selected Approvers box and choose the arrow pointing right.

Custom Approver Selection Logic allows you to select a user based on the user’s characteristics related to the quote, opportunity, customer or territory, rather than the person’s name. The purpose of this feature is to enable you to select the approver on the fly when you are pressed for time and need to make a quick decision.

Follow the steps below to select a user based on the Custom Approver Selection Logic:

Choose the Add New to make your user selection.

Instead of entering the user’s name in the text-entry Name box, enter the user characteristics you wish to act as the criteria in selecting the approver.

The expression-entry box Approver will be the users whose Name is equal to expression allows you to create an expression that will define a dynamic approver, that is an approver who depends on the user's selection. The expression will be based on the user’s property or selection previously defined in the cart. These may include geographical market, pricing, customers on customer info tab, among other examples. SAP CPQ will use the expression to check if users with those properties exist in the system.

Note

Remember that the expression must be formulated so that its result always takes the form of the user’s name, username or email. Users need to be active in SAP CPQ and must not be marked for deletion.

In the Result returned by expression, select the format of the generated approver you want to receive and choose the Save.

Take a look at the following image to see what an expression in Custom Approver Selection Logic looks like. Then take a look at the proceeding image too see SAP CPQ use of custom tables in forming that expression.

Note

You have now defined Approval Rules. The submitter takes over the process at this stage. Follow the steps outlined below if you are a submitter creating a new quote subjected to the defined Approval Rules.

Choose the New Project/Quotation and select the product you want by ticking the Add to Quote check box.

Choose the Add to Quote at the top right corner of the page. Then trigger the rule and choose the Request Approval once the Quotation page opens up.

Choose the Submit for Approval.

Delegation of Approval

The Delegation of approvals table allows you to select alternate approvers if existing approvers are away or unable to approve the rules. The purpose of this feature is to prevent situations in which the quote gets stuck in the user’s approval queue where no one can approve or reject it. In other words, when quotes are sent for approval to an approver, and that approver is absent, there is no way for other users to pull them out of the approver’s queue, unless you use the Delegation of approvals. If you want to delegate approval to the Managing parent, Approve parent or Ordering parent, you must set your choice to True. Check the following figure to see what it looks like in the Approval Rules submenu of SAP CPQ Setup.

When you delegate approval to someone else, this change will be visible in two tables for approving quotes: Quotes that I need to approve and Quotes that my team needs to approve in the New Project or Existing Project Quotation.

Quotes that I need to approve refers to a list of quotes sent to you for your approval.

Quotes that my team needs to approve comprises you as well as all alternative approvers. This group refers to a list of quotes displayed if the administrator selects that only one of the following roles can approve or reject quotes: Approving Parent, Managing Parent and Ordering Parent. The list also includes the current user if that user is set as one of selected roles for at least one active user in the system. The list contains all quotes found in the user team’s approval queue. Let’s say user A and user B have user C set as their approving parent. In this case, the administrator has set up that the approving parent can approve or reject quotes instead of the approval owner. This means user C can see all quotes found in the approval queue for user A and user B. The same rule applies to the managing and ordering parent. Now, let's say user A has user B as approval parent (or managing or ordering) and this role can approve/reject quotes (according to what the administrator defined in Setup). In this case, user B will always have action Approvals (this will be the only action) available over quotes that user A needs to approve under Quotes that my team needs to approve. Take a look at the following figure for more details.

When you choose the Request Approval from the Actions drop-down menu you will be able to see all the rules that are waiting for your response. Refer to the following figure:

But when you choose the Approval History you will be able to see the approval history of your quote, including the names of users who performed each action in the Performed By column. The column includes name of approvers and alternative approvers which you can check by choosing the View alternative approvers. Refer to the figure below. If the administrator hasn’t set up either of these roles, or if there are no rules that haven’t been approved or rejected, this button will not be displayed.

On this page
Getting Started
Glossary of Terms
Using This Feature
Yes
No