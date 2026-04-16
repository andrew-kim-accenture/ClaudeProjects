# Recurring Background Jobs Executed on Tenants | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/1c07f29c2f164e9da02de99706ce1140.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings


	Setup Help
	
Time Zones
	
Custom Tabs
	
Recurring Background Jobs Executed on Tenants
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Recurring Background Jobs Executed on Tenants

This topic describes the recurring background jobs that are automatically scheduled and executed on every tenant in the CPQ application. These jobs support data protection compliance, system maintenance, and performance monitoring.

Overview of Background Jobs

The following table lists the client-relevant recurring background jobs, including their purpose, execution frequency, and scope.

Job Name

	

Execution Time

	

Frequency

	

Description




Event Log Statistic

	

00:00 UTC

	

Daily

	

Generates daily statistics about errors and warnings from the previous day.




Scripting Execution

	

00:01 Local Time

	

Daily

	

Analyzes script performance by tracking execution time throughout the day.




Event Log Cleanup

	

01:01 Local Time

	

Daily

	

Deletes Event Log records older than two weeks.




Data Protection – Business Partners

	

00:00 Local Time

	

Daily

	

Marks and deletes Business Partners based on data deletion rules.




Data Protection – Customers

	

00:00 Local Time

	

Daily

	

Marks and deletes Customers based on data deletion rules.




Data Protection – Quotes

	

00:00 Local Time

	

Daily

	

Marks and deletes Quotes based on configured data deletion rules.




Quote Expiration

	

00:00 Local Time

	

Daily

	

Updates the quote status to expired if the quote has expired and workflow is set.




Data Protection – Users

	

00:00 Local Time

	

Daily

	

Performs scheduled operations on user data to meet data protection requirements.




Data Protection – Logs

	

00:00 Local Time

	

Daily

	

Deletes old log records related to user actions, data access and other sensitive operations based on retention rules specified in the application's settings. It is performed to ensure compliance with data protection policies.




Daily Resource Consumption

	

01:00 Local Time

	

Daily

	

Tracks resource usage such as CPU and memory for each tenant.




Monthly Resource Consumption

	

00:05 Local Time, 1st day

	

Monthly

	

Aggregates monthly resource usage data for each tenant.




Data Protection – Audit Trail

	

00:00 Local Time

	

Daily

	

Deletes audit trail records as configured in Setup   Security   Data Deletion .




Knowledge Base Sync

	

Every hour

	

Hourly

	

Performs Kb synchronization on tenants where integration with SAP Variant Configuration and Pricing is enabled.

This job checks setup of each tenant and starts one non-recurring Kb sync job per tenant that should be synchronized, if defined synchronization time has expired.




VC Diagnostics Cleanup

	

00:01 Local Time

	

Daily

	

Deletes Variant Configuration diagnostic records older than two weeks. Applies to default tenant.




Usage-Based Pricing Table Sync

	

As per SAP Billing and Revenue Innovation Management settings

	

Daily (if enabled)

	

Synchronizes pricing tables on tenants with usage pricing enabled and valid SAP Billing and Revenue Innovation Management configuration.




Approval Reminder

	

User-defined

	

User-defined

	

Sends reminder notifications to Approvers for Quotes awaiting action.

Yes
No