# Guest User | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/7977f6602e574a4387296d404d00f6c3.html#guest-user-side
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


	
Users
	
User Types
	
Permission Groups
	
User Custom Fields
	
Companies
	
Guest User


	
User Registration
	
Setting Up an Anonymous User
	
Access Rights
	
Proxy Access
	
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
Guest User

A guest user in SAP CPQ is a user with limited access rights. For example, guest users may need to log in only to browse products in the catalog with or without making the final purchase.

Administrator Side
To enable the guest user feature and allow browsing through products, administrators must first make adjustments in the Setup.
User and Workflow Adjustments
You can create a guest user with both a Standard User license and an External User license. The details on creating a guest user are explained in Setting Up an Anonymous User. Here are listed the main steps.

Create a user account that will be used for guest users and set the privileges for the categories and products that should be visible to guest users. Make sure that the user is active, otherwise logging is disabled.

Create a company and a permission group for the guest user.

Set up the workflow actions and permissions. Since a guest user has limited access to SAP CPQ features, only some actions should be enabled (Add Item, Reprice, Save Quote and Copy).

Guest User Settings
All settings for guest users can be managed in Users  Guest User and Default User Settings  Guest User Settings. The Guest User Settings tab contains the basic settings for guest users.

In Guest user, select a user.

Any user in SAP CPQ can be selected as guest user. Make sure that the selected user is active because inactive users won’t be able to log in.

(Optional) Enable the following toggle switches:

Guest user cannot add to quote - users can only browse items but they can’t add them to quotes.

Guest user can proceed to check-out without self-registration - defines whether the guest user needs to self-register in order to proceed with the checkout. If the parameter is enabled, the Customer Info tab opens up after the checkout. If disabled, the login page opens after the checkout and users have to register.

When guest user creates a quote, system can pre-populate customer roles based on user's or user's company info - defines whether the system prepopulates customer roles with user’s Bill-to and Ship-to information as well as the user’s company information.

Click Save.

The guest user settings are adjusted.

Legacy SSO Settings
In this page, you define the settings for the User Registration page.

In Single Sign-On key and Single Sign-On vector, enter values to encrypt and decrypt a username.

You need to provide unique values.

Enable the Send Single Sign On Link to the Quote as result of NewQuote API method field.

Click Save.

A more detailed description is available in Single Sign-On.
Guest User Side
Guest users can log into SAP CPQ in the following ways:

login page - administrators should provide the username/password/domain. After logging, users land to the catalog.

direct link - the format of the link should be app_name/guest (for example, yourdomain.cpq.cloud.sap/guest). The login screen is skipped and users land to the catalog.

Users logged as guest users can browse the catalog and create quotes (if Guest user cannot add to quote is disabled).
Note

Guest Involved Parties, Teams and Solution Design tab on Quote are not available.



User Registration

User Registration allows users to create an account if you haven't previously created one for them.
Setting Up an Anonymous User

Preparations and steps to create a guest user.
On this page
Administrator Side
Guest User Side
Yes
No