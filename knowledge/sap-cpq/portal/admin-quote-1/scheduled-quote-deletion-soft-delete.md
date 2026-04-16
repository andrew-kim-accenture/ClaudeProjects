# Scheduled Quote Deletion (Soft Delete) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/cdd3988f1be54dfb88174c1354da69d7.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Scheduled Quote Deletion (Soft Delete)

Deleting quotes from the list of quotes only removes them from the user interface (doesn't delete them from the system) and marks them for a scheduled automatic deletion (soft delete).

The automatic deletion job is scheduled at 00:00 UTC each day, so quotes marked for deletion since the last scheduled job will be removed from the system during the first following scheduled deletion. The deletion is scheduled automatically, always at the same time, and it doesn't require any setup nor any action by the administrator.

Between the time when you removed the quote from the list of quotes and the time when it is deleted from the system (the automatic deletion is triggered), you can't delete the objects referenced in that quote because the system considers that they are referenced in a quote that still exists in the system. After the quote is deleted from the system, you'll be able to delete the related objects.

Errors that occur during the scheduled quote deletion are recorded in the Log.

Related Information
Automatic Data Deletion
Quotes Administration
Yes
No