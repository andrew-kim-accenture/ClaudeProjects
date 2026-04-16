# Approval Process | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/b1382c59f3de4ce380bf72d18d9e64b7.html?locale=en-US&state=PRODUCTION&version=2603
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
Approval Process

A quote needs to be submitted for approval when the discount is too high, the total amount of the quote is too high, or other rules decided by the company have been violated.

The process of submitting a quote for approval is the same no matter the reason why approval is required. For the following explanations, discount is used as an example. The following procedures can differ from user to user due to the way the system is configured.

Submitting a Quote for Approval

Once a product is configured and added to quote, the user can modify the discount of products or line items. Also it’s possible to modify the total price of items. If the resulting discount is higher than the allowable range, then the value turns red and the quote needs to be submitted for approval.

When clicking Calculate in the Action area, the discount is calculated and actions such as Place Order and Generate Quote are removed. Displayed at the bottom of the Cart area are the rules that were violated resulting in the quote needing to be submitted for approval. In addition, an action named Approvals is added in the Action area. Clicking this button takes user to another page where they can insert comments for each violation and submit the quote for approval. Once the quote is submitted for approval, the status changes and email notifications are sent to the approve parents alerting them of the quote.

Quote Resolution

Once a quote has been submitted for approval, it’s shown on the approver parent’s Quote List page under Waiting for Approval. Quote resolution can be done by choosing the Approvals actions from the Actions column. This action displays the approval page where the quote can be approved or rejected. In addition, the approver can enter comments for the submitter. These comments can be read through the Approval History action found in the Action area of the cart.

Responsible Approvers

While they are in Waiting for Approval, users find it convenient to have the information about who is responsible for approving the particular quote. The tag <*ResponsibleApprovers*> can be used to retrieve this information. While you’re able to use this tag the standard way (in document generation templates or in custom fields), you can also add a column used to display the information provided by this tag.

Follow these steps to add the column:

Go to Setup  Quotes  Quote List Settings and click Add Column.

The Quote List Settings definition page opens.

Select Responsible Approvers from the Available fields dropdown list, enter the desired label, and select which user types are introduced with this column.

Click Add Column to add this column to the list of the existing columns.

Click Save.

The column is now displayed. It’s populated with the desired information for each quote that is in status Waiting for Approval or any other approval status defined by your workflow.

Related Information
Out of Office for Approvers
On this page
Submitting a Quote for Approval
Quote Resolution
Responsible Approvers
Related Information
Yes
No