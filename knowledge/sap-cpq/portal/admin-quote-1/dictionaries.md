# Dictionaries | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/14b9aa9e9e0746ad8c0c13c46c9cd4a9.html?locale=en-US&state=PRODUCTION&version=2603
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
Dictionaries

A dictionary in SAP CPQ contains a set of keys and their values that are applicable on tenant level. Keys are only used in the code to reference key values that are visible in the application and refer mainly to UI content (button labels, tooltips, etc.).

The system distinguishes two types of dictionaries:

System - there is a system dictionary in SAP CPQ for each supported language. System dictionaries cannot be changed and no keys can be added. You can only compare and export system dictionaries. Names of system dictionaries appear in both English and the language of the dictionary (for example: Español / Spanish). These dictionaries are uploaded by default on all new tenants. If your business model does not require creating custom key/value pairs, you do not need to manage dictionaries at all. The system dictionaries are managed and updated by the SAP CPQ team and administrators have no authorization to change them.

Custom - dictionaries that administrators create. Custom dictionaries are best to be used for overriding key values in default dictionaries. Administrators are advised not to change the existing keys or add new ones as this will require additional configuration in SAP CPQ so that the system could recognize them. Custom dictionaries are created in the following scenarios:

If you need to translate custom messages on products. Custom product messages are defined in product definition in the Rules and Messages tab and can be translated via custom dictionaries. You need to enter the key for the message in the Message Text field inside {{}} brackets in product definition. In the custom dictionary, the key is entered without the {{}} brackets. In case you are using the dictionary to translate custom messages, the ISO code is the same as for the system dictionary.

If you need to create region-specific dictionary for a language (for example English – Australia). In this case, a new ISO code should be used (for example, the ISO code for the English language system dictionary is EN, but for English – Australia, it will be EN-AU).

Note

When adjusting the visibility rules on dictionaries, and you have multiple dictionaries (system and custom) with a visibility rule set to 1, the dictionary with the highest rank becomes the default language on the tenant. Therefore, when making any changes to the visibility rules, you need to check the ranking to ensure which dictionary is the default one. For example, if you have two dictionaries with the same visibility rules set to 1, only the one with rank 1 will be the default.

More details on dictionaries and how-to procedures are described in the following sections:

Comparing Dictionaries

Exporting/Importing Dictionaries

Creating Custom Dictionary

Defining Key Values

Which Dictionaries will SAP CPQ Retrieve for my Users?

Yes
No