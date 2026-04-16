# Sales Area Administration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/87232f765dd148a0bbfaa5611e3dbb0a.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration


	
Sales Area Assignments
	
Sales Organizations
	
Distribution Channels
	
Divisions
	
Payment Terms
	
Shipping Conditions
	
Incoterms
	
Sales Organization Visibility
	
Sales Area Parameters
	
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
Sales Area Administration

Learn how to manage sales area data relevant to quotation processes when SAP CPQ is integrated with Sales Orders in SAP S/4HANA and the Sales Area feature is enabled.

Note

You can find the Sales Area section in SAP CPQ Setup only after you enable the Sales Area feature.

The Sales Area section in Setup contains the following pages:

Sales Area Assignments

Sales Organizations

Distribution Channels

Divisions

Payment Terms

Shipping Conditions

Incoterms

Sales Organization Visibility

Sales Area Parameters

A sales area is a unique combination of three organizational aspects that define product and business partner reach: sales organization, distribution channel, and division. When you activate the Sales Area feature, these entities are replicated from SAP S/4HANA into SAP CPQ. However, other sales area entities relevant to the quotation process are not replicated. You need to maintain these in SAP CPQ: payment terms, shipping conditions, and incoterms.

Remember

Before starting the product and business partner replication, you need to define payment terms, shipping conditions, and incoterms in SAP CPQ. Make sure to align these definitions with the available options in SAP S/4HANA.

Note

Product Availability and Business Partner Selection

In SAP S/4HANA, material availability is determined based on three entities: plant, sales organization and distribution channel. As the plant concept is not supported in SAP CPQ, available products (or materials) are determined through sales organization and distribution channel.

Available business partners for selection in quotation and ordering processes, however, are determined both in SAP S/4HANA and—in replicated scenario—in SAP CPQ, via three entities that define a sales area: sales organization, distribution channel, and division.

Related Information
Sales Area
Yes
No