# Distribution Methods | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/4832d02947e9436f91828be425d87f96.html?locale=en-US&state=PRODUCTION&version=2603
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
Distribution Methods

A distribution method defines how the values from the source section are distributed to target sections. You can either create a custom calculation in Setup  Quotes  Fields, Calculations, Layout  Distribution Calculations or manually enter the percentages. There’s also the Split Evenly action that distributes the section evenly to the target sections. When applying a custom distribution method, every time you make a change (for example, change the price of an item), you should click  and the values are redistributed according to the distribution method. The Redistribute action is above the section grid, next to other section actions. The action is available only when there are sections selected for distribution in the Can be distributed column and there is a custom distribution method applied.

Example
The following calculation method is selected for distributing a section when users want to keep the same ratio in the sections that are distributed as between target sections.


itemsToBeDistributed = context.Quote.GetSectionItems(context.Source)
sumOfItems = 0
for item in itemsToBeDistributed:
    sumOfItems += item["Wholesale_Price"]
targetSum = 0
for target in context.Targets:
    targetSum += context.Quote.GetParentSection(target)["Wholesale_Price"]
for target in context.Targets:
	target.DistributionPercent = context.Quote.GetParentSection(target)["Wholesale_Price"] / targetSum *100
for target in context.Targets:
	for section in context.Quote.GetSectionAndHisAncestors(target.SectionPath):
		section["Wholesale_Price"] += sumOfItems * target.DistributionPercent / 100
	context.Source["Wholesale_Price"]-=target["Wholesale_Price"]

Before Distribution
After Distribution
On this page
Example
Before Distribution
After Distribution
Yes
No