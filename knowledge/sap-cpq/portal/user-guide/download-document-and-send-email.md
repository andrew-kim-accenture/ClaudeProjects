# Download Document and Send Email | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/e729e805b33a4fc7ba30cff771b72571.html?locale=en-US&state=PRODUCTION&version=2603
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


	
DocuSign Integration
	
AdobeSign Integration
	
SAP Commerce Cloud Integration
	
Customer Relationship Management Integration
	
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
Download Document and Send Email

After completing the quote and customizing the documents for generation, the next step is to generate the documents and email them to the customer. You can generate the documents from either the Choose Template or Customize page. If you need to go back to a previous step, you can click on the steps on the progress bar at the top of the page to move back to a previous step. Once you move back to the previous step, your field entries will be canceled meaning you can't move forward to the next step using the progress bar.

Downloading and emailing the document:

Select the Generate button form either the Choose Template or Customize page.

On the Download Document and Send Email page, enter the required information in each field. The From, Name, and To fields are mandatory and must be completed. The To field includes fields for the Recipient, CC, and BCC where you can select all customers or business partners defined in the quote for which the document is being generated.

Data in the From and Name fields is initially predefined with from email settings in SAP CPQ setup defined by the Administrators. If these fields are not visible to users that means that Administrators have not allowed visibility.

Note

The send email function is only available if it has been enabled by the administrators during the setup process.

Add any other necessary attachments by clicking the Add Other Attachments button and selecting the files you want to attach to the email.

Check the email body and edit or add your own email content if necessary.

You can enter the email body in plain text or in HTML. If you enter the email body in HTML you can use the HTML button to preview the email body as it will be displayed to the customer with all HTML characters parsed.

To include the proposal link in your email, select the Include Proposal Link checkbox option on the page. This option allows you to add a link that has been pre-configured via the Quote Acceptance Settings. The availability and default status of this checkbox are managed within the SAP CPQ Setup.

Click the Send Mail button to send the email and attachments to the recipient. By default, the email is sent from SAP CPQ. However, you can use the drop down menu on the Send Mail button to send the mail from you default email provider. When you select the default email provider option, the email opens in your default email provider ready to be sent.

Note

When sending emails through the default email client, HTML text option isn't supported and you will have to manually attach all the documents (including generated files) before sending.

Once you've sent the email, the email fields and template fields are cleared to the original template state. If you need to send another mail, you can click on the Generate Another Template button and select a document template to customize and generate documents from.

Tip

Navigating backward through the steps by clicking on progress bar circles at the top of the page is possible from step 3 to step 2 or step 1, whenever available. Moving forward is not permitted.

If administrators enable the option for certain users to choose their language in the Setup, the email body sent to the customer and the proposal page accessed via the proposal link in the email will be translated into the selected language.

The Add Other Attachments button becomes available if enabled during the SAP CPQ Setup process. The Add New Files button allows multiple files to be added simultaneously, and each file added will be accessible the next time the button is clicked, as all files are saved in the Documents tab on the quote.

The Return to Quote option cancels all changes made within the current step and returns to the Quote tab.

The Download button is always available to download the generated documents even in the case that the send email function has been disabled during the setup process.

Available integrations can be seen at the lower right corner. If only one integration is available, users will have a button for that integration. If more than one integration is available, the first integration button is displayed followed by a 3 dot menu containing the other available integrations. For more information about possible integrations, see DocuSign Integration, AdobeSign Integration, SAP Commerce Cloud Integration, and Customer Relationship Management Integration.

Yes
No