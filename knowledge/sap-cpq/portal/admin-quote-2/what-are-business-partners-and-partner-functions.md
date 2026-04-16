# What are Business Partners and Partner Functions? | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/76d052e698024303bc96fd1053f7d00e.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Business Partners


	
What are Business Partners and Partner Functions?
	
Involved Parties and Customers – Differences
	
Create Business Partner in SAP CPQ
	
Create Business Partner in External Systems and Import into SAP CPQ
	
Partner Functions
	
Create Partner Functions in External Systems and Import into SAP CPQ
	
Synchronize Business Partners and Partner Functions
	
Involved Parties
	
Bulk Business Partner Import/Export
	
Business Partner Relationship Category
	
Bulk Delete Business Partners
	
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
What are Business Partners and Partner Functions?

The Business Partners is the default functionality for managing customers and other involved parties in quotes in the Quote 2.0 engine.

Business partners of an organization are all the entities that have business relationships with that organization. A business partner can be an organization, a person, a group of organizations, a group of persons, and so on. Typically, the business partners of an organization or company are customers, vendors, employees, contact persons, organizational units, and so on.

Partner functions determine how a certain business partner is related to a transaction. The most common partner functions are Sold-To Party (entity to which goods are being sold), Ship-To Party (entity to which goods are being shipped), Payer (entity responsible for payment), Bill-To Party (entity to which invoice is issued), and so on.

Partner functions are assigned to quotes, and business partners are, on their end, assigned to partner functions based on their involvement in the transaction made via quote, sales order, contract, opportunity, and so on. By assigning a business partner to a partner function, the SAP CPQ user creates an involved party. This way, it is possible to track, from a legal and business perspective, all the parties that have participated in a business transaction. Partner functions essentially show how a business partner is involved in a transaction.

Example
A Jamie Peters is the recipient of the goods sold through a quote. The SAP CPQ administrator creates the business partner Jamie Peters, while the partner function Ship-to party is already in the system, created by default when the Business Partner feature is enabled. On the quote, the user creates a new involved party by selecting Jamie Peters from the list of existing business partners and Ship-to party from the list of partner functions.
Related Information
Involved Parties
On this page
Example
Related Information
Yes
No