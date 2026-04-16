# Quote Layout | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e8e9192145354ca6a649b980cd980caa.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Fields, Calculations, Layout


	
Quote 2.0 Calculations
	
Quote Custom Sections
	
Quote Layout


	
Quote Layout
	
Quote Layout Permissions
	
Item Types
	
Shipping
	
Effective Date on Quote Item
	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Fields
	
Quote Tab Permissions
	
Quote List Settings
	
Bulk Quote Deletion
	
Quote Visibility
	
Quote Acceptance Settings
	
Partner Functions
	
Solution Design
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Business Partners
	
User Administration
	
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
Quote Layout

In the Layout section you can change the look and feel of quotes in the environment, by reordering their current columns and sections or adding new ones. This functionality is available in Responsive Design only, and in Quote 1.0 engine, it can be found in UI Design  Quote Layout.

Once you navigate to this tab (Setup  Quote  Fields, Calculations, Layout  Layout), you will see all sections and columns which are in the current quote layout (some of them are hidden from the user side via permissions). All available columns are displayed in the ProductTypes and Items sections. They are reordered globally, which means that when you move them to another spot, they are simultaneously reordered in all sections in which they are displayed. Sections can also be reordered via drag-and-drop.

Note

Visibility permissions aren’t assigned in this tab. Go to the Layout Permissions tab if you wish to restrict or give access for certain columns/sections in an established quote layout to specific user types.

You have an option to change Item table layout on the Quote, instead of having column header for each column, each cell in table will have header per cell. Subscriptions and Service Contract products are available independent of the integration with SAP Billing Revenue and Innovation Management and admins can turn on layout with headers per cell as well as automatically add all specific columns for Subscription and Service Contract products.

By switching the toggle, admins can enable Layout headers per cell on Items table. When layout is enabled, Add Subscription Specific Fields and Add Service Contract Specific Fields buttons are enabled. When you choose these buttons, the specific columns for subscription or service product will be added automatically to Items table. When columns are added, buttons will become unavailable again. They will become enabled in case when some of specific columns is removed.
Note

Toggle will be enabled when the integration with SAP Billing Revenue and Innovation Management or SAP Subscription Billing is enabled on the tenant.

Related Information
Quote Layout
Yes
No