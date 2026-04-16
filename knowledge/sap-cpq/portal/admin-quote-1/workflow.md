# Workflow | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/50fc3151211f479d910cbcf295f77dc9.html#cart-item-actions
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
Workflow

The following section describes the workflow actions.

After defining statuses, the administrator needs to define the actions that will change the quote/order status. For example, a desired behavior may be to change quote status from Open to Order Placed if a user clicks on the Place Order button. There are three states in the workflow actions. Each relates to a tab on the load quote page.

My Quotes - (available for all users) My Quotes tab displays all quotes that the currently logged in user created. This will likely be the most robust workflow as it is how each user interacts with their quotes.

Waiting for approval - (This contains no quotes for most users except for users who are Approval Parents for other users). These are the quotes of other users that the currently logged-in user is their approval parent. This could be setup so that the Approval Parent has the option to:

Approve Quote

Reject Quote

or Forward Quote

Forward Quote may be used to forward the quote to another Approval Parent. This would be applicable in a case where the value of the quote is higher than their allowed approval amount, for example.

Other Quotes - (this also contains no quotes for most users except for the users given visibility rights) - These are quotes of other users that the logged-in user is authorized to see through rules set in the Quote Visibility section under the Quotes admin menu.

Note

Although some users might be marked as "inactive" in administration, their quotes are still visible, and they might appear to some users on the "other quotes" tab.

The relationships between statuses and actions are specified through the Workflow Actions section of the administration. This section is invoked by clicking on the Workflow Actions link under Workflow/Approval admin menu.

The default view of the Workflow Actions section is the Table View. This displays the workflow in a grid pattern. The table view is very efficient for defining workflow actions because it offers fewer mouse clicks and a table that shows all defined actions on one screen. The left side of the table contains Pre-Action (Start) Statuses and the top of the table contains Post-Action (End) Statuses. The list of actions in each intersecting square specifies which actions will change the status listed all the way on the left side to the status listed all the way on the top. For example, if a user clicks on Place Order while the quote is Open, the quote status will be changed to Order Placed.

Alternatively you can view the workflow in a List View. This lists each start and end status along with the tab, action name, conditions, pre actions, post actions and notifications. The List View is particularly useful for viewing which actions have conditions, notifications, pre actions, and/or post actions defined. It also allows you to quickly copy, delete, edit, and search for a workflow event. In this chapter we will discuss workflow administration using the Table View.

Note

Statuses can be added or removed as described in Statuses.

Status relations can be defined, not only for User's own Quotes (My Quotes), but for Quotes assigned to the user for approval (Waiting for approval), and for Other Quotes (for the users allowed to see quotes logged by other users). To switch between My Quotes, Waiting for Approval and Other Quotes areas, select the corresponding tab at the top left corner of the table. Consequently, status relationships can be defined for any one or all three from this screen. The active status area has the same background color as the top border of the table.

Example

The following shows the Workflow Actions table:

On the user side, adding an item to quote creates a quote and sets the status to open (or whatever status is set as the default). A first set of actions are visible from the quotation tab.

In the My Quotes tab under Existing Quotes on the user side, another set of actions are visible to the customer.

The process of specifying an action is performed by clicking the +.

Editing a workflow event/intersection displays the status administration page where you can add and remove actions for that workflow event/intersection.

Note

For more information on actions, see Action Details.

Next to the actions are buttons that will allow further tailoring. The following are available for each action:

Automatic Reconfigure - Automatic configuration determines if the items in the quote use their initial product rules and pricing (the product rules and prices used when the quote was generated) or if the items in the quote need to be reconfigured (updated using the current product). Selecting the Automatic Reconfigure checkbox adds a suffix of R to that action, like Copy-R, or Edit-R which means that the item would be revised or reconfigured using the current rules and pricing every time the action is used.

Unchecking the Automatic Reconfigure checkbox ensures that the items in the quote keep the original rules and pricing used at the time the item was added to the quote.

Perform On - Will either be Cart or Cart Item. Cart Item actions are generally action buttons visible in the Quotation tab, while Cart actions are generally actions performed on the quote from the load quote page.

Condition - Allows a check to be performed to determine whether or not the action will be available.

Notification - Gives the ability to send out email notifications when the action is performed.

PreAction/PostAction - Custom actions can be done before or after the action is completed. Commonly this is used for CRM actions such as Create/Update Account or Contact.

Note

If any condition is maintained in the workflow for a particular combination of tab, start, and end status, the condition is evaluated instead of what is defined under the global condition for quote actions in Set up  Workflow/Approval  Actions  Action condition.

Note

Users will be unable to use the actions defined unless they have been given permission to see the actions. This is defined in Workflow Permissions.

Next to option for switching views, there are two more options: to copy workflow (since there are three workflow tabs sometimes it can be usefull to copy the workflow from one to another) and clear workflow.

Quote Actions
The following two actions are available:

Calculate action, also referred to as Reprice action

Once you add product(s) to the quote, all calculations are complete. When you change something in the quote (discount percent, price, etc.), then you should click on action calculate to get the updated information, prices, etc. in the quote

Reconfigure action

This action reconfigures all items present in the quote. Also this action triggers calculate action at the end of its execution. This action is more time consuming than calculate action.

Cart Item Actions

Upgrade to New Product Version – when a product has a newer version than the one that is already in a quote, and something is changed in the quote while this check box is selected, users will be prompted to update products to newer versions, or products will be upgraded automatically.

When the action is triggered, a popup window with a progress indicator displays and shows how many of the total number of items have been upgraded.

Note

To ensure these improvements work properly, the Upgrade to New Product Version action needs to be enabled for the same quote status in both Workflow and Item Actions Workflow in Setup.

Note

The Upgrade to New Product Version action is not supported for Variant Configuration (VC) products in Quote 1.0. If you change the quote effective date and use this action, the VC products will not update to the latest version.

You can check if a quote has incomplete items by using these CTX tags:

For checking whether a quote has incomplete items (<*CTX(Quote.HasIncompleteItems)*>)

For checking whether a specific item has incomplete configuration (<*CTX(Quote.CurrentItem.HasIncompleteConfiguration)*>).

On this page
Example
Quote Actions
Cart Item Actions
Yes
No