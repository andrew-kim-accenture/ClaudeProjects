# Prerequisites | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/d89bb91ba024476db8795840fc8f70c4.html#getting-started
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


	Setup Help

	
Branding
	
Catalog Layout
	
Quote Layout
	
Responsive Templates


	
Responsive Template Customization in Setup
	
Responsive Design Customizations


	
Prerequisites
	
Knockout Extension Functions
	
Customization Examples
	
Advanced Customization Examples
	
Server Side Rendering
	
Manage Custom CSS/JS Files with File Manager
	
Upgrade Templates to Newer Versions with Newer Releases
	
Template Versions
	
Freeze Templates
	
Obsolete Features
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Prerequisites
Required Knowledge

In order to do responsive customization you should have at least basic knowledge of HTML, CSS, JavaScript and Knockout. For knockout learning, recommend the official knockout tutorial (http://learn.knockoutjs.com/).

Tools

The Google Chrome extension for the Knockoutjs context debugger is no longer available, and clients can only use Knockout Context Hover (https://chromewebstore.google.com/detail/lcpnkclcbpmhekkjnkomhoecoiobbejf) instead.

Getting Started

You need to understand the structure of your observable array. For examples, use quote custom fields. On appropriate page (in this example Cart Page) open Developer Tools in Chrome (right click and then choose Inspect element or Ctrl + Shift + I or F12).

In Developer Tools go to first tab Elements and on right side click on Knockout context. Below you will see all available data. Among other things there are custom fields.

When you expand custom fields observable array, and expand one member of array you will see all available fields such as content, editable, id, isRequired, etc for specified array member. Also there are “values” field representing array of values and it can be expanded, too.

So, from this example you can see that there is an array of custom fields and that each custom field has some info such as content, editable, id, isRequired, etc and has array of values.

On this page
Required Knowledge
Tools
Getting Started
Yes
No