# Users | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/8c0a8df61ba24a7d95d9b609a228000e.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Users


	
Create Temporary Password
	
Forgot Your Password
	
Change Password
	
User Types
	
Permission Groups
	
User Custom Fields
	
Companies
	
Guest User
	
Access Rights
	
Proxy Access
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Users

The Users administration page enables you to manage the existing users in the system and add new ones.

To view a list of all users in the system or add new users, go to Setup  Users  Users. A list of all existing users displays, and their total number is visible in the top-right corner of the page.

Users can be filtered by specific and advanced criteria. To quickly filter users, enter one of the following search queries in the search box:

username

first name

last name

user type

email address

Additionally, when using the Advanced Search, users can be filtered by:

username

first name

last name

user type

email

company

address

ZIP code

managing parent

ordering parent

approval parent

territory

active status

the name of the administrator who created them

created date

the name of the administrator who modified them

modified date

whether access to support is given or not

federation ID.

Values in all columns can be sorted in ascending/descending order by clicking the column headings. Clicking  opens a pop-up where you can select the columns displayed on the Users page. Alternatively, clicking the check mark in the upper-right corner of the Display Settings pop-up selects all columns.

Note

The additional columns display in the grid only the first time they’re added.

Editing user’s information is done by clicking the Edit button next to the corresponding username. In addition, copying or deleting a user is done by clicking  and selecting the appropriate action.

Creating a New User
To create new user, go to Setup  Users  Add New User. All the information needed to create a user is organized into the following four tabs: General, Address, Date and Number Settings, Additional Settings, and Custom Fields. The Custom Fields tab contains all user custom fields.
General Tab
On the General tab, you define general information for the new user.
Note

All fields must be filled out.

Enter user’s personal information.

Enable or disable the Active toggle switch to indicate whether the user is active.

The toggle switch is enabled by default. When the toggle switch is disabled, the user isn’t able to log into SAP CPQ and doesn’t receive email notifications.

Check Is SSO if the user will log in with Federated Single Sign-On. Federation ID must also be entered below for this method to work.

User can access Is SSO User toggle through credentials or through federation:

If toggle is on, user can only log in with Federated Single Sign-On.

If toggle is off, user can log in either with Federated Single Sign-On or CPQ credentials.

Administrators can grant access to the SAP CPQ Support team from the Setup by enabling the Grant Access to support toggle switch. After the toggle switch is activated, a date and a ticket number fields display.

Set an expiration date in the date field to limit the logon access. You can, either manually input the date, or click the calendar icon to select the date. When the specified date expires, account access will be revoked. To cancel access to the support manually, deactivate the Grant Access to support toggle and save changes. Whether access to support is granted or revoked, all changes made on the User Page are reflected in the Setup and vice versa.

In the Ticket Number field, enter the number of the ticket for which you are specifically requesting assistance and save changes.

In the grid with the list of existing users on the Users page you can find the Grant Access to support column which specifies whether access to a user’s account has been granted to the support or not. Accordingly, users can be filtered based on whether access to support is given or not.

In Username, define a username for the new user.

Enter the date until which the password will be valid in the Password Expiration Date field.

This field is required if the Password Validity Period application parameter is set to a certain number of days. In that case, the date until which the password is valid is automatically calculated, but the field is still editable.

Note

You can't create, import or change passwords of other regular users and SSO users during user creation either via user import/export, user management in the Setup, or API.

Enable the Set temporary password toggle switch to create a temporary password for your underlying users.

Administrators and users with delegated authority can create temporary passwords, which is useful when users forget their passwords, when their accounts are locked, or when they have issues with resetting the existing password.

Note

Enabling temporary passwords should be avoided whenever possible. Even though the password is temporary, it is still shared with other users before it’s changed on the first login, and this may potentially lead to security issues.

In User Type, select a user type the user belongs to.

The field offers auto complete suggestions as you start typing a search query. User types matching the input are displayed as suggestions.

(Optional) Click Add New User Type to define a new user type.

In the pop-up, you can only define basic user type information. For additional settings, go to Setup  Users  User Types.

In License Type, select a user's license type. The field contains Standard by default. For the external users, select External.

Note
The following restrictions are applicable if you choose an External User license:

External Users can't be assigned as Administrator.

External Users don't have access to the following User Menu pages: Manage Companies, Manage Users, Manage Content Documents, Manage Document Templates, Bulk Quote Reassign, Manage Global Document Templates.

External Users don't have access to the Teams and Solution Design tabs on Quote 2.0 engine.

An External User’s name can’t be put as CRM User Name in the Setup  CRM Integration  User Mappings.

You can’t change the existing License Type for already created Users. However, in Setup  Users  Users when doing a copy of a User, you can choose between Standard and External license types.

Note that in Setup  Audit Trail there’s no indication or division of users according to license type. For further information on External User license, please contact your SAP Account Executive.

Enable/disable the Administrator toggle switch to indicate whether the user is the administrator.

The toggle switch is disabled by default when creating a new user.

Select a company the user belongs to.

The field offers auto complete suggestions as you start typing a search query.

(Optional) Click Add New Company to define a new company.

In the pop-up, you can only define basic company information. For additional settings, go to Setup  Users  Companies.

Select a brand from the Branding dropdown list.

The selected brand determines the colors, logos, and visual styles the user sees in SAP CPQ, as defined in Setup  UI Design  Branding.

Enter a title for the user (for example Mr.).

In Federation Id, enter a unique username that is used when federation is set up for the tenant. Federation Id should be entered only if an SSO user is created.

If the application parameter Use Global User Id as Federation Identifier is set to TRUE, Global User Id field is displayed instead of Federation Id in user administration and that ID is used to map users. Change of the Global User ID should be an exceptional case since its value is used in integrations and any change may affect the setup.

Click Save.

Alternatively, to save your changes and go back to the Users administration page, click Save & Go Back.

Address
On the Address tab, you define the contact information for the new user. The following table explains each field displayed under the Address tab.
Field	Description


Address(1)

	

The primary address of the user.




Address(2)

	

The secondary address of the user.




City

	

The city where the user resides




Province

	

The province where the user resides




ZIP Code

	

The ZIP or postal code of the user’s address.




Country/Region

	

The country/region/region where the user resides.




State

	

The state where the user resides.




Phone

	

The user's phone number.




Fax

	

The user’s fax number.




Territory

	

The territory the user belongs to if a business is organized into different areas (for example EMEA), as defined in Setup  General  Territories.




ID Code

	

A unique identifier of the user’s address.

Tip

Clicking Save & Go Back saves your changes and takes you back to the Users administration page.

Date and Number Settings
On the Date and Number Settings tab, you define how the user views dates and numbers in SAP CPQ. The following table explains each field displayed under the Date and Number Settings tab.
Field	Description


Date Format

	

The format the user views dates in.




Date Separator

	

The separator used between day/month/year in the date.




Number Format

	

The format of numbers in SAP CPQ.




User Time Zone

	

The user’s time zone.




Allow User to Change Time Zone

	

When the toggle switch is enabled, the user is allowed to change the time zone.

Tip

Clicking Save & Go Back saves your changes and takes you back to the Users administration page.

Additional Settings

On the Additional Settings tab, you define additional information for the new user. Depending on the type, the settings are grouped into Market and Hierarchy sections.

Note

All fields must be filled out.

The following table explains each field displayed under the Additional Settings tab.

Field	Description


Show Quotes Within (up to the current date)

	

Specifies which quotes are visible to the user.




Default Market

	

The default market retrieved for all new quotes.




Default Pricebook

	

The default pricebook retrieved for all new quotes.




Default Dictionary

	

A dictionary with default SAP CPQ UI text (button labels, tooltips, warning messages, and so on).




Approval Parent

	

Receives quotes submitted for approval. Whether or not the user’s approval parent receives a quote depends on how the rules are set up on the Approval Rules page.




Managing parent

	

Can edit or delete child users. The managing parent can also reassign quotes between child users.




Ordering Parent

	

Receives all orders placed by child users for confirmation.




Federation Id

	

A unique username used when federation is set up for the tenant.

Tip

Clicking Save & Go Back saves your changes and takes you back to the Users administration page.

By default, regular users (who aren’t using the Federated Single Sign-On to log into SAP CPQ) receive two emails. One of these emails contains a username and a domain, while the other one contains an URL, which the email recipient needs to use in order to create a password. You can prevent SAP CPQ from sending emails after registration is complete if the Do not email login details to users created by admin parameter is set to TRUE. SSO users don’t receive any emails after they are created, regardless of the selected value of Do not email login details to users created by admin as they are managed by another system, the client’s internal IdP. They can only use Federated Single Sign-On method to log in. .

Note

Companies who have SSO users to whom they wish to send email notifications attached to actions (for example, notifications for quote approval or quote rejection) need to update the SAP CPQ URL which will be sent as a part of the emails. For example, if the URL was http://yourdomain.cpq.cloud.sap/Login.aspx, it should now consist of the user's IdP like this: https://yourdomain.cpq.cloud.sap/fed/domainName/Login.aspx?quote=CFCECFCACFCFC7CA.

Related Information
User Administration
On this page
Creating a New User
Related Information
Yes
No