# Bulk Product Translation Import/Export | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/38a2e5ec40de4003921982dd96d56a0a.html?locale=en-US&state=PRODUCTION&version=2603
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
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export


	
Bulk Product Import/Export
	
Bulk User Import/Export
	
Bulk Pricebook Import/Export
	
Bulk Product Translation Import/Export
	
Bulk Business Partner Import/Export
	
Attribute Import
	
Import/Export Attribute Translations
	
Companies Export/Import
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Bulk Product Translation Import/Export

SAP CPQ administrators can upload translations for many products using XLSX or XLS files. You can export translations of all products or products that match the filter criteria you provide. Product fields and languages that are selected on Product Translations Import page are displayed in the exported file.

In Setup  Product Catalog  Products  Product Translation Import, you can choose a language that needs to be translated from product fields (reference language) and a target language.

Note

It is also possible to perform import/export of product translations directly from the Products page in Setup.

Product Translation Import

When importing product translations, you can choose to use either SAP CPQ ID or Part number as a product identifier when you want to import product translations. When SAP CPQ ID is selected, you can import or export fields associated to the product object as well as the attribute and the attribute value object. When the part number is selected, only the fields associated with the product object can be translated. The attribute object and the attribute value object are disabled.

Product Translation Export

Exporting product translations is very similar to the process of exporting products – with ability to export products from categories and to export all products.

Export Template - SAP CPQ exports a Microsoft Excel template with two sheets: Specification (explanation of columns that can be populated) and Example (what the template that is ready for import should look like).

Export All Product Translations - SAP CPQ exports all selected product translation fields – fields from the product object, the attribute object, and the attribute value object.

You can export translations for any product type (simple, configurable, collection, system, or parent/child system).

Filter and Export - allows filtering pricebooks per the criteria you provide, and exporting the results in Microsoft Excel.

Useful Guidelines

File format for import is XLSX or XLS.

Columns don’t have to be sorted in prearranged order (system needs to be able to link column header and content found in the column).

System_ID column needs to be populated with object system_id. Objects are separated with ||.

If the object is a product, the System ID is system_id of the product.

If the object is an attribute, System ID needs to be populated with system_id||attribute system_id.

SAP CPQ checks if the object (product, attribute, and attribute value) exists in the system. If product system_Id doesn’t exist in the system, that row is skipped, and translations aren't inserted. The same behavior is applied on attributes and attribute values. If they don’t exist in the product, they aren't inserted.

Object column can have following values:

Product

Attribute

Attribute value

Property column can have following values:

Product properties: Product Name, Description, Long description, Description builder

Product attribute properties: Label, Hint, Description, Error Message

Attribute Value properties: Attribute value description

Attribute Value properties: Attribute value description:

Reference language column – this column will be populated with chosen Translate from language. US English is default.

Language 1, Language 2 … - Each selected language for translation will be a separate column in xlsx file.

If you rename column name, appropriate error message should be shown during the import.

Columns and properties values should not be case sensitive.

Updating Product Translation: When you import a file, SAP CPQ should be able to understand whether product translations already exist in the system for provided system_id. If yes, they will be updated.

On this page
Product Translation Import
Product Translation Export
Yes
No