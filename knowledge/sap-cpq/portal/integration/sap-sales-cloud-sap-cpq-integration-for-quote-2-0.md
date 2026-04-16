# SAP Sales Cloud - SAP CPQ Integration for Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/f8edda558a4b4d1fb6ee6d515f4a5e30.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP Sales Cloud - SAP CPQ Integration for Quote 2.0Version: 2603English
Provide feedback on our search

	
SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
Scenarios for SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
Integration Overview and Prerequisites
	
Configure Single Sign-On with Federation Settings
	
Configuration in SAP CPQ
	
Configuration in SAP Sales Cloud
	
Configuration in SAP Cloud Integration
	
Ticket Components
SAP Sales Cloud - SAP CPQ Integration for Quote 2.0

SAP CPQ tenants with Quote 2.0 can be seamlessly integrated with SAP Sales Cloud.

The same integration scenarios are supported in Quote 1.0 and Quote 2.0. The old quote engine uses customers, while in Quote 2.0, business relationships are recorded via involved parties. Another difference between the integrations in Quote 1.0 and Quote 2.0 is that the latter uses subscription to domain events to send out notifications to the connected third party whenever the selected event occurs in SAP CPQ.

In the integrated environment, SAP CPQ quote acts as the only quote in SAP Sales Cloud, while the SAP Sales Cloud sales quote is created in the background. After landing the first time to SAP CPQ, the sales quote created in SAP Sales Cloud is no longer editable and opening it opens the quote in SAP CPQ. Additionally, the user journey on the SAP Sales Cloud side starts on the sales quote and not on the opportunity, as in the old integration.

The following pages describe the procedure for configuring the integration between SAP Sales Cloud and SAP CPQ for Quote 2.0 using SAP Cloud Integration. The instructions are focused on administrators and users who will be managing the integration in a new integration tenant, not in an existing tenant. Clients with an existing tenant will also find the instructions useful, although they may come across errors that are bound to the existing modeling on their tenants.

Network Security team takes the responsibility of preparing the network environment across different systems and its security aspects.

Note

Configurable products synchronized from SAP Variant Configuration and Pricing to SAP Sales Cloud can be used in a scenario for the SAP CPQ integration.

Yes
No