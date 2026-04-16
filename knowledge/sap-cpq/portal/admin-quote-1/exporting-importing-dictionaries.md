# Exporting/Importing Dictionaries | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/889f14994c4c420790cab93215bfc891.html?locale=en-US&state=PRODUCTION&version=2603
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
Exporting/Importing Dictionaries

You can either export the current dictionary or both the current dictionary and the dictionary that is being compared, if any. You can also filter and export the dictionary entries that have been updated after a specified date.

You can access import and export functions by clicking the  icon next to dictionaries in Setup  General  Dictionaries.

The Filter records modified since field is located above the list of dictionary entries. You can specify a date by either typing it in the field or by clicking the calendar icon and picking a date in the calendar pop-up. If you are entering the date manually, bear in mind that it needs to be in the user format. Clicking Export visible items and Export all items exports the items currently visible on the page and all items in the dictionary, respectively.

The system exports dictionary values in the XML format and the same format should be used when importing values.

These options are available for importing dictionaries:

Add New and Update Existing Values - keys in the source dictionary will be updated with the values of matching keys in the import file and new keys will be added.

Add non-existing keys - only the keys that exist in the import file and do not exist in the source dictionary will be imported.

Add newer values - for matching keys, if the value in the import file is more recent, it will replace the value in the source dictionary. Also, new keys are added through this option.

Yes
No