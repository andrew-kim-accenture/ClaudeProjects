# Document Generation User Journey | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/9c9f2ac2a0d9419889d722660ba9b2cf.html#related-information
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
Document Generation User Journey

The purpose of this feature is to visually guide new, less experienced or less frequent users through the process of selecting products, creating a shopping cart, generating a quote document.

The document generation process begins with the Quote, where you can choose between two actions: Generate Documents or Generate Document for E-sign. This decision is guided by the Workflow and Workflow permissions set up in SAP CPQ. The first option pertains to the standard procedure for creating documents that can be sent to SAP CPQ clients' customers, while the second option involves integration with DocuSign and Adobe Sign for electronic signatures.

Leading Actions

Enabling arrows to show required action

Depending on application parameter Show lead/prompting arrows in catalog (catalog, configurator, shopping cart, document generation), SAP CPQ displays arrows that make it easier to understand that users need to select a category or the Customize product button.

For categories, the arrow is added to the end of category name.

For product Customize button, the arrow is added in it.

For the configurator, the same arrow is added to the Add to quote/Prepare proposal button.

The approvals action will also have an arrow in order to prompt uses to click it (when it shows up) if approvals are needed. This is because the Generate Quote action won’t be there any longer and approvals are the next step.

Note that the application parameter Show lead/prompting arrows (catalog, configurator, shopping cart, document generation) is added to first tab of application parameters. Default value is FALSE.

Adding products to a quote

To view the option Add to Quote for a product, users need to select at least one product first.

Document Translation

When users start the document generation process, they can translate the quote or template into the customer's language by choosing a dictionary for the document language.

When generating a document in a specific language, the following values on the main items are automatically translated if there is a translation for them in the selected language.

The list of values that can be translated (if translation exist for desired language in SAP CPQ Setup) for the Quote 1.0:

Product Name

Item Label

Description

Long Description

Description Builder

The list of values that can be translated (if translation exist for desired language in SAP CPQ Setup) for the Quote 2.0:

Product Name

Description

Long Description

Description Build

Translations are also valid for Attributes and Attribute Values contained in Products, and those translations are supported both in Word and Excel document templates.

The quote is always generated in the user's current language, and when items are added to the quote, the description is directly stored on the quote item. If the quote was initially created in a different language and the user later opts to generate the document in the environment's default language, the quote item fields will not be translated. In this scenario, the description and long description will appear exactly as they were stored on the quote.

However, for the Product Name, both values can be accessed:

<CTX( Quote.CurrentItem.ProductInfo.ProductNameTranslated )> - retrieves the value in the user's current language.

<CTX( Quote.CurrentItem.ProductInfo.ProductName )> - retrieves the value from the product definition.

For example, if the quote is created in Italian and a translation for the description is available, the description will be saved in Italian and displayed as such on the quote. If the user chooses German for document generation but no German translation is available, the system will display the description value from the product definition.

During the document generation process, users must choose in which language the user wants to translate the generated document. If there is no selected language, the quote remains in the dictionary in which it was created, regardless of whether the user has defined another language as Default Dictionary or not on the User page.

Note

In SAP CPQ Quote 1.0, quote item valuses aren't translated if the language selected for document generation matches the current users language.

Sending Documents as Email Attachments from SAP CPQ

After users select a template for generating a document and customize it, they can download the document and send it as email attachments from the application.

The recipients’ details and the email subject and body are predefined, but users can change the details and select who receives the email.

The email body contains a predefined text that neither users nor administrators can change (for this, please contact the SAP CPQ Support team).

Note

On Quote 2.0 tenants, where Involved Parties are used instead of Customers, in the email form in the end of the document generation process, you can select one or multiple partner functions as recipients of the generated document. Only the partner functions with a defined email address are offered for selection.

The generated document is sent as an email attachment if Email Attachment is selected. Selecting Include Proposal Link includes a link in the email.

Note

If the option Send Mail using your default mail client… is selected, it’s necessary to manually attach the generated document (the generated document won't be automatically attached to your email). Also, the Plain text body type must be selected.

When the client uses the default email client to send emails (by choosing the Send mail using your default mail client on the last page of the document generation process), SAP CPQ is unable to confirm whether the email was successfully sent. As a result, SAP CPQ does not mark the Sent To Customer check box on the Documents tab (in Quote) as checked.

Visible generated documents

In the Documents tab on Quote, you can see all the documents generated during the document generation process. Deleting a document template from Setup won't remove generated documents on Quote with that template. They will always remain visible in the Documents tab on Quote.

When you delete a template, the generated documents associated with it will still be visible in the Documents tab on the Quote. The name of the template that was used to generate each document will be displayed in the Template Name column, even if the template has been deleted.

The maximum allowable size for each document being uploaded is 20 MB.

There is no specific limitation on the number of document uploads per quote.

There are no restrictions on the total combined size of all uploaded documents for a single quote.

Related Information
Document Generation Journey
On this page
Leading Actions
Document Translation
Sending Documents as Email Attachments from SAP CPQ
Visible generated documents
Related Information
Yes
No