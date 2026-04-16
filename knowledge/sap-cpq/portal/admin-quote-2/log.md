# Log | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/fe1134d009384f0994dbc2aca9183411.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools


	
Log
	
Developer Console
	
Audit Trail
	
SAP CPQ Tags
Log

The Log allows SAP CPQ administrators to monitor Iron Python scripts and track all the data manually logged from them.

To access the Log, either go to Setup  Developer Tools  Log, or access it from Setup  Log in the user side

Note

Access to the Log can be delegated via the Access Rights feature, so access rights administrators need to distribute access to all other administrators who should have it.

In the log, you can:

See all the errors that occur in the scripts, making it easier to fix them.

See, if some formula that is part of approval rule fails during parse by the rule engine.

Search log by date or by date range. Admin can choose search option by choosing filter icon in the Date column of a log table.

Copy information from the description column of the log.

Resize columns of the log table.

You can't view log entry details unless the entry Label is either Script or RuleEngine.

Note

The EventLog description in scripts can contain no more than 10000 characters.

Example
Consider the following Iron Python (IP) script:


Log.Write(User.FirstName + " created a quote");

a = 5/0;
This script will run each time a new quote is created. It uses a log interface to log which user has created the quote. It simulates the division by zero operation that triggers an exception. The script will break each time it’s executed and the error will be logged. The administrator is able to see this log on the Log page along with all the contextual data related to the creation of the quote, such as Date, Session ID, and so on.
Note

You can track the status of email notifications in the log after enabling email notification logging in General  Application Parameters  Shopping Cart and Quotes  Use Additional Logging For Email Notification. You can find more information on email notification logging on the Notifications page.

Yes
No