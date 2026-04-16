# Standalone Subscription Products | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/7c1e8d0610384d098984ea1476601193.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	Integrations

	
Order Item Type
	
Standalone Subscription Products
	
Standalone Service Contract Products
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
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
Standalone Subscription Products

Clients with Quote 2.0 tenants can create and manage subscription products in SAP CPQ without having to integrate with an external system. To do so, during product creation, administrators need to select Subscription in the Order Item Type field and set the flag isSyncedFromBackOffice to FALSE if creating products via API.

Standalone subscription products have three system attributes (Contract Duration, Billing Cycle and Contract Extension Period) and the quote layout different than the standard layout. Basically, standalone subscription products have the same product model and system attributes as subscription products originating in SAP Billing and Revenue Innovation Management, the only difference being that the standalone subscription products can use only standard SAP CPQ pricing and they can only be used in standalone SAP CPQ scenarios.

Yes
No