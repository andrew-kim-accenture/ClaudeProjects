# Switching to production with Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/e7826d22eaba45a6bba48a328996dcaf.html?locale=en-US&state=PRODUCTION&version=2603
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
Switching to production with Quote 2.0

Once UAT is done on non-productive CPQ tenant, and it is confirmed that everything works as expected, final and the most critical stage of the migration project, switching to production with Quote 2.0, can start. Following chapter describes recommended procedure for this phase, that will help safeguarding business processes during this highly critical step.
Note

All steps are mandatory, ones that are mandatory will be marked. Additionally, we should mention that proposed sequence of steps is also not obligatory, it is our recommendation, and can vary based on specific migration project.

Dedicate one CPQ tenant for final preparation and validation prior to switching to production

SAP recommendation is that at this phase additional non-productive tenant, which can be one of already existing tenants, should be included. Depending on specific CI/CD process and the time needed for validation (will be explained in next steps), client can either use their development or testing instance for this purpose.

Note

This tenant shouldn't be the same as one on which implementation was done, because all development done during model rebuild can be overwritten by tenant copy. The tenant should become productive and should Quote 1.0 tenant during the cut off.

Copy production Quote 1.0 tenant (Mandatory)

Considering the prerequisite for migration tool to work that all technical IDs of entities related to Quote must be the same between source and target tenant, switching to production should start by copying productive Quote 1.0 tenant to tenant dedicated in previous step.

This step is needed as new entities (quotes, product, attributes etc.) were created in Quote 1.0 during the period of Quote 2.0 model rebuild and testing, which were not part of initial tenant copy as they were created afterwards on production Quote 1.0 tenant.

For further details, please refer to Quote Migration Tool and Support Procedure for Migration to Quote 2.0

Note

After this tenant copy is done, there should be no further modeling on productive Quote 1.0 tenant.

Activate Quote 2.0 (Mandatory)

Once tenant copy is completed, Quote 2.0 should be activated on non-productive tenant, dedicated in first step of this phase

For details about the support case process, please refer to Support Procedure for Migration to Quote 2.0

Deploy modeling

After activating Quote 2.0, the next step is to deploy the modeling from the tenant used for implementation during the model rebuild. This can be done using the standard CPQ Deploy/Send functionality or the available APIs, as detailed in the API documentation.

Migrate Quotes

Once modeling deployment is completed, next step is to migrate transactional (quotes) data via migration tool

link to migration tool details

For details about the support case process, please refer to Support Procedure for Migration to Quote 2.0

Step 1 - Initial step is to prepare mapping of properties between Quote 1.0 and Quote 2.0

All limitations we have here when it comes to CF and QICF mappings

Step 2 - Select Quotes to be migrated

Link to migration tool documentation describing how Quotes can be filtered

Step 3 - Trigger migration

Note describing that Quotes can be migrated in chunks

Step 4 - Validate migration output - last step should be verification that the outcome of migration of transactional data is as expected.

Link to migration tool documentation describing all options for revert and completing migration

Note

The migration shouldn't be set as completed (this part should be described in migration tool documentation) until switch to production is completed, including hyper care period after cut-off date

Validation

After completing migration of transactional data, thorough testing should be performed in order to validate changes and confirm that everything works as expected. Having in mind criticality of this phase and it's impact on business processes, it is highly recommended to test all possible scenarios.

Note

It is highly recommended that all integration tests are included

Validation should also include working with selected existing Quotes, which were migrated from Quote 1.0, and testing all Quoting scenarios.

Note

The changes made during validation can be overwritten during next step (migration of delta Quotes), so the outcome is to have appropriate production state of Quotes after migration

Cut-off transition to Quote 2.0

This paragraph describes the recommended process for the final step and cut-off transition to Quote 2.0. This process implies replacement of productive Quote 1.0 tenant with non-productive Quote 2.0 tenant used in previous step.

Note

The tenant URL and domain name will remain the same as they were with Quote 1.0 . The stating that recommendation is that this step should be done outside of working hours (weekend)

Step 1 - Preparation for cut off (mandatory)

Once validation is completed and once it is confirmed that everything works as expected, ticket should be raised to SAP support to start with cut off transition.

Note

It is recommended that this step can is done prior to cut off in order to reduce the cut off-time.

For details about the support case process, please refer to Support Procedure for Migration to Quote 2.0

Step 2 - Migration of delta Quotes and delta changes

Once SAP confirmed that cut-off is triggered, next step is to migrate delta Quotes, which were created after tenant copy was done (in step 2 in this phase).

This step should also include migration of changes made during this period on Quote 1.0 production on already migrated Quotes (step 5 in this phase).

Additionally, if needed this step should include overwriting changes made during validation, which should be deleted.

For step-by-step guidance, check the Migration Tool instructions.

Note

Describing that in case of high volume of delta Quotes and changes, and considering that time for execution of this step can be impacted by this, there is option to migrate Quotes in chunks.

Step 3 - Hyper care and migration completion

After cut-off step, recommendation is to have a period of hyper care to ensure that everything works as expected and that business processes are not jeopardized with switching to Quote 2.0.

Once confirmed that everything works as expected, migration should be marked as completed.

Link to documentation tool describing migration completion

For details about the support case process, please refer to Support Procedure for Migration to Quote 2.0

Step 4 - Rollback

In case that it is discovered that something is not working as expected and that changes should be reverted, there is option to rollback to Quote 1.0 tenant.

For details about the support case process, please refer to Support Procedure for Migration to Quote 2.0

Yes
No