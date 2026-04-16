# Develop | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/f16a632cf47f46b58c06643b0c90fff5.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create a Script
	
Global Script Events
	
Custom Actions
	
Custom Calculations
	
Script Workbench
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Develop

Administrators can manage scripts in Setup under Develop  Global Scripts.

A global script in SAP CPQ is a custom piece of code written in IronPython and attached to a certain event. When such an event occurs in SAP CPQ, the global script attached to it is executed in the system.

For each global script, you have access to script definition, overview of events and the script history.

Note

Starting with the 2602 release, the IronPython eval() statement will be deprecated to enhance security and application stability. Existing scripts that use the eval() statement will continue to function without changes. However, you won't be able to modify them unless you remove the eval() method. For more information, see As of 2602: Deprecation of IronPython Eval() Statement.



Create a Script

A script contains a series of commands that can be executed without being compiled. SAP CPQ provides a user-friendly interface for administrators to create and manage scripts.
Global Script Events

Global script events are events that happen on quotes. The events trigger the scripts attached to them to be executed in the system.
Custom Actions

SAP CPQ offers flexible way to meet custom demands for various functionalities that are not part of the standard software version. This is achieved by implementing custom actions – parts of code that contain processing logic for appropriate functionalities.
Custom Calculations

Administration for custom quote calculations can be found under SAP CPQ Setup  Develop  Custom Quote Calculations.
Script Workbench

Script Workbench is available for administrators to help them debug and develop their scripts. It can be accessed through Scripts developing and editing page within SAP CPQ Setup, or from user view under the top menu.
Yes
No