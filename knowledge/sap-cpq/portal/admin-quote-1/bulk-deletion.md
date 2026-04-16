# Bulk Deletion | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/ca3ce8af79804e3b98910b1ac75562d9.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
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
Bulk Deletion

The Bulk Deletion section allows administrators to delete other users, their quotes or their customers.

On the Bulk Deletion page, you can choose whether to delete users and their quotes, or to delete local and global customers in the system.

Procedure
Delete customers

In this section, you can delete a user’s customers or global customers. To delete global customers, search for customers in the table and select the checkbox next to the customers you want to delete. Next, click the Delete button.To delete a user’s local customers, click the Select button next to Select User, and click the selection icon in the list of users. The selected user's customers display in the section, where you can delete them by selecting the checkbox next to the user and clicking Delete. Only active users can be selected in this menu.

A customer can't be deleted if there are quotes associated with them. Make sure that all quotes associated with the customer are deleted prior to deleting the customer.

Delete users or their carts

In this section, you can delete a user's account, user's quotes, or both.

Search for the users in the table.

Select with checkbox which user or user’s quotes you want to delete is for deletion.

Choose Delete User / Delete User’s Quotes.

Note

Users can't be deleted in these cases:

They are the administrator of a company.

They are an approval, managing or ordering parent.

They have customers or quotes associated with their account.

You must delete them beforehand if you want to delete the user.

If you want keep the user's quotes and still delete the user, first reassign the quotes to another user and then delete the user's account. If you only delete a user's quotes, the account remains intact.

Yes
No