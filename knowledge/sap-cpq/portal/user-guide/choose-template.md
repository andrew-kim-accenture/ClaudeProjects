# Choose Template | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/006b1f6214ef410ba4946159166011cf.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey


	
Choose Template
	
Customize Template
	
Previewing the Template
	
Download Document and Send Email
	
Document Generation Management
	
Quote Template Management for Local Administrators
	
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
Choose Template

The first step after selecting Generate Documents or Generate Document for E-sign from the quote action menu is to choose a template for your generated document. When you select the document type for document generation, you are navigated to the Choose Template page. If you have previously created or have shared templates that you can access, they'll be displayed on the main page. From the side menu on the Choose Template page you can choose to display templates from your Favorites, Global Document Templates, or User's Templates. You can also search for templates using the template name. On the Choose Template page, you can select from Generate, to navigate directly to the Download Document and Send Email page or Customize to customize the template before generating documents.

Note

User templates can be accessed only when users are permitted to create templates locally via the Manage Document Templates user menu page. All User Templates are sorted by Date Modified in descending order.

Remember

If template customization is required, always ensure you click the Customize button rather than any other option.

If only one template is available to you as per the visibility permissions from the SAP CPQ setup, the Choose Template step is skipped and after clicking on Generate Documents or Generate Document for E-sign from the quote action menu, you are redirected to the next relevant step in the document generation process:

Customize - if that template can be customized.

Download Document and Send Email - if customization of the available template isn't possible. The system doesn't redirect the user to this third step and remains on the Choose Template page if it's possible to choose the language for document translation. This occurs when one of the following conditions are met:

The toggle Users can choose customer's language when creating documents is enabled in Setup. This applies to both Quote 1.0 and Quote 2.0.

The quote custom field Customer's Language is available on the quote. This applies only to Quote 1.0.

Note

The Choose Template step is skipped regardless of the type of template the user can access, Global or User's templates.

If a user doesn't have any global document templates and has more than one user's templates visible, the user is navigated directly to the User's Templates subsection on Choose Template page.

Tip

You can add templates to your favorites by clicking the star on a template displayed on the Choose Template page.

If the select language option has been enabled from the General Settings tab in SAP CPQ Setup, from the Choose Template page, you can choose the language in which the generated document will be translated. The selected language is applied to the generated document, the subject and email body sent to the customer, and the proposal page that the customer accesses when clicking on proposal link in the Email.

The generated document will, by default always be generated in the language in which the quote was created, except in the following two cases:

If the preferred language is selected during this step, in which case the document will be generated in that language.

If there is no option to choose the language, or there is but it is set to Default, and application parameters from the SAP CPQ setup are enabled to translate quotes using the user's default dictionaries, in which case the document will be translated in the language used by users.

Once you've found the template you want to use to generate a document and selected the language if required, you can select Customize to begin customizing the template for the current quote being created.

Tip

The default display mode for templates is the list view. However, you can switch to the grid view by clicking the option located next to the template search icon at the top of the screen. When you select either view, the setting is remembered whilst you a logged in an applied to all quotes that you are generating documents for. One benefit of the list view is that it allows you to view the template description by hovering over the template name.

Note

On the Choose Template page, if the template supports generating documents in both Microsoft Word and PDF documents, you can select which format to create the document in. For Excel document templates, only Excel documents can be generated, the format type cannot be changed. You cannot select the document format type from the Customize or Download Document and Send Email pages.

Yes
No