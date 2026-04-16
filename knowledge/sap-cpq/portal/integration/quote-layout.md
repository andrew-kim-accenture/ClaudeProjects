# Quote Layout | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/e8e9192145354ca6a649b980cd980caa.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems


	
SAP ERP Integration for Quote 1.0
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order


	
Preparation
	
Configuration in SAP CPQ


	
Create Communication User
	
Enable the Integration with SAP Cloud Integration
	
Enable Integration with SAP S/4 HANA ERP
	
Enable Integration with SAP Variant Configuration and Pricing
	
SAP General Attribute Mappings
	
Pricing Setup
	
Configure Workflow in SAP CPQ
	
Partner Functions
	
Product Replication Setup
	
Enable Quote and Item Comments


	
Quote Layout
	
Make The Fields Editable
	
Make The Fields Visible on Quotes
	
Configuration in SAP Event Mesh
	
Configuration in SAP Master Data Integration
	
Configuration for Integration in SAP S/4 HANA Cloud
	
SAP Cloud Integration Configuration
	
Data Replication
	
Variant Configuration Integration
	
SAP Sales Cloud Integration
	
SAP Commerce Cloud Integration
	
SAP Subscription Billing Integration for Quote 2.0
	
Integration with SAP Master Data Integration
	
Identity Provisioning Service Integration
	
CX AI Integration
	
Integration with Central Entry Point
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
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