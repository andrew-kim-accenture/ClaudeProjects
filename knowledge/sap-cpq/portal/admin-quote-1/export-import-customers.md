# Export/Import Customers | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/bf87e25f9dc14c788969472d36a9210c.html?locale=en-US&state=PRODUCTION&version=2603
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
Export/Import Customers

There are several ways in which customers can be exported and imported into the system in several ways, which are detailed in this topic.

Context
Note

Customers are available only in Quote 1.0. In Quote 2.0, organizational and transactional relationships are recorded via Business Partners 2.0.

To export/import global customers in the Customers Export/Import page, follow one of these workflows:

Download a sample template, fill out customer details, and import the file.

Export all customers in SAP CPQ.

Export all customers, change details, and add new customers, then import the file.

To download the import template, click Sample Template in the Customer Import page. The Excel file contains customer standard fields, which you can fill out with new customers' details.

The same fields are mandatory when creating global customers in Customers/Customer Roles  Global Customers and when importing customers through Excel: Address (1), City, Country/Region, and Zip.

The best practice for importing new customers in the system is to do it through the sample template. To update existing customer details, you need to export them from the system, change the data and then import them. An empty row in the template breaks the import and only the data processed before the empty row is imported.

Note

It is recommended that you import no more than 10000 customers using a single Excel file. In addition, it is recommended that you export no more than 60000 rows.

The following procedure describes how to export all customers in the system, change their details, add new customer, and import the updates in SAP CPQ.

Procedure
In Step 1, click Export All Customers.

The spinning wheel next to the tab title indicates that the system is building the list of attributes.

When the process is completed, the button name changes to All Customers.

Click the button to download the file.
Populate the file with new data.

The System Id column needs to remain empty for new customers. The first cell in the Index column needs to always have the value 1 and the number needs to increment by one in the subsequent cells.

Select an identifier in Step 3.

The system treats the identifier when comparing customers in the system with customers in the Excel template. For example, if a customer code in the template matches a code in the system, the respective customer details are updated. Otherwise, a new customer is added:

Customer Code

CRM Account ID

CRM Contact ID

CRM Account ID and CRM Contact ID

SAP CPQ Customer ID

None

In Step 5, click Choose File to browse for your file.

Formats XLSX and XLS are supported.

Click Import.

The file name can contain only letters, digits, dashes, and underscores. In addition, every column name in the file must be unique.

After the system processes data, the number of valid and invalid records in the file and the following buttons are displayed:

Import Without Preview - starts the import and a message displays once the import is successfully completed.

Import With Preview - a grid with all the customers in the file displays. You can see the status of each record and select/unselect it for import. Click Save to import the valid customers.

Import With Preview of Invalid Records Only - invalid records, if any, display in this grid. The Status column shows the cause of the error. Selecting invalid records for import is disabled.

Click Save to import the valid customers.

You can follow these steps when importing customers through the Manage Customers page since the customer import/export journeys on the user side and the administrator side of SAP CPQ are the same.

However, on the user side of SAP CPQ, you can export/import only local customers (the Owner column displays the names of users who created the customers).

On this page
Context
Procedure
Yes
No