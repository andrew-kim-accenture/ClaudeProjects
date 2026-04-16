# Which Dictionaries will SAP CPQ Retrieve for my Users? | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e1df03666bfe4f26a30fcd23b7c23bc8.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Application Parameters
	
Deploy / Send Changes
	
Report Module
	
Countries/Regions, States and Territories
	
Dictionaries


	
Comparing Dictionaries
	
Exporting/Importing Dictionaries
	
Creating Custom Dictionary
	
Defining Key Values
	
Which Dictionaries will SAP CPQ Retrieve for my Users?
	
Translations
	
Manage Generated Documents
	
File Management
	
Email Settings
	
Time Zones
	
Custom Tabs
	
Recurring Background Jobs Executed on Tenants
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Which Dictionaries will SAP CPQ Retrieve for my Users?

When users log into SAP CPQ, the system first checks which dictionary is set as default in Setup  Users  a user  Additional Settings tab. The values from that dictionary will be used for naming buttons, tooltips, etc. Users can always override the administrator's selection in User Page  User details  Default Dictionary by selecting a different dictionary. In that case, the system disregards the selection you made in Setup and reaches for the default dictionary. When multiple dictionaries have a defaulting condition evaluating to TRUE, the system will use rank to sort them out (the dictionary with the lowest rank is retrieved first). Additionally, if the default rule is not defined for a dictionary, SAP CPQ considers that the defaulting condition is fulfilled.

You can always limit which dictionaries display to users by applying the right visibility conditions.

Prior to user login, the default dictionary is set to the system dictionary with the lowest rank. In the event that two dictionaries have the same rank, the order of their names determines precedence.
Note

When adjusting the visibility rules on dictionaries, and you have multiple dictionaries (system and custom) with a visibility rule set to 1, the dictionary with the highest rank becomes the default language on the tenant. Therefore, when making any changes to the visibility rules, you need to check the ranking to ensure which dictionary is the default one. For example, if you have two dictionaries with the same visibility rules set to 1, only the one with rank 1 will be the default.

Related Information
Comparing Dictionaries
Yes
No