# Developer Console Trace | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/c4481e6df4e1478197e92236d419c52e.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Developer Console Actions
	
Developer Console Trace
	
Developer Console Groups
	
Developer Console How-To
	
Debugging with Developer Console
	
Audit Trail
	
SAP CPQ Tags
Developer Console Trace

This section displays a detailed trace for every action recorded in the Developer Console. The data is displayed chronologically, in the order that the actions had taken place.

The Developer Console traces all actions executed across the system either manually or via the API (stateless and stateful APIs). Only the actions executed in an external services (such as the custom tables microservice or the Notifier feature) are not traced.

You can filter the trace by:

Message - detailed description of the trace. If you select Negative Filter and enter a search term, the system displays only the lines that don’t contain that term in the description. This field also allows filtering support for special search characters: question marks and asterisks. The question mark replaces one character and the asterisk replaces any character and any number of characters. The Message is limited to 10000 characters.

Logger - the class from which the method was initiated.

Level - Trace H are high-level traces and Trace L are low-level traces.

Labels - a label describing the trace (such as Scripting, QuoteParser, or DatabaseQuery).

duration (ms) - the time needed for the method to execute.

from parent (ms) - the time needed for the parent method to trigger the current method.

If you want to focus on one trace line, enter a search term in a column to find the trace and select the line. If you remove the search term, the line remains selected and all other trace lines are displayed again. If you want to rearrange actions to view the slowest actions first, click Slowest first in the duration (ms) column. This rearranges the trace lines so that the slowest actions are displayed on top. You can click the action you’re interested in and unselect the Slowest first checkbox, and the selected trace line remains selected, allowing you to see the context in which the action was executed. Logs that show up when scripts attached to events are triggered are labeled ScriptEvent. All other scripts have the Script label.
Note

Formula errors are logged in the Trace section with the log level Error and the label Formula Error.

To view more trace details, click .
Note

The flag ITrace.IsOn, which is available in scripting, indicates whether tracing is turned on or off. With the help of this flag, users can organize the logic that is related to tracing and, that way, optimize script execution time.

Breadcrumbs and Pin
When you’re analyzing your trace lines, you can use the breadcrumbs to check how you arrived to the line and view actions that occurred. In the trace list, click . Other traces are removed from the list, so that only the pinned trace and its children traces are displayed, and the breadcrumbs display above the list. By pinning, you can isolate a group of traces within one action and focus on analyzing them. Using this feature affects groups on the left-hand side. Clicking the same icon removes the breadcrumbs and all data is displayed in Trace. If you select a particular group, only the content of that group is displayed. Doing so is useful when you have extensive data.
Yes
No