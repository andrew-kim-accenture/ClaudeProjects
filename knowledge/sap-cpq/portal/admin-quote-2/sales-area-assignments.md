# Sales Area Assignments | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/c3b0a34af74f46b396a0b3973a4f70e1.html?locale=en-US&state=PRODUCTION&version=2603
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
Sales Area Assignments

The Sales Area Assignments administrative section lets you view replicated data from the Assignments table available under Enterprise Structure in SAP S/4HANA.

Each row in the Sales Area Assignments table in SAP CPQ represents an assigned sales area, which is a unique combination of sales organization, distribution channel and division that was set in SAP S/4HANA based on all available combinations.

As SAP CPQ is used for quotation purposes, the system doesn’t need all possible combinations of these three entities that can be set as sales area in SAP S/4HANA. It only requires those assigned sales areas that can actually be used in a quote.

Example
In SAP S/4HANA, you can assign different distribution channels and divisions to a sales organization (sales org). For instance, for your sales org "Domestic Org DE," you assigned the following:

Distribution channels: Retail, Web Shop, Direct Sales

Divisions: Division 01, Division 02, Division 03

This setup results in a total of nine combinations of sales org and available or assigned distribution channels and divisions (three options for distribution channels times three options for divisions). Since a sales area is defined as a unique combination of a sales organization, distribution channel, and division, you can set up to nine sales areas based on your data. However, you may decide to sell your goods only from Division 01 via online sales and brick-and-mortar shops (retail). As a result, in the Assignments table under Enterprise Structure, you will have just two records.

Sales Organization

	

Distribution Channel

	

Division




Domestic Org DE

	

Web Shop

	

Division 01




Domestic Org DE

	

Retail

	

Division 01

These two records will be replicated to SAP CPQ and shown in the table on the Sales Area Assignments page.

Available Actions

You cannot modify the replicated data, but you can delete existing entries or add new ones. In the typical scenario, this page is used just for displaying the replicated sales areas assignments from SAP S/4HANA.

Note

The options to add new sales area assignments or delete an existing one are enabled primarily for testing purposes – to verify replicated relationships and correct invalid ones. These options are not recommended for productive purposes, as each newly added sales area will represent the diversion from the master data maintained in SAP S/4HANA.

Yes
No