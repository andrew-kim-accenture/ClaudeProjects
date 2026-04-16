# Quote Migration Tool | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/06cfd1ede6bc4db08dac9d2704fee658.html?locale=en-US&state=PRODUCTION&version=2603
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
Quote Migration Tool

The Quote Migration Tool is the feature that is used for migration of Quote transactional data from Quote 1.0 to Quote 2.0. There are two migration processes that are executed with Quote Migration Tool:

1. Migrating Customers from Quote 1.0 to Business Partners in Quote 2.0.

2. Migrating quotes from Quote 1.0 to the Quote 2.0 environment.
Note

Prerequisite for using migration tool is that all database IDs of Quote related entities (products, attributes, users, configurations etc.) are the same between Quote 1.0 and Quote 2.0. The only way to ensure this is to start the process with copying of existing Quote 1.0 tenant to dedicated tenant for implementation of Quote 2.0.

Note

To migrate only Quote transactional data from Customer Info to Involved Parties without migrating master data from Customers to Business Partners, turn on the Migrate Customers to Involved Parties toggle

The tool can be accessed via Setup > Developer Tools > Quote Migration and consists of three main tabs:

Mapping

Migrate

Jobs

Mapping

This tab includes three sections for mapping data between Quote 1.0 and Quote 2.0:

Mapping Customer Roles to Partner Functions

In Quote 1.0, there are three customer roles: Ship To, Bill To, and End User.

These roles need to be mapped to corresponding functions on Business Partners in Quote 2.0.

Note

One customer role can only be mapped to one business partner function.

Mapping Customer Fields to Business Partner Fields

Here, users can map Standard and Custom fields from Customers in Quote 1.0 to Business Partner fields in Quote 2.0.

Fields are separated into two tabs: Standard Fields and Custom Fields.

Note

Two or more customer fields cannot be mapped to the same business partner field.

Mapping Quote Fields

This section allows users to map standard fields in Quote 1.0 to custom fields in Quote 2.0.

This is useful when certain standard fields in Quote 1.0 do not have a corresponding standard field in Quote 2.0.

Note

Standard fields from Quote 1.0 are copied to the same standard fields on Quote 2.0 by default. It is not possible to change this in mapping.

Migrate
In this tab, users can define which quotes will be migrated by setting filter criteria. Available filters include:

Status (multi-select)

Date Created (with operators)

Date Modified (with operators)

Effective Date (with operators)

Market (multi-select)

Quote Number (free text input)

All filters can be combined, and the logical operator between them is AND.

Additional Checkbox Options:

User can determine which Quote objects should be included in migration by selecting appropriate option from list below.
Manage Generated Documents:

Yes – Generated documents will be migrated.

No – Generated documents will not be migrated.

Migrate Quote Attachments:

Yes – Attachments will be migrated.

No – Attachments will not be migrated.

Migrate All Revisions:

Yes – All revisions will be migrated.

No – Only the Master revision will be migrated.

Migrate Quote Tables:

Yes – Quote tables will be migrated.

No – Quote tables will not be migrated.

Migrate from Production (available only on Production tenants for Delta quote migration):

Yes – Migrating existing quotes will overwrite them.

No – Existing quotes will be skipped.

Migrate Quotes Without Items

Yes – Quotes will be migrated with all items.

No – Quotes will be migrated without items (only the header).

After setting up these options, click the Migrate button in the top-right corner to begin the migration.
Jobs

Once the Migrate button is pressed, a new migration job is created, and the user is redirected to the Jobs tab. Each time the Migrate button is clicked, a new migration job is added to the queue.

Migration jobs are executed in the order of creation unless manually stopped by the user. The Jobs tab displays the following information:
Job Details

Export Excel: A report can be downloaded, listing all quotes selected for migration (both successfully and unsuccessfully migrated). Error messages for failed migrations are included.

Requested By: The user who initiated the job.

Created By: The user who created the job.

Email Me When Done: Option to notify the user via email when the migration is complete.

Progress: Displays the number of successfully migrated quotes against the total number set for migration.

Status: The current status of the migration.

Job Actions (accessible via the three dots menu for each job):

Rollback: Deletes all quotes migrated in the selected job from Quote 2.0.

View Filters: Displays the filters used for each job.

Delete Job: Deletes a job that has not yet been executed (e.g., a job on hold).

Restart Migration: Restarts the migration for jobs with previously failed quotes.

Migration Statuses

Successfully Migrated: All quotes have been successfully migrated.

Partially Migrated: Some quotes were successfully migrated, or the migration was stopped.

Ongoing Migration: The migration is currently in progress.

Roll-back Migration: The migration has been rolled back.

On Hold: If the user has clicked the Migrate button multiple times, creating several jobs, only one job will run at a time. Once the ongoing job is completed, the next one will start.

Canceled: The migration was stopped before completion, and all quotes already migrated to Quote 2.0 have been deleted.

Migration Completion

Once confirmed that everything functions as expected, Migration should be marked as completed in migration tool.

Note

This activity deletes old 1.0 Quotes. You cannot restore these quotes after the deletion is complete.

On this page
Mapping
Migrate
Jobs
Migration Completion
Yes
No