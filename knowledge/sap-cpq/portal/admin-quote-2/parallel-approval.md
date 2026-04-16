# Parallel Approval | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/1352666cac3d491591274d437de996f9.html?locale=en-US&state=PRODUCTION&version=2603
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
Parallel Approval

Parallel Approval, or Branching, allows you to split the approval process into several components independent of one another. If you don’t use the Branching feature one approver can reject all components of your quote which will induce SAP CPQ to send the entire quote for approval all over again. This may take more time than you can afford to lose, and cause unnecessary delays.

How Parallel Approval Differs from Standard Approval

The standard approval process has three or four rules and the moment you decide to reject one rule only the whole quote is rejected regardless of the fact that two unrelated rules have been approved. This means you must repeat the process all over again and send the quote to your manager who then has to send it over again to someone else. This can end up taking too much time. With the Parallel Approval process you can simultaneously approve several rules which are independent of one another. Once you are done with one branch you don’t care about the status of other branches. You have ensured independence of various different rules, which are part of the same quote.

To show you what we mean, let’s say you are a regional dairy manufacturer that wants to expand by closing a deal with a major food retailer outside your core market. This deal would not only give you access to a large market, but might also lead to a possible expansion to neighboring markets. Before you are able to decide if you can go ahead, you need to get the green light from your production department that first has to ensure you have enough capacity for this kind of strategy. Then, you need to get the approval from the finance department that must decide if the risk is justified. And, you need to get the thumbs up from the logistics department that has to make sure your distribution network is able to partner up with the distributors in the new market. This is where Parallel Approval comes in – it allows your company to segment your approval process so that departments unrelated to one another can approve rules relating only to their own authority. Now, let’s say the production department says boosting existing capacity won’t be a problem, but the finance department says the pricing for the cheese assortment of products will have to be readjusted. With Parallel Approval, the approval process will not have to go through the production channel again because pricing is the only property that needs to be changed. Instead, it will be resubmitted along the finance branch only.

When you use Parallel Approval, you benefit in a number of ways:

Fewer emails sent back and forth for approval request

Better overall user experience

Deals are closed faster

Note

Approval rules with the same branch are considered as a single rule. It also applies OR / AND logic to the result set.

Using This Feature

It helps to think of each rule as part of a branch. For the initial user, all three rules have been violated. This means that, for all three rules, the condition has been set as true. And as the approval process is being carried out, users approve the green rule in its entirety first, meaning they approve the first branch.

To start, create the branch (see, Approval Branch) do the assignment by selecting the branch in the Select Branch.

The first thing that you should know about Branching is that it is a multi-layered feature. For the purpose of Help, we would like you to think of the Approval process as divided into three segments, blue, orange and green. The following figure deconstructs the process so you have a better idea of how it works. In the figure, you can see that a number of rules have been defined, with a defined rule per each user. All rules share the same branch name meaning that these rules are connected in one chain-like sequence. You must define a rule for each user – not everyone is required to approve the same item but they must all be part of the same chain sequence. And they are all unified by the same branch name. We have created a mock-up scenario meant to act as a road map that takes you along the Branching process from start to finish. Read the text below the diagram to understand the step-by-step Branching process.

Note

Keep in mind that different approvers can approve rules within their branches without interfering in the process of approval taking place within other branches. This is why we refer to Branching as the Parallel Approval Process. In the mock-up example below, we are demonstrating only one approval scenario.

Mock-up Example

For the purpose of this demo process, imagine you have defined the rule as a general user. That said, before you send the approval request to the first approver in the hierarchy, you must first violate the Green Approval rule, followed by the Blue and Orange Approval Rules. Once you have completed this, you can submit the three approval rules to Approver No. 1.

The approval rule process starts to branch at this point. The three approval rules will go to three different designated approval parties: Approver No. 1, Approver No. 2, Approver No. 3 and Approver No. 5.

The Green Approval rule is the first in line that will get approved, that is Approver No. 1 must approve the Green rule. Then Approver No. 5 must approve the rule and submit it for approval to Approver No. 6, the last one in the trajectory of approvers.

Once Approver No. 6 approves the rule, the Green Rule approval process is considered complete.

Now that the Green Rule has been completed, the Blue Rule is next in line to be approved. To illustrate the benefit of Branching we will create a scenario in which Approver No. 2 changes the container configuration. Let’s say Approver No. 2 changes the value of discounted price and updates the quote. SAP CPQ will update the script with a new configuration. In other words, the value entered, means that the rule has been approved. Then someone opens up the cart and changes the value of that container, meaning that although this value has been approved now this is a new value and it would have to be approved again. Because the Green rule follows the configuration of the container, its existing value, but because the value has changed the rule is being evaluated again, the condition has been violated again, the approval calculation has been violated again, so the system again asks the user to again enable the rule. Without the ability to use Branching, the Green Rule would have to be sent back to Approver No. 1 all over again. But Parallel Approval allows the Green Rule to move along the hierarchy as initially planned, that is to be submitted to Approver No. 4.

To demonstrate the benefit of Branching further, let’s say Approver No. 3, who must approve the Orange rule, rejects the rule. Even so, the only rule that has to be resubmitted is Orange, while others continue along the approval process without having to be resubmitted.

At this point, the original user must resubmit the Orange rule again because it was the only one that was rejected (without branching, the approval process would have to be taken back to Blue).

Approver 1 has to resubmit the rule to Approver 3. Let’s say this has not yet been completed – parallel to this approval, Approver 4 can approve the other two rules (Blue and Green) waiting to be approved.

Lastly, Approver 3 should log in to approve the last remaining rule, that is Orange.

Finally, if you log in as the original user you will see that the quote has been approved and is no longer in the Waiting for Approval status.

Use Case: Retract of Expired Approval Rules

The action Retract Approval Prrocess should be set up in Workflow to allow users to retract expired approval rules. This action should be set up in Workflow to be available with the Change Status action (for example, it should lead from Rejected to Awaiting for approval).

In this Use Case, there is a quote that violates two approval rules. Owner requests for approval. Approver rejects it because one of the violated rules must be neutralized by the owner. Owner fixes quote and request for approval again. Now, approver must retract the expired approval rule, and then actions approve and reject become available for the approver. The example is as follows.

Assume that there are two SAP CPQ users:

CPQ user 1

CPQ user 2

CPQ user 2 is approver for the CPQ user 1.

Two approval rules are already defined as follows:

Rule 1

User: CPQ user 1

Approval condition:



[IF]([EQ](<*Eval(<*CTX( Quote.Total.AverageProductDiscountPercent.DefaultDecimal ) *> > 30 )*>,True)){1}{0}[ENDIF]


Approval calculation: 1

Branch name: branch1

Approver: CPQ user 2

Rule 2

User: CPQ user 1

Approval condition: 1

Approval calculation: 1

Branch name: branch2

Approver: CPQ user 2

CPQ user 1 creates a quote. Rule 2 is violated (since condition is set to 1).

CPQ user 1 inputs discount percent of 35. Rule 1 is violated too. (See the following figure).

CPQ user 1 requests for approval and CPQ user 2 rejects it. Then, CPQ user 1 fixes discount percent and inputs 30 instead of 35. Rule 1 is not violated anymore. CPQ user 1 must click on Retract expired approval rules in order to be able to requests for approval again.

CPQ user 2 opens quote and approves it. Now the quote is in approved status.

Note that the Blue Rule remembers the value of some custom field if the value of some custom field has been changed in the approval calculation; the Orange Rule follows the value of another custom field, and the last Green Rule follows the value in the container in the configuration. If something in this process has been changed the rule is being re-evaluated again; even though this rule has been approved the system asks you to go into the approval process and to approve that branch. This multilayered system of approval was introduced to prevent any tempering by different users of your quote. If some custom field value has been selected, that is, the value box is not vacant and a value has been entered in the custom field, and if the user isn’t among specific users, the rules are limited. This means the rules are not triggered for a number of specific users and follow the approval process only with certain users in mind. The calculation formula which is evaluated each time the user logs in checks the value of that custom field. When, as a user, you approve the rule in a certain cart status the value of that custom field is being saved. Each time the system checks that the saved value is equal to the existing value of the custom field. This is all carried out according to the formula entered in the Approval Calculation.

On this page
How Parallel Approval Differs from Standard Approval
Mock-up Example
Use Case: Retract of Expired Approval Rules
Yes
No