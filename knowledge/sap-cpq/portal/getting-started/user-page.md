# User Page | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/8d3af393de3a485dad57d6d10768cdd1/af2b223348dc42ed9913a1ec928cc862.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Getting Started Guide for AdministratorsVersion: 2603English
Provide feedback on our search

	
What is SAP CPQ?
	
Environments
	
Supported Browsers
	
Languages
	
Accessibility
	
Quote Engines
	
Integration Capabilities
	
Roles
	
Log In and Log Out
	
Password Requirements
	
Navigating SAP CPQ
	
User Page
	
Setup Home
	
Get Started with Basic Procedures
	
Advance on SAP CPQ
	
Stay up to Date with SAP CPQ
User Page

The User Page gives you the ability to manage the account-specific information in the system. Here, you can modify personal details, set defaults, modify your password, and administer users.

The User Page can be accessed via User Menu  User Page from the top-right corner of the homepage. It offers the following options:

Note

You can set the duration of a user session with an application parameter Session Expiration Time. The parameter can be found under the General tab inSetup  General  Application Parameters.

User Details

In User details, you set default values and manage dates. The name of the domain you're logged into displays above the fields.

All the fields from the User details page are listed and described in the table:

Field

	

Definition




Effective Date

	

Date used for simulating the effective date of a product. It can be used to make products appear in the catalog when their effectivity period doesn't match the current date. Additionally, it determines the pricing displayed to the user if a validity period is defined for the selected price book or price book entries.




Date Format

	

Specifies the format in which dates are displayed and entered (for example, dd/MM/yy). Users must enter dates in the selected format. Otherwise, an error is displayed until the correct format is used.




Date Separator

	

Separator used between day/month/year in the effective date.




Number Format

	

Format of numbers throughout SAP CPQ (for example, decimal separator, thousand separator).




Default Market

	

Determines which market is applied by default when creating new quotes. If needed, a different market can be selected later in the quote.




Default Pricebook

	

The default price book retrieved for all new quotes.




Default Dictionary

	

Dictionary with default SAP CPQ user interface text (button labels, tooltips, warning messages, and so on).




User Time Zone

	

Defines the user’s time zone, which is applied to time-sensitive data such as quote creation, expiration, and workflow events.

In addition, there are six toggles that display on the page:

Enable Accessibility Features - activate and deactivate accessibility features.

Users can administer the Accessibility feature on their own by enabling/disabling the toggle switch Enable Accessibility Features in the User Page. This toggle switch enables you to turn off accessibility features in case the page-loading time is slower. This option is only available for the Quote 2.0 engine.

Enable Dark Contrast Theme or Enable Light Contrast Theme

SAP CPQ offers Dark and Light high contrast themes for the user interface of the application, specifically designed for Quote 2.0. The changes are applied only on the user part of application (not on the Setup page). These themes have been added to ensure compliance with accessibility standards, giving users the option to select their preferred theme on the User Page  User Details tab.

Note

Users who have customized templates may encounter problems with the light and dark themes, as they may not function as intended due to differences in the HTML code of the customized templates and the CSS selectors, which are designed for the HTML of the most recent template version.

Grant Access to your Company Admin - enable administrators on your tenant to use SAP CPQ as the logged user until the selected date. Available only to users who are directly logged into SAP CPQ (unavailable for users coming from third-party systems within integrations).

Grant Access to support - allow SAP Sales Cloud support to use SAP CPQ as the logged user until the selected date.

Out of office - choose backup approvers that receive a copy of the approval request sent to the logged user.

To set an effective date for the current session, it’s necessary to enter a date in the correct format in the Effective Date field. The Date Format and Date Separator fields are used to determine how dates are displayed and entered. Dates must be entered in the selected format with the selected separator. If not, an error is displayed until the user enters the correct date. The Default Market is used to determine what market to apply to products that are being configured. Once the product is configured and added to the quote, a new market can be chosen.

Modify Personal Details

This section allows users to modify personal data, such as Name, Email Address, ID Code, Address, and so on. Users are unable to change critical settings such as user type (group), approval/managing/order parent, and so on. Thus, administrators don’t need to modify a user for an address change or phone number change.

Tip

In ID Code enter the postal address code. This code is a unique identifier of your address, in case you don't wish your full address to be visible.

Modify Password

Users can change their password by clicking the Modify Password link. In order to change your password, the user needs to enter their current password then type the new password. The new password needs to meet certain requirements before it’s deemed valid. For more information, see Password Requirements.

For step-by-step instructions, see Change Password

Note

The Modify Password tab in the User Page isn’t available to SSO users and users who have the delegated authority to manage other users.

User Administers

This section appears only if you’re allowed to administer users by the administrator. A list of users of whom that local administrator is the managing parent and all users that the local administrator has created, can be found on this page.

On this page
User Details
Modify Personal Details
Modify Password
User Administers
Yes
No