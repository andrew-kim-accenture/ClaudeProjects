# Product Scripts Tab | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/22d371cc05b54e4593cd4de0b6c0a8a5.html#related-information
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products


	
Create Products


	
Product Definition Tab
	
Product Pricing Tab
	
Product Attributes Tab
	Product Rules and Messages Tab
	
Product Scripts Tab


	
Basic Scripting Elements for Attributes
	
Products Layout Tab
	
Products Advanced Settings Tab (Code Matching)
	Product Actions
	
Categories
	
Attributes
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	
Custom Configurator XSLT
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
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
Product Scripts Tab

This tab enables you to define scripts in a product and specify events that trigger the execution of those scripts. You can verify the execution of the script in the Log.

You can define a local script or attach a global script to individual products, in the Setup  Product Catalog  Products  Scripts tab. The purpose of local scripts is to be used on specific product for which they are created, while global scripts are universal in their nature, and can be attached to multiple different products.

Local Scripts

If you wish to add a new local script, navigate to the Scripts tab, and click Add Script  New Script. The following fields and options are available when new local scripts are created.

Name (required)

	

The name of the script.




Active

	

Determines whether the script is currently executed when events occur.




Description

	

Scripts can be described in greater detail, if necessary.




System ID

	

Automatically populated when the script name is entered.




Start Date/End Date

	

The dates between which the script will be executed.




Force Proxy Generation

	

Loads and refreshes the WSDL web services as the system does not do it by default. The checkbox needs to be selected only once when the script is saved for the first time.




Script

	

You can only enter the IronPython script engine type.

Example: We can add a script Log.Write("Add item", "Item added"). The event is adding an item to a quote with the script writing in the Log that the item has been added. Once you’ve clicked Add to Quote in the Configurator, go to the Log to see if the script was executed. Once you’ve added the product to the quote, the Log Description field is populated with an Item Added update.




Check Syntax

	

Used for ensuring that the script is valid.




Workbench

	

Brings up the Script Workbench, which is a useful tool for debuging and developing scripts.




Scripting Methods List

	

Displays a list of relevant scripting methods.




Events

	

Select an event which triggers the script execution.

Global Scripts

If you wish to attach a global script to a product, navigate to the Scripts tab, and click Add Script  Global Script.

In the Global Script dropdown, you can select a global script you wish to attach to a product, and then the event which will trigger the script.

Related Information
How-to Examples
Develop
Guided Selling
On this page
Local Scripts
Global Scripts
Related Information
Yes
No