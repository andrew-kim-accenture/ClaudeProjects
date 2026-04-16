# Approval Rules | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f1d4f7014fcb4eac8aed4fa9cc76c90a.html#related-information
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
Approval Rules

The following section describes detailed function of approval rules.

Approval process is a SAP CPQ functionality that enables administrator to force users to obey a set of rules when operating with theirs quotes. For instance, administrator can model the approval process so that he doesn't allow users to put the discount on the quote amount in excess of 10%. This menu section uses to set up approval process, as well as quote workflow. Approvals and workflow are two things that are quite connected and that depend on each other.

To fully understand the approval process described in this manual, one should first get familiar with following terms:

Approver

Submitter

Approval Rule (condition)

To set up an approval process, follow these steps:

Set up individual users' Managing/ Ordering/ Approving parents on user administration page (not required).

Set up any additional things that you might need in approval process (For example, set discounting rules if you wish to treat discounts in approval rules) (not required).

Set up one or more Approval Rules.

Set up Workflow to treat Approval Rules.

You can find more details on the approval process terms below:

Approver

Approver is a SAP CPQ user that is selected to be responsible for managing the approval status for a particular quote in approval process. Therefore, the approver usually gets to view or edit submitters' quotes. Think of the approver as of a manager whose job is to decide if a quote is valid or invalid in some way. The approver is the person that needs to review a quote submitted to him and to decide what to do with it. By workflow, it usually means that he can either Approve or Reject a quote, or in some cases, submit it for further approval – if he himself also violates some rules and therefore has not enough authority to resolve the approval. In that case, this approver also becomes a submitter to his approver. This multilevel approval process will be described later in this chapter in more details.

One approval rule must have at least one approver, but it's not limited to that one only. It can have as many as needed. Since approvers are ordinary SAP CPQ users (with some more rights), it is important to select only active users as approvers. If an inactive user is set to be an approver to someone, quotes submitted for approval will be assigned to him(who can't log in) and sent quote will get stuck. This behavior is by design. It is possible to have an approval rule that defines user (For example "John Smith") to be the approver. Now, when that user is deactivated , the approval rule must still apply, because users could violate rules and avoid approval process. If quotes are stuck in 'waiting for approval' status, please consult approval history and double check that you don't have an inactive user set as approver to some rule

Submitter

Submitter is a SAP CPQ user that some particular approval rule applies to at that moment. If the approval rule is evaluated to "true" than this user can submit a quote for approval process, if that action is available in the workflow. The submitter is usually the quote owner, or a user that is currently operating on a particular quote, although, it is not always the case. In multilevel approval process, one user's approver can also be submitter if he violates some approve conditions himself. More details will be explained later in this chapter.

Approval Rule (condition)

Approval Rule can be considered as condition that needs to be evaluated as "true" in order to get the approval process going. Rules administration is found under Workflow/Approval   Approval Rules menu item in administration. The page contains a table that is displaying a list of approval rules in system. Here user can edit or delete or add a new approval rule. It is important to know that every time a quote is loaded or reconfigured, or when quote prices are refreshed, all these rules get re-evaluated and checked if there are some of them that will have to be evaluated to TRUE. When this happens, the quote can go through approval process, if it is defined by workflow, which will be explained later in this chapter. The following is the detailed procedure for editing an existing approval rule.

Clicking on the edit button  to the left of the approval rule in the rules table will lead you to the Approval Conditions Administration editing page. Users have to define first a name for this approval rule (condition), and intuitive description for it. Next step is defining which users are affected by this rule. It is possible to choose particular user (employee), user group or user company. Of course, it is allow making a combination of these. Users selected here will be the actual submitters in the approval process.

User (if an approval rule exists for one user then only he can see these rules, all other rules are invalid for him)

User Group (if an approval rule exists for a user group then all users within the user group are subjected to the rule provided; those users do not have a direct rule associated with them)

Company (if an approval rule exists for a Company then all users within the Company are subjected to the rule provided; those users do not have a direct rule associated with them through user group or user)

If more than one approval rule applies for the same user, they are triggered in the following hierarchy:

a rule chosen for a specific user

user type

company

If there is a match for any of those three, lower-priority selections are ignored. Approval rules with the lowest priority are those that apply to all (have no user, user type or company specified). Those rules are only triggered when no higher-priority rules apply for that user.

After defining users who will be affected by this rule, second step is setting up the Condition that will be evaluated by the system. This is the core thing in the approval process – condition can be very simple like (1 or 0) or a complex SAP CPQ formula that will be evaluated to either 1 (true) or 0 (false). Condition field accepts all standard SAP CPQ parseable formulas, so this gives administrators great flexibility when creating approval rules. If the entered condition is "<*GI(EXCEEDEDISCOUNT)*>", it means that this rule checks the content of the "EXCEEDEDISCOUNT" global information variable and returns 1 or 0 accordingly. After setting up to whom this rule will apply, and condition that has to be met, consequently next thing to define is approve logic and approvers for this rule:

When the system starts evaluating the conditions in approval rules, it first evaluates and triggers those that are the most specific for a user type or a company. If there aren’t any specific rules, it continues evaluating the more general approval rules.

Example

If there is an approval rule set up specifically for Sales/ABCompany and a more general approval rule set up for Sales/All Companies, once the system starts checking the rules, it will first evaluate the condition in the rule Sales/ABCompany. Regardless of the result of the condition (true or false), the system won’t check the result of the condition for ABCompany in the general rule Sales/All Companies.

Consequently, if you have a specific approval rule with a condition resulting to false and a general approval rule resulting to true, the approval rule won’t be triggered because the condition defined specifically for that user type/company results to false.

If there are no specific rules defined for a user type, the general rule (Sales/All Companies) will be applied based on the result of the condition.

Note

To ensure that the approval rules are triggered for the right user type or company, you may avoid defining specific approval rules and set up all rules for All User Types/All Companies. However, have in mind that this may slow down the system and lead to performance issues.

Approvers are being selected from the list of users labeled "Approvers:" on the page, as seen on the picture below: All users from the system can be selected as approvers. One or more users can be flagged as approvers for the rule currently being edited.

Regardless of users in the system, the approvers list always offers three items that are not actual SAP CPQusers – the Managing parent, the Ordering parent and the Approving parent. These can be thought as some kind of context sensitive shortcuts: every SAP CPQ user can be assigned these three parents through standard user administration. Therefore, when selecting "Managing parent" as an approver when editing an approval rule, approver will be different according to the user this rule applies to at the particular moment. For example, if "Mike" and "Joe" are selected users to whom this rule applies to, and as approvers are selected "Managing/Ordering/Approving parent", the quote won't necessarily go to the same approver regardless of who submitted it for approval. In other words, if "Mike" and "Joe "have different Managing parent, than the quote will end up with different approving user, in regard of who submitted it. As with the Managing parent this also applies for Ordering parent and Approving parent.

So, every user selected from the list will be the approver for the particular rule, and will receive the quote to review it and decide how they will respond.

Approve logic is set up by choosing desired value from the approval requirements drop-down list.

Approve logic can be best explained through example: If there is a rule that defines more than one approver quote will end up being reviewed by more than one approver. Although every approver can Reject a quote, all the approvers must agree to Approve it in order for that quote to be returned to the owner as Approved. This is the default behavior, and it is an example of AND logic. To put it differently, one approver is enough to reject the quote, but all are required to approve it.

However the OR logic is somewhat different. The rejecting policy is the same: it is enough that one approver rejects the quote to have it returned to submitter as "Rejected", but also, a single approver is enough to "Approve" the quote to have it returned as "Approved" to submitter, no matter how many approvers didn't respond to approval process on that quote. The OR logic is a good solution for handling employee vacations - having multiple approvers, among which anyone can approve a quote; so it is not stuck waiting for one of the approvers to approve it when all the others already did. Clearly, than the AND logic is more restrictive than OR logic is.

After setting up all the above mentioned terms, approval rule has been successfully set up.

Custom Approver Selection Logic (Dynamic Approver)

You have an option to define a Custom Approver Selection Logic. This Logic is also referred as a Dynamic Approver in SAP CPQ. Custom Approver Selection Logic will determine an approver at the time a particular approval rule is violated. Approver is determined depending on the expression that you defined through SAP CPQ Workflow/Approval setup.

This expression can take into account a various elements regarding users, customers, quote calculations and so on. For example, you can write a formula that will determine an approver based on the country/region the customer is located in, or based on the total amount of the quote.

Follow these steps to define a Custom Approver Selection Logic:

Log into SAP CPQ and go to Setup.

Click on Approval Rules under Workflow/Approval menu item.

Click on Add New button to define a new Approval Rule.

A page where you can define Aproval Rules, Conditions and Dynamic Approver is displayed. At the bottom of the page you will find a part where you can define all elements to properly set a Custom Approver Selection Logic.

Click on Add New button to define a new custom approver selection logic. Enter a name and expression in the respective fields and select an appropriate value of the radio button. All fields are required and explained below.

Fields that should be entered are:

Name - You decide which name fits the best. Use descriptive name that explains what criteria is used in the expression to define an approver.

Expression - A result of evaluating the Expression that you input in this field should be Name, Email or Username of SAP CPQ user that could be slected as dynamic approver. You can find a Name in the list of users under Setup  Users item menu.

Result returned by expression -This radio button is used to define what information, the previously entered expression should return after being evaluated. If you want your expression to return Name of the user, you must pick a name option under this radio button. Similar applies for the other two options (Email and Username).

When you save a newly created Custom Approver Selection Logic, it is automatically added to the list of selected Approvers.

Example

In this example we will create an dynamic approver named Regional Approver.

Expression [IF]([EQ](<* CustomerTerritory *>,USA)){usa_approver@company.com}{eur_approver@company.com}[ENDIF] is used to determine the email of the approver based on the Customer Territory. Once the expression returns an email of the approver, SAP CPQ will locate a user with that email and define it as a approver for the particular rule you violated in your quote.

In this example, if you work on your quote, and you choose a customer that has territory set to "USA", your approver will be a user with the email usa_approver@company.com. You will find the name of this user in the list of Approval Rules below your quote.

You are able to edit a Custom Approver Selection Logic. Whatever changes you make will be valid for all approval rules that use this dynamic approver. You can also use any Custom Approver Selection Logic defined by other users.

You are able to delete a Custom Approver Selection Logic, but only if it isn’t part of some other rules. If you try to delete Custom Approver Selection Logic that is in use, you will be informed with the error message and the list of rules where this Custom Approver Selection Logic is used.

When you are working on the quote and a rule is triggered, you will be informed that the quote must be approved by the approver that was selected based on the expression you entered while defining a Custom Approver Selection Logic.

If for some reason SAP CPQ was not able to locate the user that you were referencing in your expression, then the error Approver couldn't be identified. Please contact your SAP CPQ Administrator will be displayed in the quote. SAP CPQ will not be able to locate the user if you typed a wrong identification field value (invalid email, invalid name or invalid username).

Delegation of approvals

Delegation of approval is designed for cases when a quote is sent to the SAP CPQ user for approval, but that user is absent or is not able to approve of reject the quote. If delegation of approval is enabled then any member of the team can review, approve or reject that quote as a delegated approver.

Delegation of approval can be enabled or disabled by selecting approval permissions for any or all of the following three relations:

Managing Parent

The Managing Parent, with the appropriate rights, can edit or delete their child users. They can also reassign quotes between their child users.

Ordering Parent

The Ordering Parent receives all orders placed by their child users for confirmation.

Approve Parent

The Approve Parent receives quotes from the user that have been submitted for approval. Whether or not a user’s Approve Parent receives a quote, though, depends on how the rules are set up in Approval Rule administration. Each approval rule determines which user(s) will receive the quote for approval. The user’s ApprovalParent is one of these options.

Assigning approval permissions to any of these three relations means that you define a delegated approver. Delegated approver is allowed to approve quotes that are assigned to its' approval team.

The Approval team is comprised of SAP CPQ users that are the first level descendants of the delegated approver in approval hierarchy. Approval team members are also approvers for other SAP CPQ users. Follow these steps in order to enable delegation of approval:

Log into SAP CPQ and go to Setup.

Click on Approval Rules under Workflow/Approval menu item.

The Delegation of approvals table is used to define a delegated approver and control permissions for it. This table contains three different SAP CPQ user approval relations.

You can delegate approve/reject permissions for any of the relation that it is approving or rejecting quotes. In this example, approve parent has a permission to approve and reject quotes for its' approval team.

To summarize - when a user A request approval from its' approval parent B, then the user C which is set as approval parent for user B and it is defined as a delegated approver can approve quotes that are in "Waiting For Approval" queue of the user B.

Example

Let’s assume that we have 5 users with their approval relations as depicted in the following figure:

User Kyle creates a quote which violates a previously defined approval rule. User Kate is defined as approval parent for Kyle. Kyle requests approval from Kate and now Kate has a Kyle’s quote in approval queue.

If Kate is on vacation or for some reason is not able to log into SAP CPQ and approve the quote, then Mike can complete the approval. Mike is selected as approval parent for Kate and approval parent relation is selected to allow delegation of approval.

Once Kyle has sent the quote for approval, he is able to see the list of alternative approvers by selecting approval history from the dropdown in the list of quotes.

Clicking Approval History in the quote actions opens a page with an overview of the quotes included in the approval process. The table displays the quote status (approved, submitted for approval, etc.), names of users who submitted the quote for approval and who performed the approval, related comments, and descriptions. Also, the Resolving date column shows when an action was performed on the quote (approved, rejected, etc.).

Clicking on the button View alternative approvers, a list will be displayed as pop up.

Now, under the tab Waiting for approval, Mike sees a list of quotes that are directly sent to him for approval and list of quotes that his team can approve. Note that Mike is approval parent for Kate and Jsmith as well, so he will see quotes that are assigned for approval to Kate and Jsmith (column Responsible Approver).

Mike clicks on Approvals action for the particular quote. Approvals page is displayed and Mike is able to approve or reject the quote.

Related Information
Out of Office for Approvers
On this page
Custom Approver Selection Logic (Dynamic Approver)
Delegation of approvals
Related Information
Yes
No