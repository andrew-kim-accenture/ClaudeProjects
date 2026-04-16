# SAP S/4HANA Bundle Multi-Level Product | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f21989f09f494ce1a537942ae2523dc6/299eed4003424e75ab974b7cf416a167.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Product Bundle
	
Product Type
	
Roles
	
Product Master Data: SOM_REC_CPQ_MOVIE_CONFIG
	
Product Master Data: SOM_REC_CPQ_CLOUD_UNLIMITED_YEAR
	
Product Master Data: SOM_BSV_CPQ_CLOUD_001
	
Product Master Data: SOM_SLS_CPQ_TABLET_BASIC
	
Product Master Data: SOM_SLS_CPQ_TABLET_CONFIG
	
Product Master Data: SOM_SVC_CPQ_SUPPORT_GOLD
	
SAP S/4HANA Bundle Multi-Level Product


	
Create Root Bundle Product SOM_BUN_CPQ_1
	
Create BOM
	
Maintain Variant Configuration Modeling
	
Business Partner Master Data: BP_Test
	
Data Loading
	
Appendix
SAP S/4HANA Bundle Multi-Level Product

Level

	

Product

	

Product Type




1

	 	 	

BUND




1.1

	

SOM_BUN_CPQ_1_1

	 	

BUND




1.1.1

	 	

SOM_SVC_CPQ_SUPPORT_GOLD

	

NLAG-CTR




1.1.2

	 	

SOM_REC_CPQ_CLOUD_UNLIMITED_YEAR

	

SUBS




1.2

	

SOM_BUN_CPQ_1_2

	 	

BUND




1.2.1

	 	

SOM_REC_CPQ_CLOUD_UNLIMITED_YEAR

	

SUBS




1.2.2

	 	

SOM_REC_CPQ_MOVIE_CONFIG

	

SUBS




1.2.3

	 	

SOM_SVC_CPQ_SUPPORT_GOLD

	

NLAG-CTR




1.3

	

SOM_BUN_CPQ_1_3

	 	

BUND




1.3.1

	 	

SOM_REC_CPQ_MOVIE_CONFIG

	

SUBS




1.3.2

	 	

SOM_SVC_CPQ_SUPPORT_GOLD

	

NLAG-CTR

Yes
No