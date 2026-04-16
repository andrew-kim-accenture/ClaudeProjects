# Introduction | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/9682795bd5bd49ae9dd903f97d887648.html?locale=en-US&state=PRODUCTION&version=2603
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
Introduction

This is the Help documentation for SAP CPQ scripting. Here you can find all relevant information about the SAP CPQ Scripting data model, as well as available interfaces and code examples.

Note

The maximum allowed number of operators in a single line of IronPython code is limited to 50. This refers both to numeric and string operators.

The system checks if the number of nested script calls (when scripts reference each other) executed in one request is more than 10. If the number of nested calls is more than 10, on domains created before the 2202 release, a warning is recorded in the Log after the script is executed. On any domains created after the 2202 release, if the number of nested calls in a request is more than 10, an error message appears when attempting to execute that script, informing the administrator that there is an issue with the script.

Yes
No