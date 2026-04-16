# Customize Template | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/389457adae344250b355a0faab165e7d.html?locale=en-US&state=PRODUCTION&version=2603
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
Customize Template

Once you have chosen the document template, you need to customize the template for the current quote. To customize the template:

Click the Customize button on the template.

The customize screen displays the template fields and the content files table if applicable to the template. The template fields are the quote custom fields previously defined by the administrator

Tip

You can use the progress bar at the top of the page to move back to the previous steps in the document generation process. If you want to go back to the Choose Template page, click on Choose Template on the progress bar. If you go back to the Choose Template page, all previous changes made during customization will be canceled except the selected language for document translation.

If the select language option has been enabled from the General Settings tab in SAP CPQ Setup, from the Customize page, you can choose the language in which the generated document will be translated. The selected language is applied to the generated document, the subject and email body sent to the customer, and the proposal page that the customer accesses when clicking on proposal link in the Email.

Complete all necessary fields for your quote. Required fields are marked with a star and must contain an entry to be able to generate the document. As soon as you enter data into a field, it is saved automatically regardless of selecting either the Cancel and Return to Quote or Save and Return to Quote button.

Note

Once a value has been entered in a required field, it cannot be deselected or left empty. It can be replaced with another value, but you cannot clear the field.

If Content Files are available for the template, ensure the check box for each content file to be included in the document generation is checked. Content Files are additional content files added to certain templates by administrators.

When the option Also Include Quote Items in Formula Evaluation is enabled for certain Content files in the SAP CPQ Setup, a list of files will be displayed. These file names are dynamically generated using formulas that incorporate details from quote items for all items on that quote. In this scenario, additional toggles will appear above the table of file names:

Don't include same file more than once: When enabled, this toggle will hide files with duplicate names from the list. The default state of this toggle is predefined in the SAP CPQ Setup.

Don't include same file more than once: This toggle is only visible during the formula evaluation for Content files if multiple files with the same name are generated. By default, it is disabled.

Note

The content files section is not accessible for all multi-section templates, as content can only be specified at the section level. Additionally, simple output templates with active Excel files do not support the inclusion of additional content in Excel templates.

If the template includes Additional Documents, the generated document will be provided in a ZIP format. This ZIP file will contain both the main generated document and all the additional documents specified.

Multi-section documents

If the template has been created to allow users to add sections, you can select the Add Section button to add a new section to document. When you click the Add Section button, enter the name for the new section, add the file for the new section, and click Add Section. The new section will appear at the end list of sections on the Customize page and can later be ranked if the ranking option has been enable by the administrator during the setup process.

Note

Section files can only be added in the following formats: docx, pdf, png, jpg, jpeg and tiff.

Select which sections you want to include in the multi-section document by checking or unchecking the boxes next to each available section.

Click on the Rank button to change the order of sections in the multi-section document.

Depending on the section permissions enabled by the administrator during the setup process, you can:

Download Sections

This option allows you to download the Section template file that includes document generation tags, rather than downloading the Section document as a separate, completed file.

Preview each section separately

When you click the Download button within the preview screen, the document will be downloaded exactly as it appears in the preview, including the pre-generated watermark labeled Preview.

Replace a section with the option to restore. Replacing the Section (with the option to restore to default) involves the following considerations:

Supported file formats for replacing section files include: docx, pdf, bmp, jpg, jpeg, png, and tiff. During the Preview and Generate actions, files other than docx will be embedded within a docx file and treated as objects within that Word document.

If the admin disables the User Can Replace It option in the setup, any replaced section in a specific template will be automatically removed, and the default section defined in the setup will be used instead. If the admin re-enables this option, the user will regain access to their custom replaced section.

When replacing a section within a multi-section template, the preview will not display the updated content until the changes are saved during the customize step.

Sections added by administrators in the SAP CPQ setup will be last in the order of sections and thus displayed as last to the user, regardless of the custom order of all existing sections redefined by the user during the document generation process for a specific quote. As with user created custom sections, administrator added sections can also be reordered if this option is enabled.

Once you've completed customizing the template for the current quote, you can navigate to the Download Document and Send Email page using the Generate button. Alternatively, you select Save and Return to Quote to save all information added during customization and return to the quote page to ensure all quote information is correct and complete. You can also select Cancel and Return to Quote, this action will undo all modifications made during this step and revert back to the Quote tab. It will also reset any previously chosen language for document translation.

Yes
No