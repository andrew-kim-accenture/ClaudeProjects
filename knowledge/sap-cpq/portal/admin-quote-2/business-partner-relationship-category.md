# Business Partner Relationship Category | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/326ef90aa1f14f06ba250072a3da8298.html?locale=en-US&state=PRODUCTION&version=2603
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
Business Partner Relationship Category

SAP CPQ Administrators can create Business Partner Relationship categories, establishing dynamic relationships between two Business Partners. A dedicated page within the Setup section, under the Business Partners, titled Business Partner Relationships is introduced. The page includes a table list with columns for Relationship category (code), Name, and Description.

Context
To create a new business partner relationship, execute the following steps:

Navigate to Setup, choose Business partners  Business Partner Relationships.

Select a Business Partner function from the dropdown.

The selected partner function serves as the default reference point for relationships. Business partners will be sorted and filtered based on their relationship with the business partner assigned to this function. When adding an involved party, available partners are displayed in order of their relationships with the one set as the default partner function. You can further refine the search by selecting a relationship from the dropdown.

Click Add New and enter the values in the following fields:

Relationship Category

Business partner relationship category code should only contain numeric digits, alphabets, or underscore and limited to 20 characters.

Name

Example

Contact

Enable or Disable the two-way Relationship toggle.

Note

If the relationship type is one way, you can only add or change one description. If the relationship is two-way, you can add or change two descriptions.

Description 1

Example

has Contact

Description 2:

Example

is Contact

Click Save

Once you save the changes, a new row is added under business partner relationship. You can edit or delete the business partner relationship based on the access granted by the administrator. Any update or deletion of a relationship is logged in the audit trail.

The name and descriptions of a business partner relationship can be translated into multiple languages in the setup. The Translate this item option on the Business Partner Relationships page will enable you to translate the name and descriptions of the relationship.

Yes
No