# Standalone Service Contract Products | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ac7a54381ff54f809bf630526033c880.html?locale=en-US&state=PRODUCTION&version=2603
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
Standalone Service Contract Products

Clients with Quote 2.0 tenant can create service contract products without having to integrate with an external system. To do so, during product creation, administrators need to select Service Contract in the Order Item Type field and set the flag isSyncedFromBackOffice to FALSE if creating products via API.

Standalone service contract products have five system attributes (Billing Date, Response Profile, Service Contract Duration, Service Profile, and Settlement Period) and the quote layout different than the standard layout.

Basically, standalone service contract products have the same product model and system attributes as service contract products originating in SAP Billing and Revenue Innovation Management, the only difference being that the standalone service contract products can use only standard SAP CPQ pricing (pricebook lookup and custom pricing) and the standard configuration type.

Yes
No