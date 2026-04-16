# Create a Script | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/8c1fb9d8195f497e9371890a7f4e6ae2.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Scripting General Guidelines
	
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
Create a Script

A script contains a series of commands that can be executed without being compiled. SAP CPQ provides a user-friendly interface for administrators to create and manage scripts.

In Setup, access Develop  Global Scripts.

Click Add New.

A page with three tabs displays:

Script - for creating and editing scripts

Events - for tying a script to an event

History - for displaying all the versions of the script and the time and date of its creation/editing

Define Rule Name.

System ID is generated automatically.

(Optional) Describe the script in Description.

Select Active if you wish the script to be active in the system. You can also view and manage the activation status of scripts on the Global Script page.

Select Module to use the code in other scripts.

Scripts that have this option selected cannot be used independently, but only as a part of other scripts.

(Optional) Check CSRF Protection to add another layer of protection from CSRF attacks for global scripts that are executed via the Custom API. If the checkbox is enabled, SAP CPQ checks whether a valid CSRF token is provided in the API request for additional protection from unwanted attacks.

Define the start and end date of the script.

These fields are disabled if Module is selected.

The Modified by and Modified on are disabled and the system automatically populates them once the script is saved.

In the Scripting Code section, choose the script engine type.

SAP CPQ currently supports IronPython for creating scripts.

(Optional) Select Force Proxy Generation to load and refresh the WSDL web services as the system does not do it by default.

The checkbox needs to be selected only once when the script is saved for the first time.

Write your script in the Script box.

Use the instructions in the dedicated Scripting documentation. Also, take a look at the scripting general guidelines.

Click Attach to Event.

The script is now saved and you are directed to the Events tab.

Yes
No