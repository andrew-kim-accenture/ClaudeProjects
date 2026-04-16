# Providers | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/16e44ff7c0464a89bcdf06ed27d99239.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Migration Guide to Quote 2.0 EngineVersion: 2603English
Provide feedback on our search

	
SAP CPQ Migration Guide to Quote 2.0 Engine
	
About Quote 2.0 - Benefits and Compatibility
	
Quote 2.0 Migration Process
	
Migration Effort Estimate


	
Quote 1.0 vs Quote 2.0 - Feature Differences
	
Feature Specific Migration Instructions


	
Pricing/Calculations
	
Products
	
Quotes
	
Customers/Customer Roles
	
Users
	
CRM Integration
	
Providers
	
UI Design
	
Workflow/Approval
	
Develop
	
General
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
Migration Effort Estimate Legend
	
Quote 2.0 Migration Checklist
	
Support Procedure for Migration to Quote 2.0
	
Quote 1.0 to Quote 2.0 Migration FAQ
Providers

*Migration Effort Estimate Legend

Migration Overview

Setup Section Name

	

Availability in Quote 2.0

	

Status in Quote 2.0

	

Description

	

Migration Effort Estimate

	

Migration Instructions




Providers

	

Available

	

Improved

	

Integrations support is not the same in the two engines.

	

XL

	

Migration Instructions




DocuSign

	

Not Available out of the box

	

To Do

	

Currently, you can set up a custom integration using APIs and scripting. The plan is to create a framework for project-based implementations.

	

XL

	 


AdobeSign

	

Not Available out of the box

	

To Do

	

Currently, you can set up a custom integration using APIs and scripting. The plan is to create a framework for project-based implementations.

	

XL

	 


Microsoft Dynamics

	

Not Available out of the box

	

To Do

	

Currently, you can set up a custom integration using APIs and scripting. The plan is to create a framework for project-based implementations.

	

XL

	 


Enablement

	

Not Available

	

Obsolete

	 	 	 


CLM

	

Not Available out of the box

	

To Do

	

The CLM solution used for Quote 1.0 will be replaced by a partner solution in Quote 2.0. Currently, you can set up a custom integration using APIs and scripting.

	

XL

	 


CX AI

	

Available

	

No Change

	 	 	 


External Configurator

	

Available

	

Quote 2.0 Exclusively

	 	 	 


SAP S/4HANA (Sales Order)

	

Available

	

Improved

	

The common settings stayed unchanged, but some things that you've manually adjusted in the iflow, you now need to readjust because Quote 2.0 has an out of the box solution for that.

	

L

	

Migration Instructions




SAP ERP Central Component (ECC)

	

Not Available

	

Obsolete

	

Project-based implementation, not available out of the box.

	

XL

	 


General Attribute Mapping

	

Available

	

Improved

	

Some CTX tags have changed in Quote 2.0 and you need to update the mappings accordingly.

	

S

	

Migration Instructions




Integration Suite

	

Available

	

Improved

	

Quote 1.0 and Quote 2.0 use different iflows.

	

L

	

Migration Instructions




Variant Configuration

	

Available

	

No Change

	 	 	 


Subscription Billing

	

Available

	

Quote 2.0 Exclusively

	 	 	 


SAP Billing Revenue and Innovation Management (Solution Quote in SAP S/4HANA) (subscription and service contract products)

	

Available

	

Quote 2.0 Exclusively

	 	 	 


SAP S/4HANA Cloud

	

Available

	

Quote 2.0 Exclusively

	 	 	 


SAP Commerce

	

Available

	

Improved

	

Quote 1.0 and Quote 2.0 use different iflows.

	 	 


SAP Cloud for Customer

	

Available

	

Improved

	

Quote 1.0 and Quote 2.0 use different iflows.

	

L

	

Migration Instructions




SAP Master Data Service for Business Partners

	

Available

	

Quote 2.0 Exclusively

	 	 	 


Salesforce

	

Available

	

No Change

	 	 	 


Subscription to Events

	

Available

	

Improved

	

There is no functional change between Quote 1.0 and Quote 2.0, but in Quote 2.0 there are more quote level events than in Quote 1.0.

	

S

	

Migration Instructions

Migration Instructions
Subscription to Events

In both Quote 1.0 and Quote 2.0, there are product and attribute-related events: ProductCreated, ProductUpdated, ProductDeleted, AttributeCreated, AttributeUpdated, and AttributeDeleted. In Quote 1.0 for quote-related events, there is only OnQuoteDelete, and in Quote 2.0 there are these events as well: OnPlaceOrder, QuoteStatusChanged, OnSaveAction, OnItemAdded, OnItemRemoved, and onQuoteCreated.

SAP S/4HANA (Sales Order)

Quote 2.0 is event-based so you need to set the order place event with the URL of the new iflow. If you have customized your iflow in Quote 1.0, you now need to go into SAP Cloud Integration and make the same adjustments in the Quote 2.0 iflow. Additionally, if you've manually mapped your quote and quote item custom fields in the iflow, you now need to map them again in Quote 2.0. The new engines offer an automatized way for condition mappings.

General Attribute Mapping

Check which CTX tags have changed in Quote 2.0 and update your mappings based on that. Have in mind that Quote 2.0 supports Business Partners (and not Customers) so you will need to update customer-related CTX tags.

Integration Suite

Go to Common Settings and update the iflow URL in the REST API base URL address field. Additionally, change the username and password.

SAP Cloud for Customer

Since Quote 1.0 and Quote 2.0 use different iflows, after the migration, you need to update the iflow URLs.

SAP Commerce

Quote 2.0 is event based so you need to set the order place event with the URL of the new iflow.

On this page
Migration Overview
Migration Instructions
Yes
No