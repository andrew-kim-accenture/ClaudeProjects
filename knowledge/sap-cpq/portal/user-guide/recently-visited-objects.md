# Recently Visited Objects | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/efc083171d8e4f0caf13e3a679449867.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey
	
Load Existing Quotes


	
Recently Visited Objects
	
Custom Load Quote XSLT Transformation - Managing Quote Link
	
Custom Load Quote XSLT Transformation - Managing Revision Column
	
Quote Management
	
Quote
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
Recently Visited Objects

SAP CPQ displays the list of recently visited items in the widget on the left side of the screen. In this widget, users can see products, categories, quotes they have recently visited and documents they have recently created.

The Recent Items part of the widget has 20 items displayed in it by default. Whether or not Recent Items is displayed to users, is controlled with the application parameter Display List Of Recent Items To Users (found in Setup  General  General Parameters). The default value for all tenants is TRUE.

Items are dynamically added to the widget. The user can see all items stored in the Recent Items cache (if they wish to) by going far back enough.

When a user clicks on the quote in the Recent widget, they’re redirected to this quote (Edit action is executed). If the user doesn’t have Edit action available anymore on the quote, the message You currently don't have permissions to view this quote. If you have any question please contact your system administrator. is displayed. User remains in the same page from where they tried to enter this quote.

When a user clicks on the product found in the widget, SAP CPQ redirects user to the product configuration page. When a simple product is found in the Recent Items widget and user clicks on it, a pop-up with View Details page is displayed to the user. On this page, the button Add to quote is displayed instead of checkboxes Add to quote and Add to compare. If product doesn’t exist anymore in the system (or is no longer visible) to user, message You currently don't have permissions to view this product. If you have any question please contact your system administrator. is displayed in pop-up error message window.

When a user clicks on the category in the Recent widget, SAP CPQ will redirect user to this category (in the same way as if user manually found it). If the category doesn’t exist anymore in the system (or is no longer visible) to user, the message This category is no longer accessible to you. displays.

When a user clicks on link for generated document, it’s downloaded to user’s browser and user remains on the current page. Users are able to download documents to tablet devices. If document doesn’t exist anymore in the system, the message This document doesn’t exist in the system anymore is displayed in a pop-up error message window and user remains in the same page from where they tried to download the document.

Improvements to Recent Items

The following application parameters are added to SAP CPQ Setup  General  Application Parameters (under Display Recent Items to Users):

Display products in Recent Items (Default value: TRUE)

Display categories in Recent Items (Default value: TRUE)

Display generated documents in Recent Items (Default value: TRUE)

Display quotes in Recent Items (Default value: TRUE)

Yes
No