# Quote 2.0 Implementation Process | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/a37e73beaaa04c7b8f074aac9c59e841.html?locale=en-US&state=PRODUCTION&version=2603
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
Quote 2.0 Implementation Process

After completing necessary preparation steps described above, migration project can start. In this chapter we will describe recommended steps that should be taken during implementation of Quote 2.0.
Note

The existing production processes on Quote 1.0 can remain untouched, and the entities related to Quote, such as products, attributes, users can be created or modified.

Copy Production Quote 1.0 tenant (Mandatory)

Migration process should start with copying Quote 1.0 production tenant to tenant dedicated for Quote 2.0 implementation.

Note

Prerequisite for Quote migration tool to work is that all technical IDs of entities related to quote are the same between source and target tenant. The only way to ensure this is via tenant copy.

For details about the support case process, please refer to Support Procedure for Migration to Quote 2.0

Activate Quote 2.0 (Mandatory)

Once tenant copy is completed, Quote 2.0 should be activated on tenant dedicated for Quote 2.0 implementation.

For details about the support case process, please refer to Support Procedure for Migration to Quote 2.0

Rebuild the model in Quote 2.0

Domain model on Quote 2.0 implementation tenant needs to be reimplemented with Quote 2.0 specifics. This phase of migration will take the most of project time and resources investments.

Note

Following is the list of relevant documents that can be used for rebuilding the model:

Quote 1.0 vs Quote 2.0 - Feature Differences

SAP CPQ Setup and Administration Guide for Quote 2.0

Scripting Help list methods and variables for Quote 2.0

Keep detailed track of changes made on your model in order to simplify replication to higher environments (ex production) in next steps

Migration tool testing

After completion of model rebuild, testing of migration tool for transactional data (i.e. quotes) should be performed.

You can find detailed information about the migration tool in the documentation.

For details about the support case process, please refer to Support Procedure for Migration to Quote 2.0

Prepare mapping of properties between Quote 1.0 and Quote 2.0

All limitations of CF and QICF mappings

Select Quotes to be migrated

Steps for filtering quotes for migration are outlined in the migration tool documentation.

Trigger migration

Verify that the outcome of migration of transactional (quotes) data is as expected.

The guide provides details on options for reverting or completing the migration process.

UAT

In order to verify the outcome of model rebuild, as well as the outcome of migration tool testing, and confirm that everything works as expected, it is recommended to organize UAT at non-productive CPQ tenant on which implementation was done.

Note

In order to optimize your UAT activities and simplify the switch to production, SAP recommends that your UAT landscape be a clone of the production landscape. This applies not only to the CPQ system but also to other connected systems.

Note

If you are using CPS integration, please note that the tenant copy functionality is currently not supported on the CPS side. You can explore other features available with CPS integration.

Yes
No