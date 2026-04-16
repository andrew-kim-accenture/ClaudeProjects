# Related Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/a0331d3b3399480884c9a7315a6dd298.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation


	
Document Generation Tags
	
Document Generation Template


	
Template Definition
	
Sections
	
Visibility Permission
	
Format Permissions
	
Related Fields
	
Additional Content
	
Additional Documents
	
Delegation of Authority for Document Templates
	
Supporting Custom Fonts for the Document Generation Process
	
Document Generation Libraries and Differences
	
Setup Administration
	
Manage Content Documents
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
Custom Quote Tabs
	
Quote Tables
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Related Fields

On this page, you can specify the Quote custom fields that are related to the entire template. Later, the values can be specified on the User side during the process of generating the documents.

Users are prompted to fill out related fields when customizing a document that is being generated. Depending on the template type you’re editing, the fields are related to a section (in case of a section template) or to the entire output document (in which case, they’re displayed in the Template Details panel in the Customize tab on the user side). In the screenshot below, you can see an example of each case: Quote Expiration Date and Terms are related to the Introduction section and Additional Comments and Customer Comments are related to the document in general.

A list of available custom quote fields opens upon clicking Add New. Select a field and choose Save. The selected fields are listed in the Related Fields tab, and you can rerank them using the Ranking button or delete them using the action.

If the Required toggle is enabled next to a field, users must first populate this field before they can proceed from the Customize step in the process of generating the output document. Otherwise, if this toggle is disabled, users can choose whether to fill in that field or not.

On this page, you can specify the custom fields for the quote that are related to the entire template. Later, the user can specify the values during the document generation process on the user side.

Ranking of selected related fields - this functionality determines the order of showing the related fields under the Customize tab for users to populate them during the process of generating documents. Within the pop-up dialog, it is possible to rank related fields with drag and drop or by manually entering the desired number of ranking.
Note

Related fields are automatically arranged in ascending order. It is possible to define the existing rank number for some related fields, so in cases where multiple related fields have the same rank number, they will be sorted alphabetically in ascending order.

Note

The ranking dialog within Related fields is now enhanced with the Reset button. When chosen, this button will set all objects to a ranking of 1 to n, where "n" is the total number of objects. This eliminates any previous custom ranks set by admins and replaces them with the new ones.

If a Related Field is set to ReadOnly access and is marked as required on the document template, during the Customize step of the document generation process, it will not be treated as a required field (since it is read-only). This allows the user to continue to the next step in the process without needing to fill it in.

Yes
No