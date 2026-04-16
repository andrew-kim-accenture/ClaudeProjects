# Bulk Product Import/Export | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ce92263f4b6748669e5d260e56b50167.html?locale=en-US&state=PRODUCTION&version=2603
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
Bulk Product Import/Export

Bulk Import/Export feature gives administrators more flexibility in defining product export filters, while improving error handling, process stability and saving administrators’ time.

Large product data files aren't interrupted by an error and large files don't need to be split into several smaller files. This feature is not a replacement for the existing Import/Export functionality, both methods will be available in SAP CPQ setup.

The Bulk Import/Export process starts by exporting products. Since the number of products can be very large, this process had been designed as an asynchronous background process. This means that the administrator is free to leave the page once the export process is initiated and continue with their administrative activities on other pages, or leave SAP CPQ completely. Upon completion of the process, the administrator will be notified via email, and provided with a link to the exported template.

Note

The maximum number of products that can be imported with the Bulk Import/Export feature in one instance is 10 000. If a larger number of products is imported, they will be imported in multiple instances.

This feature is accessed from Setup  Import/Export  Bulk Import/Export  Bulk Product Import/Export. It is also possible to reach the Bulk Import/Export screen from the Products section in Setup.

The Export Products section provides you with the options to export a blank template, export all products, or to define multiple filters before exporting products. The first two options are straightforward. The third option Filter and Export opens the filtering screen.

The first tab Filter Export by is used to define filter criteria for the common product properties, such as Product Name, Part Number, Category and more. If an export involves multiple part numbers, you should enter them one per line. If you want to constraint a number of columns, or define a list of attributes that you want to export, you can do this under Columns and Attributes to export tab.

Clicking Apply Filter and Export starts the background export process. You can leave the page (or application) and come back later to check the download status and download the exported document.

After making the desired changes, you can upload the template document to SAP CPQ. When importing, you must provide the Product Identifier column so that SAP CPQ can know whether to insert or update the existing products. Available product identifiers are the same as for regular product export/import.

Note

Products that are synced from back-office systems cannot be deleted via Bulk Product Import jobs. Those type of products are managed by other systems and therefore can't be deleted from the SAP CPQ system.

In SAP CPQ setup, there is no option to delete in the table of products.

Import of product data also works as a background process. If any error occurs, they will be logged into the same file uploaded for import. The column that holds the information about the row is named Status. You can download the file at the end of the process, make corrections according to any reported errors and upload the file again.
Note

Customers through Bulk Product Import can only edit attribute values of new products (all display types) or existing simple products. To update attributes of other existing display types of products you can use Simple product administration or the Attribute Import feature.

Note

When performing a Bulk Product Import and leaving the Start Date and End Date fields empty for listed products in the Excel file, those fields will be cleared in the CPQ system for those products.

Product Price and Cost Bulk Export

The system decides which value to export for the product price, cost, recurring price, and recurring cost based on the pricing type selected in product administration.

Note

When products are exported, for each product part number and pricing code combination, if multiple valid entries exist in the user's selected pricebook, all of them will be included as separate product rows, in the same way it is displayed in the catalogue.

The table below outlines the export behaviors:

 	

Price

	

Cost

	

Recurring Price

	

Recurring Cost




Custom Pricing

	

Exports the value calculated from the pricing formula, if the formula is defined. Otherwise, it exports the value from Base Price.

	

Exports the value defined in the Cost field.

	

Exports the value defined in the Recurring Price field.

	

Exports the value defined in the Recurring Cost field.




Pricebook Lookup

	

Price defined in the user's pricebook (in User Page), multiplied by the reverse factor (1/(MarketFactor * Currency Rate))

	

Cost defined in the user's pricebook (in User Page), multiplied by the reverse factor (1/(MarketFactor * Currency Rate)).

	

Recurring price defined in the user's pricebook (in User Page), multiplied by the reverse factor (1/(MarketFactor * Currency Rate)). 

	

Recurring cost defined in the user's pricebook (in User Page), multiplied by the reverse factor (1/(MarketFactor * Currency Rate)).


Note

When Variant Configuration and SAP Subscription Billing products are exported, the price, cost, recurring price, and recurring cost fields are empty. 

Note

The structure of the Excel file for product upload has changed in the 2202 release. If you are uploading products after this release, make sure that you download the upload template first because if you use the old template, it will lead to errors in the system.

Related Information
Products
On this page
Product Price and Cost Bulk Export
Related Information
Yes
No