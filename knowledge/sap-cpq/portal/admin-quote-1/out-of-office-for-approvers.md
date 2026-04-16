# Out of Office for Approvers | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/77df6465fe5149839135d870cdd1e75c.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Out of Office for Approvers
	
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
Out of Office for Approvers

The Out-of-Office feature for SAP CPQ approvals enables Approvers on leave to delegate their Approval requests to substitute Approvers.

With this function, the requests are not held up during the original Approvers’ absence. The backup Approvers can approve, reject or submit Quotes for further approval on behalf of the original Approver.

Example

You are in charge of Quote Approvals in your company. However, you plan to go on vacation, which means you will be unable to respond to Approval requests during your time off. To ensure all Approval requests are dealt with while you are away, you should make use of the Out-of-Office feature and choose one or multiple backup Approvers to approve or reject Quotes on your behalf. The backup Approvers will receive a notification and a copy of the approval requests addressed to you. They will be able to approve or reject Quotes, ensuring a successful approval process while you are out of office.

Enable the Out-of-Office Feature

To turn on the out-of-office mode and start assigning backup approvers, take the following steps:

Go to User Page  User details.

Turn on the Out of office toggle switch.

The fields for start and end dates and for choosing backup approvers display.

Define the dates.

Enter the first name, last name, full name, or the email of your backup approver in the Choose Backup Approver field.

A dropdown list appears, displaying all results which contain the characters you entered. These results include the backup approvers’ full name, email and country/region. If a backup approver is out of office at the time of your search, the search results display their absence dates in your time zone.

Select backup approvers.

Click Save.

Note

When searching for backup approvers, SAP CPQ filters active users who belong to the same company as the original approver.

Out-of-Office Approval Authority

When a Quote is submitted, both the original and backup Approvers receive the Quote in their queue. Any of the backup Approvers can approve/reject the Quote or submit it for further approval. If there are multiple backup Approvers, a single backup Approver is enough to approve/reject the Quote.

When searching for available Approvers, SAP CPQ only looks into the first-level backup Approvers.

When the original Approver’s backup Approver is out of office (A→B), the Quote remains in the queue until either A or B turns off the Out of office toggle switch.

In addition, if the original Approver has multiple backup Approvers (A→B, C, D, E, etc.), and they are at the same level, SAP CPQ searches for the first available backup Approver. If all first-level backup Approvers are unavailable, SAP CPQ stops searching for the next-level backup Approvers.

If the original Approver has Quotes awaiting approval, a warning message containing a link to the Waiting for Approval tab displays when the Approver turns on the Out of office toggle switch. The Approver does not have to clear the queue in order to set the out-of-office mode. However, the queued up Quotes are not assigned to the selected backup Approvers. The backup Approvers receive Quotes that are submitted after the out-of-office mode is turned on.

Reevaluating Backup Approvers

The backup Approver is determined when a User submits the Quote. If the Quote is already approved and then resubmitted for a new approval, SAP CPQ reevaluates backup Approvers. For example, if the original Approver disables the out-of-office mode or changes the list of backup Approvers, previous backup Approvers might not be added.

On this page
Enable the Out-of-Office Feature
Out-of-Office Approval Authority
Reevaluating Backup Approvers
Yes
No