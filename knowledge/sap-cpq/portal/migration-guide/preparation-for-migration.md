# Preparation for Migration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/1643a2876ef84f2583f96e7fa45c537c.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Migration Guide to Quote 2.0 EngineVersion: 2603English
Provide feedback on our search

	
SAP CPQ Migration Guide to Quote 2.0 Engine
	
About Quote 2.0 - Benefits and Compatibility
	
Quote 2.0 Migration Process


	
Preparation for Migration
	
Quote 2.0 Implementation Process
	
Switching to production with Quote 2.0
	
Quote Migration Tool
	
Migration Effort Estimate
	
Support Procedure for Migration to Quote 2.0
	
Quote 1.0 to Quote 2.0 Migration FAQ
Preparation for Migration

Considering that migration to Quote 2.0 needs to be handled as a project, this phase is important to help identify the scope, calculate the risk and establish a project setup that will ensure smooth transition to new engine.

Engage with SAP services or partner

Migration journey for clients who decided to migrate to Quote 2.0 should start with engaging with SAP services team or with one of SAP partners to help them prepare for the project and analyze all relevant aspects such as project scope, timeline and budget.

Assess the migration project scope

In order to have proper estimate of migration scope, timeline and effort, parts of current CPQ model that are impacted by transition to Quote 2.0 must be identified and thoroughly analyzed.

SAP prepared a comparative overview of Quote 1.0 vs Quote 2.0 - Feature Differences that can be used to easily identify such features. Additionally, Feature Specific Migration Instructions document provides more detailed overview including migration instructions for all relevant features, along with migration effort estimate.

After completing this step customers should have clear overview of migration scope, effort that needs to be invested along with migration timeline.

Note

These estimates are neither obligatory nor binding.

Identify non-productive CPQ tenant for implementation of Quote 2.0

SAP's recommendation is to have dedicated CPQ tenant that will be used for Quote 2.0 implementation. This tenant should not be part of regular CI/CD pipeline to ensure that Quote 2.0 implementation is not jeopardized by regular changes made on existing model being used in Quote 1.0 and vice versa.

Following are most prominent examples related to organization of CPQ tenants CI/CD landscape and dedicated tenant for Quote 2.0 implementation:

2 tier landscape, sandbox and production - In this scenario SAP recommendation is to purchase additional CPQ tenant for Quote 2.0 implementation

3 tier landscape - DEV, QA and PRD - here we can differentiate 2 scenarios:

If all 3 CPQ tenants are used for CI/CD processes, SAP recommendation is to purchase additional CPQ tenant for Quote 2.0 implementation

In case only QA and PRD tenants are used for CI/CD processes and using DEV tenant will not jeopardize it, SAP recommendation is to use DEV tenant for Quote 2.0 implementation

Yes
No