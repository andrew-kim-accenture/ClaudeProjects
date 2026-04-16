# Server Side Rendering | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/3dd10ce5f148423db5a9e465be2aabd1.html#available-functions:
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


	
Translation function
	
PartialWithNameAsComment Function
	
How to Reuse Custom Templates
	
Url.MTContent
	
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
Server Side Rendering

Server context is accessible by @ in Razor.

The @ sign in templates denotes use of Razor syntax. Razor is a markup syntax for adding server-based code to web pages. It is a server side markup syntax much like ASP and PHP and supports C# and Visual Basic programming languages.

Example

XML:



<h1>Hello Razor</h1> 
<p>The time is @DateTime.Now</p>

The page contains ordinary HTML markup, with one addition: the @ marked Razor code. The Razor code does all the work of determining the current time on the server and display it. You can specify formatting options, or just display the default.

Razor View Helper Functions

Razor view helper functions are used in responsive template and all templates that we want to see title of CSHTML file when we are debugging (F12 in browsers).

Available functions:

Translation function

PartialWithNameAsComment Function

How to Reuse Custom Templates

Url.MTContent

On this page
Example
Razor View Helper Functions
Available functions:
Yes
No