# Debugging with Developer Console | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f0ac199a8edd444fa334c7db48493f97.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
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


	
Log
	
Developer Console


	
Developer Console Actions
	
Developer Console Trace
	
Developer Console Groups
	
Developer Console How-To
	
Debugging with Developer Console
	
Audit Trail
	
SAP CPQ Tags
Debugging with Developer Console

This section describes some typical scenarios when you can use the Developer Console to debug your SAP CPQ.

Retracing and Debugging Iron Python Scripts
This feature is explained through a simple example script:


a = 0;
Trace.Write("a is initialized.")
a = 100;
Trace.Write("a is changed.")
This script initializes the variable a, traces the variable, and later updates the value of the variable to 100 and traces it once again. When the script gets executed (for example, after the quote has been changed), the Developer Console logs two trace messages and displays them.
Scripts have an interface for writing the trace and the log using Trace.Write and log.Write. Log data is visible in the Log and this interface can be used to log information that is useful for monitoring while the trace interface should be used for debugging data. It’s important not to overuse the log feature because your log form will end up full of data that may not be useful. Also, if you log too much, you’ll slow down your scripts because logs are much slower to process than the trace. Ultimately, unlike the trace, the log is persistent, which makes it useful for monitoring and analysis, but it’s preferable to use the trace interface instead of the log whenever that is possible.
Note

When you set your script to be a post action for Generate Documents, make sure to use Log.Write to log your data and any messages. Avoid using Trace.Write since it doesn’t get recorded in the Developer Console. This only applies to the Generate Documents action.

Tracking Attribute Changes During Rule Execution Loops

Tracking attribute changes during rule execution loops can help you understand why the system is maybe slower than usual. For example, if your product rules overlap, SAP CPQ takes longer to execute the rules. For example, the product Network cable has two rules attached to it: if Category 6 is selected, the cable length is set to 100 meters and if the length of the cable is over 100 meters, then the Category 6 must be selected. If users first set the cable length to 110 meters, then both rules are executed. The first rule sets the cable category to Category 6 and the second rule sets the cable length as a result of the Category 6 setting (100 meters). In scenarios like this, rules are always going to be performed in two loops, because the two rules correlate. The Developer Console records execution of rules, and displays a message that describes why the system is running slower.

On this page
Retracing and Debugging Iron Python Scripts
Tracking Attribute Changes During Rule Execution Loops
Yes
No