# Distribute a Section | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/b167bb35c4d34ec5ac7c0ce195a95ad6.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help
	
Solution Design


	
Managing Section
	
Section Calculations
	
Add and Allocate Products to Sections
	
Section Distribution


	
Distribution Methods
	
Distribute a Section
	
Section Totals
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Distribute a Section
Prerequisites

To have a distribution method created in Setup  Quotes  Fields, Calculations, Layout  Quote Fields and Calculations.

Context

Only a section that has a calculation of the aggregate type Sum can be distributed. Sections with other aggregates types can’t be distributed. The Retract action removes the distributed sections from the target sections.

Procedure
Click  next to a section.

The Distribution Section modal pops up, displaying these fields:

Select section to distribute - the field is grayed out and it displays the name of the field that is being distributed. If multiple sections are selected, you should select in this field one section at a time and manage other fields in the pop-up.

Distribution Method - list of custom distribution calculations. Additionally, the Manual method is the default value. If this method is selected, you’ll be able to set up the percentages according to which the value of the source section is distributed to target sections.

Click  next to Distribute to.
Click the empty field and the available target sections are displayed (all the sections that aren’t enabled for distribution).
Select one section.
Repeat the previous steps to add other target sections.
Click Split Evenly.

New subsections are added to target sections, one level below the target sections.

The value of the source section is evenly split between the target sections.

You can change the percentage manually and remove the target section by clicking .

On this page
Prerequisites
Context
Procedure
Yes
No