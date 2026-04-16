# Knockout Extension Functions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/a493a541098840f989a0891971f236ad.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Branding
	
Catalog Layout
	
Responsive Templates


	
Responsive Template Customization in Setup
	
Responsive Design Customizations


	
Prerequisites
	
Knockout Extension Functions


	
filterByProperty function
	
sortByProperty Function
	
count/countWithProperty Function
	
all/allWithProperty
	
any/anyWithProperty
	
indexOf
	
lastIndexOf/lastIndexOfWithProperty
	
first/firstWithProperty
	
last/lastWithProperty
	
Chaining - Combining Multiple Function Calls
	
Customization Examples
	
Advanced Customization Examples
	
Server Side Rendering
	
Manage Custom CSS/JS Files with File Manager
	
Upgrade Templates to Newer Versions with Newer Releases
	
Template Versions
	
Freeze Templates
	
Obsolete Features
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Knockout Extension Functions

Knockout extension functions are used for observable arrays.



filterByProperty function

Function filterByProperty returns a filtered observable array with members that have value of property matched with passed appropriate values.
sortByProperty Function

Function sortByProperty returns an observable array that contains all members of the original array sorted by property which name is passed.
count/countWithProperty Function

Function count returns the number of array elements that matches predicate function condition.
all/allWithProperty

Function all returns the boolean value whether all elements of the passed observable array matches predicate function condition.
any/anyWithProperty

Function any returns the boolean value whether at least one element of the passed observable array matches predicate function condition.
indexOf

Function indexOf returns index of the first element of passed array that matches predicate function condition.
lastIndexOf/lastIndexOfWithProperty

Function lastIndexOf returns index of the last element of passed array that matches predicate function condition.
first/firstWithProperty

Function returns the first element of passed array that matches predicate function condition.
last/lastWithProperty

Function returns the last element of passed array that matches predicate function condition.
Chaining - Combining Multiple Function Calls

Functions sortByProperty and filterByProperty return new observable array and they can be combined with other functions.
Yes
No