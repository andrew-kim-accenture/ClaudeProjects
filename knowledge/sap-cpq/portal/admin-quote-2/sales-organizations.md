# Sales Organizations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/8bbc23b043d6403083026f38ffe93918.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration


	
Sales Area Assignments
	
Sales Organizations
	
Distribution Channels
	
Divisions
	
Payment Terms
	
Shipping Conditions
	
Incoterms
	
Sales Organization Visibility
	
Sales Area Parameters
	
Quotes Administration
	
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
Sales Organizations

The Sales Organizations administrative section lets you view replicated sales organizations from SAP S/4HANA along with their default currency.

A sales organization sells, distributes, and negotiates terms of sales for products. In its hierarchy, you can have other entities like sales group and sales office.

Note

Unlike a sales organization, sales group and sales office entities are not replicated from SAP S/4HANA, so they need to be manually maintained in SAP CPQ on the Sales Area tab in Setup  Business Partners  Business Partners.

Each sales organization in a table includes the following:

Field

	

Description




Name

	

The name of a sales organization as defined in SAP S/4HANA.




System ID

	

Automatically generated from the sales organization's code by adding _cpq.




SORG Code

	

The sales organization’s code in SAP S/4HANA.




Default Currency

	

The sales organization’s default currency.

Note

During quote creation, the system reads the default currency from the selected sales organization and checks whether it is present in the table on the Setup  Pricing/Calculations  Currencies page. If present, the default currency for the selected sales organization appears on the quote under the Currency field. Otherwise, the system shows the default currency from the Currencies page under the Setup  Pricing/Calculations section.




Is Default

	

Sets the sales organization as the default one when selected. The name of the sales organization for which the flag is set to TRUE appears in the quote under the Sales Organizations field as the preselected option from the dropdown. Therefore, there can only be one default sales organization.

Available Actions

You can modify or delete the replicated data or add a new sales organization. Although all these actions are supported, this page is typically used just for viewing the replicated data.

Related Information
Product Sales Area Tab
Business Partner Sales Area Tab
Yes
No