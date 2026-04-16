# Developer Console Actions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/06c376e258344f7da40e4bb3b250d05d.html?locale=en-US&state=PRODUCTION&version=2603
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
Developer Console Actions

The Developer Console refreshes as you perform actions in SAP CPQ, and new data is added to the list of actions and traces.

The tool lists only actions that you performed during the current session. A good practice is to clear the Developer Console by clicking Clear, and then perform actions in the application. This way you’ll have a clearer overview of the data related only to a particular action.

The list of tracked actions is displayed in the header of the Developer Console. To collapse/expand the section, click Hide actions and Show actions, respectively. All listed actions have time stamps, duration in seconds and available actions (View and Download). If an error occurs, the action's information is displayed within the table with red background that indicates that the action is somehow erroneous. To see details of an action, click on the action's row, and all the details will be displayed within Trace. In addition, after you click on an action, the option Performance Details becomes available below the list of traced actions, and by clicking that button you can learn more about the performance of a particular action.

Performance Details

The Performance details dialog box provides a more detailed overview of the performance of a particular action. To view performance details of an action, click Performance Details under the list of traced actions after selecting an action.

Example

For example, if you click on the GetInitData action, the Performance Details table displays details for logs labeled Performance - Quote Parser.

Tags used for the quote in question are logged for Quote Parser. For logs labeled Quote Parser, the Performance Details table displays the following information:

Name - The name of the log.

Total Time (ms) - The total duration (in miliseconds) of logs labeled Quote Parser. The percentage shown in brackets represents the total duration of logs labeled Quote Parser compared to the total duration of the action in question.

Count - The number of logs labeled Quote Parser whose duration is greater than 0.

Average Time (ms) - The average duration (in seconds) of logs labeled Quote Parser.

Slowest Time (ms) - The slowest duration (in seconds) of logs labeled Quote Parser.

On this page
Performance Details
Example
Yes
No