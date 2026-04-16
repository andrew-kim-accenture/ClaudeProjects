# Import via Excel | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/8894227cbbd24eafbeafb04681955333.html?locale=en-US&state=PRODUCTION&version=2603
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

	
Fields, Calculations, Layout
	
Document Generation
	
Custom Quote Tabs
	
Quote Tables


	
Create Quote Table
	
Quote Table Columns
	
Manage Quote Table Column Groups
	
Quote Table Actions
	
Import via Excel
	
Quote Table Translation
	
Quote Fields
	
Quote Tab Permissions
	
Quote List Settings
	
Bulk Quote Deletion
	
Quote Visibility
	
Quote Acceptance Settings
	
Partner Functions
	
Solution Design
	
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
Import via Excel

Users can import data into quote tables by importing Excel files on both quote engines.

The following procedures contain step-by-step instructions on how to upload Excel files into quote tables.

General Prerequisites

To have a quote created.

To have a quote table created.

To select Allow Excel upload checkbox for the quote table.

This functionality can be accessed by navigating to the quote tab in which the quote table is placed. There, users can:

Upload new data

Update the existing data

Upload New Data

Instead of manually adding rows into quote tables, users can download empty Excel templates, fill them out and upload them into the quote table.

Click Download Excel File.

A dropdown list appears.

Click Add New Entries.

An Excel file is downloaded.

Fill out the file according to the instructions.

Click .

Upload the file with new data.

A message informs you whether the upload was successful or not.

Update the Existing Data

When managing extensive quote tables, it’s easier to download the existing data in an Excel file, update it and upload the template back into the quote table. The prerequisite is to have data in the quote table.

Click Download Excel File.

A dropdown list appears.

Click Update Existing Entries.

An Excel file with the data from the quote table is downloaded.

Update the data in Excel according to the instructions.

If needed, you can also add rows in Excel to upload new data into the quote table.

Click .

Upload the file with the updated data.

A message informs you whether the upload was successful or not.

Template Guidelines

The Excel template contains a sheet with all columns and rows that exist in the quote table for which a user has editing rights.

Note

Quote table rows are distinguished by ID numbers, so if existing entries need to be updated, you shouldn’t change the ID numbers in the template.

If users populate the Excel file incorrectly by entering an inadequate value format and try to upload it into a quote table, an error message appears. Additionally, users are prompted to download the file again and enter the correct data to ensure a successful upload. The incorrect data in the Excel file is marked in red and the new Error column is also displayed in the file. You don’t need to change the color of the cells and delete the Error column before reimporting the file.

The date format used in uploaded Excel files must match the date format which is set for that user.

An Excel template is always downloaded in .xlsx format, but it can be uploaded in any of the following Excel formats: .xlsx , .xls, .xltx, and .xlt.

Note

There’s a new event When Excel is uploaded into a Quote Table available in the Global Scripts. A global script can be triggered after an Excel file is successfully uploaded to a quote table.

On this page
Upload New Data
Update the Existing Data
Template Guidelines
Yes
No