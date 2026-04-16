# Import/Export Attribute Translations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/990677be513647f69dd2869245d988f9.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
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


	
Bulk Product Import/Export
	
Bulk User Import/Export
	
Bulk Pricebook Import/Export
	
Bulk Product Translation Import/Export
	
Attribute Import
	
Import/Export Attribute Translations
	
Export/Import Customers
	
Companies Export/Import
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Import/Export Attribute Translations

To translate multiple attributes via one Microsoft Excel file, you can export individual attributes or an entire attribute type, update attribute translations in the resulting Microsoft Excel file, and import the file back to SAP CPQ. The translation is possible for all languages except the default language of a tenant.

Procedure
Go to Import/Export    Attribute Translations Export/Import.
In Step 1, select the attributes to export.

Select by Attribute Name - enter a search term or specific attribute names. All attributes that match the search term are exported.

Select by Attribute Type - select an attribute type and pertaining attributes are exported.

Combining two search queries is also possible (for example, attributes with Color in their name that pertain to the attribute type Container).

In Step 2, select the languages to export.
Click one of these export buttons:

Export Attributes Translation - exports translations for all attribute types except Container.

Export Containers Translation - exports translations only for Container attributes.

A Microsoft Excel file is downloaded to your computer. Attribute IDs, default names, and translations in the selected languages, if defined, are displayed in the file. Also, a separate sheet contains attribute values with corresponding translations. If Container attributes are exported, the file contains separate sheets for translating container columns, properties, and validation messages.

Update attribute translations in the dedicated columns.
In Step 3, upload the Microsoft Excel file. The button on the right is for uploading files with container attribute translations, and the button on the left for files with all other attribute types.
Click .
Browse for your file.

The name of the selected file shows in the bar.

Click Apply Template.

A success message displays.

Otherwise, if the import file contains invalid records, an error message pops up.

Click Import report.

Invalid records are marked in red and errors are described in the Error column.

When you or your underlying users select a language in SAP CPQ, if translations were imported for the attributes, the system displays them in the Catalog.

Related Information
Attributes
On this page
Procedure
Related Information
Yes
No