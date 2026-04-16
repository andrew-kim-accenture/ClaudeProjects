# API - Quote 1.0 vs Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/6f572afe2a9442bb9d724f9735518a91.html?locale=en-US&state=PRODUCTION&version=2603
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


	
CTX Tags - Quote 1.0 vs Quote 2.0
	
API - Quote 1.0 vs Quote 2.0
	
Feature Specific Migration Instructions
	
Migration Effort Estimate Legend
	
Quote 2.0 Migration Checklist
	
Support Procedure for Migration to Quote 2.0
	
Quote 1.0 to Quote 2.0 Migration FAQ
API - Quote 1.0 vs Quote 2.0

For Quote 2.0, you should primarily use the REST APIs that are developed specifically for this quote engine and that are not supported by the old quote engine.

Note

We encourage you to use the REST APIs specific to Quote 2.0 whenever possible and avoid using the SOAP and REST APIs that were developed for the old quote engine. Although most of the old APIs can work with the new quote engine, there might be issues since those APIs were not developed primarily for Quote 2.0.

Since Quote 2.0 is still under development, not all new APIs are currently available. They are, however, being developed in each release to support the improved functionalities of the new quote engine.

REST API

All REST APIs that are available for Quote 1.0 are available for Quote 2.0 as well. However, since they were developed primarily for the old quote engine, their usage with Quote 2.0 is not recommended. Instead, you should use the APIs developed specifically for the new quote engine.

REST APIs developed for the new quote engine (/api/v1/quotes) are listed and documented in the REST APIs documentation page. The /api/v1/quotes APIs are not supported in the old quote engine.

SOAP API

The following SOAP APIs are not supported in Quote 2.0:

NewQuote

SearchQuotes

CreateNewQuoteAndGetQuoteData

NewQuotefromSF

SearchQuotesFromSF

NewQuoteForFederationRouting

NewQuoteForFederation

SetCartProperties

GetCartProperties

SetCartItemProperties

AddItemsData

GetQuoteField

GetQuoteData

GetQuoteItemsAttributes

GetRevisionsData

GetItemAttributes

Other SOAP APIs can be used in the Quote 2.0 engine, although this is not recommended. They can be found in the SAP CPQ API Documentation guide.

Related Information
Quote 1.0 vs Quote 2.0 - Feature Differences
CTX Tags - Quote 1.0 vs Quote 2.0
Feature Specific Migration Instructions
Yes
No