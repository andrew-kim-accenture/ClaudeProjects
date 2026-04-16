# Document Upload in Configurator | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/7b82b246d5804ef7ae67ec5aa244b614.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation


	
Product Search
	
Catalog Navigation
	
Product Comparison
	
Product Configuration
	
Custom Quote XSLT Transformation - Adding Part Number / Product Name Configuration Link Feature
	
Document Upload in Configurator
	
Document Generation Journey
	
Load Existing Quotes
	
Quote
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
Document Upload in Configurator

This feature allows you to upload documents in the Configurator for each configured item. You can also store customized attachments in your configurations, and access attachments in quote templates.

This section allows administrators to create attributes that can store uploaded documents in the Configurator. For example, typical uses could be uploading custom drawing for custom products or even uploading site surveys, site pictures or measurements for each product.

Moreover, administrators can determine which users are able to upload documents into which configured products and how those documents can be presented in generated output documents like proposals, contracts, and so on. Attributes can be created as a File Attachment type.

In order to use this feature, user has to set up few parameters first.

In Step 3 of the, there’s a new entry in the Display As dropdown list that is labeled File Attachment. If the attribute type Display As is set to File Attachment users are able to upload documents in the Configurator.

In Product Configuration, the attribute display type set to File Attachment has the Upload button.

When a user clicks on this button, a pop-up appears to give the user an option to choose a file from their hard drive. When the user selects the specific file, by clicking the Upload button SAP CPQ uploads the file and refreshes the product configuration.

After uploading the file, the icon (or the button) for file removal appears when a file has been attached to the attribute. When the user clicks on this icon, the file is removed from the text field, deleted from the server and product configuration is refreshed.

The administrator can include the uploaded document in the generated document. The tag that is used in templates for inserting the file to the document is: «C_INSERT_FILE_FROM_ATTRIBUTE(AttributeName)»

Yes
No