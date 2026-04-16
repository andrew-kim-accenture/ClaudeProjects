# Integration with the Solution Quote Object in SAP S/4HANA: SAP Billing and Revenue Innovation Management | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/1003f328b3794a18ba3aad49c0a7b4c2.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP Billing and Revenue Innovation Management IntegrationVersion: 2603English
Provide feedback on our search

	
Integration with the Solution Quote Object in SAP S/4HANA: SAP Billing and Revenue Innovation Management
	
Purpose
	
Quote-to-Cash Context
	
System Requirements
	
Prerequisites
	
Configuration in SAP CPQ
	
SAP S/4HANA Configuration
	
Setup SAP Event Mesh
	
SAP Cloud Integration Configuration
	
Tiered Pricing
	
Usage-Based Pricing
	
Master Data Creation
	
Data Loading
	
Appendix
Integration with the Solution Quote Object in SAP S/4HANA: SAP Billing and Revenue Innovation Management

This integration connects the quote object in the Quote 2.0 engine in SAP CPQ with the solution quote object in SAP S/4HANA (SAP Billing and Revenue Innovation Management).

This integration uses SAP Cloud Integration as middleware for communicating data across the systems.

Note

Behavior of Item Types in SAP CPQ Quote 2.0 and SAP S/4HANA Integration:

When Product Item Types are enabled in the SAP CPQ Quote 2.0 engine by the SAP CPQ administrator:

Only line items marked with Item Type = Base will be considered for follow-up document creation in SAP S/4HANA public and private cloud.

Following Item Types are excluded from SAP S/4HANA follow-up document creation. These item types are typically not billed to the customer, and thus are irrelevant for official transactional in SAP S/4HANA:

Optional

Variant

Alternative

Yes
No