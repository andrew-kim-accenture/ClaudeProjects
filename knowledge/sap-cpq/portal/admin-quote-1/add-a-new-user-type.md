# Add a New User Type | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/9ebd6bd41e064bd9be496dc638598f27.html#related-information
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


	
Add a New User Type
	
Legacy UI Design
	
Setting Up a Landing Page for Users
	
New Project/Quotation Landing Page
	
Permission Groups
	
User Custom Fields
	
Companies
	
Guest User
	
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
Add a New User Type

You can add a new user type in Setup  Users  User Types  Add New User Type.

Context

Group name is the only required field. However, it’s recommended to fill out other fields too.

Procedure
In Group name, enter a name for the new user type.

System ID is automatically created based on the name entered in Group name.

In Description, enter a more detailed description of the group.
Define the start page by clicking one of the following:

Select Product – a list of configurable and parent/child product items. The system saves the system ID of the selected product so it can be used in scripting (User.UserType.LandingProductSystemId).

Select Page – a predefined list of pages:

Home Page (default) – default page on which users land, for example Catalog

Quote List – a list of existing quotes.

New Quote – an empty quote.

New Quote – Customer Tab – the Customer Info tab of an empty quote.

Catalog – With empty quote – the Catalog page (the system creates an empty quote in the background).

Catalog – catalog with product items.

Approvals – list of quotes in the Waiting for Approval tab.

Click Start category to define the category users belonging to the user type land to in SAP CPQ.
In the Categories pop-up, select a product category on which users land.
Categories with a downward-facing arrow next to it contain subcategories. Clicking the arrow expands the category.
Note

For more details on setting up landing page for a user type refer to Setting Up a Landing Page for Users.

Enable or disable the displayed toggle switches:

Show Fields in a Quote Search/Filter – determines whether the advanced search is available on the Existing Quotes page.

When creating a new quote, require customer to be selected first – determines whether users are redirected to fill out customer information first when creating a new quote.

Show prices – determines whether users belonging to the user group are able to see prices in the catalog (all available views), detailed view, configurator, and shopping cart. The visibility of prices in the shopping cart can be controlled through XSL transformation.

Allow adding incomplete items – determines whether users belonging to the user group are able to create a quote from an incomplete configuration. When the toggle switch is disabled, a message displays, notifying users from the group that the configuration is incomplete and needs to be complete before a quote can be created.

From the Default category view dropdown list, select the view that is used as the default view for categories in the Catalog.

The options are as follows: Tabular, List, and Custom.

In Legacy UI Design, select an existing XSLT file or upload a new one for each visual style displayed.

More information is available in Legacy UI Design.

In UI Design, add a custom template.
Click Save.
Alternatively, to save your changes and go back to the User Types page, click Save & Go Back.
Note

Selections made in Start page and Start category apply to users logging directly into SAP CPQ and users landing from external CRM systems (Salesforce, MS Dynamics and NetSuite CRM systems).

Related Information
User Types
User Administration
On this page
Context
Procedure
Related Information
Yes
No