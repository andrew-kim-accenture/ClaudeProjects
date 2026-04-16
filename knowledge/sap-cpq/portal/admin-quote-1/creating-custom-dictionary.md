# Creating Custom Dictionary | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/853bbec4ac3e4e4dbdcfaebf39fe74f8.html?locale=en-US&state=PRODUCTION&version=2603
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
Creating Custom Dictionary

To access all dictionaries on a tenant and manage custom dictionaries, go to General  Dictionaries. The page lists all dictionaries and lets you delete and edit dictionary details and pertaining keys.

Click Add New.

Fill out these fields on the new page:

Name - the name of the dictionary. This is the only required field.

Rank - used for sorting out multiple default dictionaries.

Type - prepopulated with Custom.

Parent Dictionary - the new dictionary inherits values from the parent dictionary. The parent key/value pairs are not copied directly to the child dictionary, but they are stored in the background. To override the value of a key, copy it to the child dictionary and change its value.

Visibility Condition - enter 1 to make a dictionary visible to all users. Otherwise, you can click  to restrict the visibility to certain users.

Condition for Defaulting to this Dictionary - the system retrieves values from this dictionary if no default dictionary is selected for a user on User Page and in user configuration. To set a dictionary to default, enter 1 in the box. Alternatively, click  to create a more complex condition.

Language ISO Code - assign a language ISO code to the dictionary as defined by the ISO standard. You need to assign language ISO codes here before you can successfully synchronize languages from SAP Variant Configuration and Pricing. The language ISO code is used in the HTML for the value of the lang attribute.

Click Save.

The dictionary is created and it displays on the last page of the dictionary list.

Related Information
Defining Key Values
Yes
No