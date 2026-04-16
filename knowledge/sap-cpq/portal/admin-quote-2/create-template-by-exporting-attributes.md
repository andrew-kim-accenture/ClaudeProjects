# Create Template by Exporting Attributes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/2e10ed167eed407ba735220acd4008bc.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Template by Exporting Attributes
	
Importing Attributes with Unit of Measurement Type
	
Import/Export Attribute Translations
	
Companies Export/Import
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Create Template by Exporting Attributes

To update attributes that are already in the system, download all of them in an Excel file, update data and then upload the file.

Click Create Template by Exporting Attributes in the Attribute Import page.

The spinning wheel next to the tab title indicates that the system is building the list of attributes.

When the process is completed, the button name changes to Exported Attributes.

Click the button to download the file.

The file has the same columns as the sample template.

Change the value of the attributes you wish to update. Don’t change the System Id.

You can also import new attributes through this template. Just continue filling out the list as described in the Sample Template section.

Note

Other than updating the existing and adding new attribute values, don't make any other changes in the template. The template must contain all the columns described in Sample Template for the upload to be successful. No special characters are supported.

Save the changes you have made in the file.

Click Choose File.

Browse your computer to find the file.

Click Import.

After the system processes data, a new window displays the number of valid and invalid records in the file and the following buttons:

Import Without Preview - starts the import and displays a message once the import is successfully completed.

Import With Preview - a grid with all the attributes in the file displays. You can see the status of each entry and select/unselect it for import. Click Save to import the valid attributes.

Import With Preview of Invalid Records Only - if there are invalid records, they’re displayed in this grid. Messages informing you about the cause of the error are in the Status column. Selecting invalid records for import is disabled. Click Save to import the valid attributes.

Yes
No