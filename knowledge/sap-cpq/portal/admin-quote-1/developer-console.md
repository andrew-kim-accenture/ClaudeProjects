# Developer Console | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f20969bceb264fe892f29280e171955e.html?locale=en-US&state=PRODUCTION&version=2603
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
Developer Console

The Developer Console is a practical tool that allows tracing of scripts and business rules executed in the production system. It allows you to analyze your actions in SAP CPQ easily, profile application problems and locate potential bottlenecks.

The Developer Console is accessible from the side menu, under the Setup menu item. The tool opens in a new tab so you can work in SAP CPQ and track actions and traces in parallel. The console captures up to 100,000 traces per request (a request is a click in the application). When you first access it, the Developer Console is empty until you start working in the application.

Note

The execution time shown in the CPQ Developer Console reflects only the server-side (CPQ) processing time and does not represent the total UI response time. You can observe the total end-to-end request duration in the browser’s Network tab. Enabling the Developer Console may also add additional overhead to request execution.

Example
If you need to track and analyze all actions that have been performed on a quote in SAP CPQ, click Developer Console and the tool opens in a separate tab. Select the Full Mode checkbox. In the first tab, open the quote whose actions you wish to analyze. If you go back to the Developer Console, you can see that all the actions you performed on the quote from the moment you first opened the console are listed. Also, all future actions that you’ll perform on the quote will also be recorded in the console.
Depending on the data you wish to track in the Developer Console, you can select/unselect these checkboxes:

Trace - enable/disable tracing of all actions in SAP CPQ. You can download the traced actions as XLSX files and then upload them to the Developer Console on a different environment for the purpose of troubleshooting.

Full Mode - select to view traces related to all actions performed in SAP CPQ. Otherwise, if you don’t select the option, only traces that are related to products, rules and scripting are displayed. If you wish to switch between the default and the full mode, you need to check/uncheck the Full Mode checkbox and repeat the user action.

Trace Script API Calls - select to view traces related to scripting API calls.

Disable UI Customizations - select to disable any customization made to the template and branding and to revert SAP CPQ to the default template and branding. The customization is disabled only during the current session. This feature helps administrators during troubleshooting to establish if a UI issue is caused by a broken customization.

All data tracked in the Developer Console is organized into Developer Console Actions, Developer Console Trace, and Developer Console Groups.

Disable Iron Python Script Execution - select to completely disable the execution of Iron Python scripts. When the checkbox is selected, neither global nor local scripts are executed as long as the Developer Console is open. With this feature, it is easier to identify performance issues that are caused by Iron Python scripts.

Note

There’s a set of keyboard shortcuts you can use to easily navigate between actions and trace lines. Press Shift + ? to open the list of shortcuts.



Developer Console Actions

The Developer Console refreshes as you perform actions in SAP CPQ, and new data is added to the list of actions and traces.
Developer Console Trace

This section displays a detailed trace for every action recorded in the Developer Console. The data is displayed chronologically, in the order that the actions had taken place.
Developer Console Groups

The Groups section lists the main traces (high-level traces - Trace H) so you can expand them and have a hierarchical overview of the underlying traces.
Developer Console How-To

Here are listed some frequent how-to scenarios about the Developer Console with detailed explanations.
Debugging with Developer Console

This section describes some typical scenarios when you can use the Developer Console to debug your SAP CPQ.
Yes
No