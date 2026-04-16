# Alerting Users About Parallel Work on Quotes (Administrator Side) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/4be6579a0c944d7f835ad171e1aacaa5.html?locale=en-US&state=PRODUCTION&version=2603
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
Alerting Users About Parallel Work on Quotes (Administrator Side)

Quote 1.0 does not support parallel work on quotes. This means that only one user at a time can edit a quote.

Although the system won’t disable editing if there are multiple users, users should avoid making any changes as that will cause errors and wrong values.

If there are multiple users working on the same quote, you can set up an alert to display on the quote and inform users of the parallel work. The alert is administered via two application parameters:

Alert users about simultaneous work on the same quote – defines whether users are informed that there are other users that have recently opened the same quote. Also, administrators can use this parameter to define whether the alert displays as a message in the top of the quote or as a pop-up after opening the quote. By default, there will be an alert displaying in the top of the quote.

Time out limit for inactive users in simultaneous work – when a user opens a quote in parallel with another user, after the time period defined in this parameter passes, the system no longer considers that the user is working on the quote and the user’s name won’t be displayed in the parallel work alert on the quote. This parameter is applicable only when there are multiple users working on the same quote in parallel.

Yes
No