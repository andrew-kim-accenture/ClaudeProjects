# Script Performance | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/004f22c7eb7148769f0dfb959f57d7d0.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Scripting Events, Properties and Event PipelineVersion: 2603English
Provide feedback on our search

	
Introduction
	
SAP CPQ script plugin
	
Alternatives to CLR Module Import
	
Common properties
	
Iron Python Events
	
How-to Examples
	
Event Pipeline in Quote 1.0
	
Event Pipeline in Quote 2.0
	
Script Performance
Script Performance

In the setup, you can review the performance of scripts in details using the script performance page.

You find the script performance page under Setup  Developer Tools  Script Performance. The page displays the results relevant for the last 30 days.

Note

In Quote 1.0, you shouldn't use properties read from the PreparedCart event in a loop, such as those ending with 'InMarket'. This can cause performance issues. Instead, calculate these properties using the market factor and currency rate.

Performance Information

Scripts are displayed with the following information:

Script name

Longest execution time in seconds

Average execution time in seconds

Number of executions for each script

To review the performance of a script during the previous 30 days, choose View Chart next to a script. That way, you can determine whether the average execution time is truly representative of the overall performance of that script, or whether there were individual performance spikes and changes in the last 30 days.

Execution Time Limit

For existing tenants, the time limit for script execution is 900 seconds (15 minutes). For new tenants, the time limit will be 300 seconds (5 minutes).

Scripts highlighted in red and yellow indicate that they are approaching the time limit. You need to optimize scripts both in red and yellow so that their execution time is reduced. Otherwise, scripts that exceed the execution time limit will be canceled in the following release of SAP CPQ. Script cancellation means that the script execution is aborted in the current run. If a script is canceled, you can execute it again.

Related Information
SAP CPQ Scripting Events, Properties and Event Pipeline
On this page
Performance Information
Execution Time Limit
Related Information
Yes
No