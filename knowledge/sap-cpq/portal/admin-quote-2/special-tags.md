# Special Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/3f49a6287d524e59aafb29e5337bfef0.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Document Generation Template
	
Manage Content Documents
	
General Settings
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
Document Generation Tags


	
C Tags
	
Q Tags
	
Miscellaneous Tags
	
Special Tags
	
Custom Table Tags
	
Nested Products Tags
	
Container Tags
	
C2 Loop
	
Conditions
	
Quote Table Tags
	
SAP Subscription Billing Integration Tags
	
SECTIONS Loop
	
Involved Parties Tags
	
Tiered Pricing Tags
	
Usage Based Pricing Tags
	
Example Templates
	
Document Generation Libraries and Differences
	
Custom Quote Tabs
	
Quote Tables
	
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
Special Tags

Special tags begin with ST.

Note

ST tags are only compatible with Word templates and cannot be used in Excel. They are designed to be included in Word and PDF documents. Additionally, these tags are only applicable in Simple output templates and cannot be utilized in Section and Multi-Section templates.

Quote 1.0: supports all <ST>> tags.

Quote 2.0: supports <<ST_LOGO>>, <<ST_USERFILE()>>, <<ST_USERFILE_IMG()>>, <<ST_PTYPE_PRICE()>>, <<ST_PTYPE_LISTPRICE()>>, <<ST_PTYPE_DISCOUNT()>>, <<ST_GROUP_LABEL()>>, <<ST_PTYPE_NETPRICE()>>.

Tag	Description


<<ST_LOGO>>

	

Company logo.




<<ST_USERFILE()>>

	

Used for embedding files in the templates. Add this tag to the part of the template in which you wish the file to be displayed and add its name in the parenthesis. When a user generates a document, they can upload a file and select it from a drop-down list which is named after the value you've entered in the tag parenthesis.

When you place <<ST_USERFILE()>> tag in documents, you also need to insert names for file in parenthesis. This must not be the name of uploaded file but optional name to reference each ST_USERFILE tag. Before the document generation starts, you are asked to upload some files by using the Upload button as shown in the image below.

After you upload files, you can choose any of the uploaded files to be selected for each ST_USERFILE tag. In the image below, the names of the ST tags are 1 and 2 (they were found in your document generation template).

For <<ST_USERFILE()>> next file extensions: DOCX, PDF, GIF, JPG, JPEG, PNG, BMP, TIF, TiFF

If you upload files with the same name as files that are already uploaded, the existing files will be replaced.

Note

If the "Share document customizations" application parameter is enabled, the list of uploaded files for these tags will include files uploaded by all users for a specific Quote. However, if this parameter is disabled, the list of uploaded files will only be accessible to the specific user, as described in the parameter's help documentation (For Quote 1.0 Quote 2.0).

Selected files can be inserted in multiple places of the document using named tags, and each tag can be repeated.

For example the template:

<<ST_USERFILE(1)>>

<<ST_USERFILE(2)>>

<<ST_USERFILE(1)>>

will insert the selected file for the tag named "1", followed by the file for tag named "2", and then the file for tag named "1" again.

Once a tag is named, its type cannot be changed. This rule should not be violated in the template.




<<ST_USERFILE_IMG()>>

	

Images can be uploaded and placed exactly where the tag is located in the template. The name of the file with the extension must be stated in the parenthesis.

When you place <<ST_USERFILE_IMG()>> tag in documents, you also need to insert names for file in parenthesis. This must not be the name of uploaded file but optional name to reference each ST_USERFILE_IMG tag. Before the document generation starts, you are asked to upload some files by using the Upload button as shown in the image below.

After you upload files, you can choose any of the uploaded files to be selected for each ST_USERFILE_IMG tag. In the image below, the names of the ST tags are 1 and 2 (they were found in your document generation template).

For <<ST_USERFILE_IMG()>> next file extensions: GIF, JPG, JPEG, PNG, BMP, TIF, TiFF

If you upload files with the same name as files that are already uploaded, the existing files will be replaced.

If you upload files with the same name as files that are already uploaded, the existing files will be replaced.

Note

If the "Share document ** customizations" application parameter is enabled, the list of uploaded files for these tags will include files uploaded by all users for a specific Quote. However, if this parameter is disabled, the list of uploaded files will only be accessible to the specific user, as described in the parameter's help documentation.

Selected files can be inserted in multiple places of the document using named tags, and each tag can be repeated.

Once a tag is named, its type cannot be changed. This rule should not be violated in the template.




<<ST_GROUP_SUBTOTAL()>>

	

Returns subtotal for the group stated in the parenthesis.




<<ST_GROUP_DESCRIPTION()>>

	

Returns a description for the group stated in the parenthesis.




<<ST_GI()>>

	

Returns value of Global Info ”…”.




<<ST_GI_FILE()>>

	

Returns value of Global Info and inserts it as a file.




<<ST_GI_IMAGE()>>

	

Returns value of Global Info and inserts it as image.




<<ST_PTYPE_PRICE()>>

	

Returns a subtotal for product type ”…”.




<<ST_PTYPE_LISTPRICE()>>

	

Returns a list subtotal for product type ”…”.




<<ST_PTYPE_DISCOUNT()>>

	

Returns a discount percent for product type ”…”.




<<ST_GROUP_LABEL()>>

	

Returns the label of the cart items group with the id you provided. (for example, << ST_GROUP_LABEL (A)>>).




<<ST_PTYPE_NETPRICE()>>

	

Calculates the Netprice for the product type provided by tag (for example, <<ST_PTYPE_NETPRICE(Accessories)>>)

Yes
No