# Attaching IronPython Script on Button Attributes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/02f58d6b2eaf458ca6bcd5def30b48b1.html#use-case-no.-2
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


	
Controlling Attribute Access Rights via Iron Python
	
Attaching IronPython Script on Button Attributes
	
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
Attaching IronPython Script on Button Attributes

The purpose of this feature is to enable administrators to attach an IronPython script on button attributes. This gives you the option to define a script that is executed when users click the attribute button. This can include adding rows in the container, selecting attributes, as well as any other operation associated with attributes.

Use Case No.1

In the Configurator, the user clicks the button.

IronPython script is attached to the button attribute.

Once the button has been clicked, IP script is executed and other attributes within the Configurator are populated.

Use Case No. 2

An attribute is configured as a button in the Product Attributes/Options section of a configurable product.

An IP script is linked to the attribute.

The script queries the web and downloads custom information.

The user clicks the button on the Configurator tab.

The downloaded information is linked through the same script to other attribute linked to the configurable product.

Administrators can attach existing global IronPython script on product attributes tab under the product administration page, when the chosen attribute type is a Button.

If the autocomplete search doesn't find the script you’re looking for, the following message pops up: Autocomplete search didn’t find any script with this name.

When the autocomplete search locates the script, it’s displayed at the top of the list. Arrow icons become available for you to navigate and set the execution of the scripts. A Delete icon is also available if you want to remove the added script.

A magnifying icon is located next to the autocomplete search box. When you click on it, a list of all global scripts pops up.

The following columns are displayed in the grid of the list:

Name

Execution Time

Code

Description

Active

Modified by

You can search the script by typing the text in each of these columns. You need to select the script by clicking the Select button. Once you click the Select button, the script is added to the top of the multiple-select list.

On this page
Use Case No.1
Use Case No. 2
Yes
No