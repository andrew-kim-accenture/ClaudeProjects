# As of 2505: Update of Responsive Design templates for Quote Custom Sections | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/cc712775d41f40a79eadb268b815ec4a.html?version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ What's NewVersion: 2603English
Provide feedback on our search

	
What's New Library
	
Breaking Changes and Announcements


	
Latest Breaking Changes and Announcements
	
Archive of Breaking Changes and Announcements


	
SAP CPQ 2602 Breaking Changes and Announcements
	
SAP CPQ 2511 Breaking Changes and Announcements
	
SAP CPQ 2508 Breaking Changes and Announcements
	
SAP CPQ 2505 Breaking Changes and Announcements


	
As of 2505: Update of Responsive Design templates for Quote Custom Sections
	
As of 2505: The Setter for NumberOfItems Will Be Removed.
	
As of 2505: Obsoleting the Customer Object on Quote 2.0
	
SAP CPQ 2502 Breaking Changes and Announcements
	
SAP CPQ 2411 Breaking Changes and Announcements
	
SAP CPQ 2408 Breaking Changes and Announcements
	
SAP CPQ 2405 Breaking Changes and Announcements
	
SAP CPQ 2402 Breaking Changes and Announcements
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2505: Update of Responsive Design templates for Quote Custom Sections

Description

Update of Responsive Design templates for Quote Custom Sections - The way of processing Quote Custom sections on SAP CPQ UI is optimized, which will lead to improved performances. If customized templates are used for templates Cart   CartPage and Cart   CustomFieldsPage, you need to perform changes described below in order to use Quote Custom Section.

Actions to take
In order to use Quote Custom Section, you need to perform following changes to your custom templates:

In the customized template Cart  CartPage:

Add these lines starting from the 15th line:



@Html.PartialWithNameAsComment("Templates/CartCustomFieldTemplates")                    
@if (CartController.HasQuoteTablesOnCurrentTab() || CartController.HasQuoteTablesOnCurrentCustomSection())
                    
{
     @Html.PartialWithNameAsComment("Templates/CartTableTemplate")
     @Html.PartialWithNameAsComment("Templates/CartTableCellTemplates")
     @Html.PartialWithNameAsComment("EditablePagerTemplate")                     
} 


In the customized template Cart   CustomFieldsPage:

Remove lines from 47 through 52:



@if (CartController.HasQuoteTablesOnCurrentTab())
{
     @Html.PartialWithNameAsComment("Templates/CartTableTemplate")
     @Html.PartialWithNameAsComment("Templates/CartTableCellTemplates")
     @Html.PartialWithNameAsComment("EditablePagerTemplate") 
} 


Add the following lines at the top of the page starting from the second line:



@if (CartController.HasQuoteTablesOnCurrentTab() || CartController.HasQuoteTablesOnCurrentCustomSection())
{
     @Html.PartialWithNameAsComment("Templates/CartTableTemplate")
     @Html.PartialWithNameAsComment("Templates/CartTableCellTemplates")
     @Html.PartialWithNameAsComment("EditablePagerTemplate")
 } 

On this page
Description
Actions to take
Yes
No