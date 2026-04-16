# Q Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/37fa369968d748cc848b1785c65cc290.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Example Templates
	
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
Q Tags

Q tags retrieve quote data (currency, user and owner data, etc.).

The following tables display Q tags that you can add anywhere in the document template to retrieve data from quotes. Q tags mainly retrieve general quote information (currency, user and owner data, etc.).

General Tags
Tag	Description


<<Q_QUOTE(TOTALNET)>>

	

Retrieves NRC quote total net price. Use the CTX tag to retrieve the MRC total net price: <<Q_TAG(<*CTX(Quote.Total.NetPrice.Display)*>)>>.




<<Q_QUOTE(BASE_TOTALNET)>>

	

NRC total net price without the shipping amount.




<<Q_QUOTE(BASE_TOTAL)>>

	

NRC total net price including the shipping amount.




<<Q_QUOTE(FREIGHT_METHOD)>>

	

The name of the shipping method.




<<Q_QUOTE(FREIGHT)>>

	

The shipping amount.




<<Q_QUOTE(COMMENT)>>

	

Quote comment.




<<Q_QUOTE(VALID_UNTIL)>>

	

Retrieves the date 30 days from the current date. To retrieve a different date, specify it in the tag (for example, <<Q_QUOTE(VALID_UNTIL+45)>> retrieves a date 45 days from the current day). For different date formats, use a CTX tag (for example, <*CTX(Date.AddDays(20).Format(yyyy-MM-dd) )*>).


Quote User Tags

Tags

	

Description




<<Q_USER(COMPANY)>>

	

The name of the user's company.




<<Q_USER(USERNAME)>>

	

The username of the user.




<<Q_USER(NAME)>>

	

User's name.




<<Q_USER(TYPE)>>

	

User's type.




<<Q_USER(EMAIL)>>

	

User's email address.




<<Q_USER(ADDRESS1)>>

	

User's first address.




<<Q_USER(ADDRESS2)>>

	

User's second address.




<<Q_USER(CITY)>>

	

User's city.




<<Q_USER(STATE)>>

	

User's state.




<<Q_USER(ZIPCODE)>>

	

User's zipcode.




<<Q_USER(COUNTRY)>>

	

User's country/region.




<<Q_USER(PHONE)>>

	

User's phone number.




<<Q_USER(FAX)>>

	

User's fax number.

Other Tags

In these tags, we'll use an example custom field Company Policy.

Tag	Example	Description


<<Q_CUSTOM_FIELD()>>

	

<<Q_CUSTOM_FIELD(Company Policy)>>

	

Retrieves the value of the custom field. This tag can be replaced with <<Q_QP()>> which has the same behavior.




<<Q_CUSTOM_FIELD_FILE()>>

	

<<Q_CUSTOM_FIELD_FILE(Company Policy)>>

	

Retrieves the document from the custom field and inserts it into the generated document. First, you need to upload the document in Manage Content Documents and enter the file's name with the extension in the Company Policy field. The format of the template and the file that you wish to insert must be the same (if you're creating a .doc template, the file in the custom field must have the .doc extension). This tag can be replaced with <<Q_QP_FILE()>> which has the same behavior.




<<Q_CUSTOM_FIELD_IMAGE()>>

	

<<Q_CUSTOM_FIELD_IMAGE(CustomFieldName)>>

	

Retrieves the image from the custom field and inserts it into the generated document. First, you need to upload the document in Manage Content Documents and enter the file's name with the extension in the Company Policy field. All image formats stated in the Manage Content Documents page when adding a new image are supported. This tag can be replaced with <<Q_QP_IMAGE()>> which has the same behavior.




<<Q_FILE()>>

	

<<Q_FILE(Policies and Conditions.docx)>>

	

Retrieves a document from Manage Content Documents and inserts it into the generated document. The template and the document must be in the same format.




<<Q_FILE_STATIC()>>

	

<<Q_FILE_STATIC(New Policies and Conditions.docx)>>

	

Retrieves a document from Manage Content Documents and inserts it into the generated document. This tag should be used only when the document that you want to insert doesn't have any data that is dynamically retrieved vi tags. In that case, when there's dynamic data in the file, use the <<Q_FILE()>> tag.




<<Q_TAG()>>

	

<<Q_TAG(<*CTX(Quote.Total.Amount.Display)*>)>>

	

This tag should contain a CTX tag that retrieves a value from SAP CPQ into the generated document. You can use the <<Q_TAG()>> to replace any other specific tag. Also, CTX tags should be used when there are no document generation tags and when the condition for retrieving data is too complex and no existing tags can retrieve it.




<<Q_TAG_FILE()>>

	

<<Q_TAG_FILE(<*CTX(Quote.CustomField(Company Policy))*>.jpg>>

	

Retrieves images of type: GIF,JPG,WMF,BMP, word document of type: DOC and excel document of type: XLS that are already stored in Manage Content Documents. In the example, the tag retrieves a .jpg image stored in the custom field Company Policy.

Note

The Q_TAG_FILE tag is only supported in Word document templates, not in Excel templates.



The following Q tags are considered to be obsolete and can be replaced with CTX tags.

Tag	Description


<<Q_QUOTE(NUMBER)>>

	

Quote number.




<<Q_QUOTE(TOTAL)>>

	

Retrieves NRC quote total amount. Use the CTX tags to retrieve the MRC total amount <<Q_TAG(<*CTX(Quote.Total.MrcAmount.Display)*>)>>.




<<Q_QUOTE(DATE_CREATED)>>

	

Retrieves the date when the quote was created, displayed in the user's date format. For other formatting, use the CTX tags: <<Q_TAG(<*CTX(Quote.DateCreated.Format(dd.MM.yy) )*>)>> and <<Q_TAG(<*CTX(Quote.DateCreated.Format(dd,MMMM yyyy))*>)>>.




<<Q_QUOTE(DATE_MODIFIED)>>

	

Retrieves the date when the quote was last modified, displayed in the user's date format. For other formatting, use the CTX tags: <<Q_TAG(<*CTX(Quote.DateModified.Format(dd.MM.yy) )*>)>> and <<Q_TAG(<*CTX(Quote.DateModified.Format(dd,MMMM yyyy))*>)>>.




<<Q_QUOTE(CURRENCY)>>

	

The name of the currency.




<<Q_QUOTE(CURRENCY_SIGN)>>

	

Currency sign.




<<Q_QUOTE(REVISION)>>

	

Quote revision number.




<<Q_QUOTE(USER_ID)>>

	

ID of the current user.




<<Q_QUOTE(OWNER_ID)>>

	

ID of the quote owner.




<<Q_QUOTE(CART_ID)>>

	

ID of the current quote.




<<Q_QUOTE(STATUS)>>

	

The current status of the quote.


Company Tags
Tag	Description


<<Q_COMP(NAME)>>

	

Company name.




<<Q_COMP(EMAIL)>>

	

Company's email address.




<<Q_COMP(ADDRESS1)>>

	

Company's first address.




<<Q_COMP(ADDRESS2)>>

	

Company's second address.




<<Q_COMP(CITY)>>

	

Company's city.




<<Q_COMP(STATE)>>

	

Company's state.




<<Q_COMP(ZIPCODE)>>

	

Company's zipcode.




<<Q_COMP(COUNTRY)>>

	

Company's country/region.




<<Q_COMP(PHONE)>>

	

Company's phone number.




<<Q_COMP(FAX)>>

	

Company's fax number.

Quote Owner Tags

Tags

	

Description




<<Q_OWNER(COMPANY)>>

	

The name of the owner's company.




<<Q_OWNER(USERNAME)>>

	

The username of the owner.




<<Q_OWNER(NAME)>>

	

Owner's name.




<<Q_OWNER(TYPE)>>

	

Owner type.




<<Q_OWNER(EMAIL)>>

	

Owner's email address.




<<Q_OWNER(ADDRESS1)>>

	

Owner's first address.




<<Q_OWNER(ADDRESS2)>>

	

Owner's second address.




<<Q_OWNER(CITY)>>

	

Owner's city.




<<Q_OWNER(STATE)>>

	

Owner's state.




<<Q_OWNER(ZIPCODE)>>

	

Owner's zipcode.




<<Q_OWNER(COUNTRY)>>

	

Owner's country/region.




<<Q_OWNER(PHONE)>>

	

Owner's phone number.

Bill-to Ship-to and End-User Tags

Tags

	

Description




Bill To Tag

	

Ship To Tag

	

End-User Tag




<<Q_BILLTO(COMPANY)>>

	

<<Q_SHIPTO(COMPANY)>>

	

<<Q_ENDUSER(COMPANY)>>

	

User's company.




<<Q_BILLTO(FIRSTNAME)>>

	

<<Q_SHIPTO(FIRSTNAME)>>

	

<<Q_ENDUSER(FIRSTNAME)>>

	

User's first name.




<<Q_BILLTO(LASTNAME)>>

	

<<Q_SHIPTO(LASTNAME)>>

	

<<Q_ENDUSER(LASTNAME)>>

	

User's last name.




<<Q_BILLTO(EMAIL)>>

	

<<Q_SHIPTO(EMAIL)>>

	

<<Q_ENDUSER(EMAIL)>>

	

User's email address.




<<Q_BILLTO(ADDRESS1)>>

	

<<Q_SHIPTO(ADDRESS1)>>

	

<<Q_ENDUSER(ADDRESS1)>>

	

User's first address.




<<Q_BILLTO(ADDRESS2)>>

	

<<Q_SHIPTO(ADDRESS2)>>

	

<<Q_ENDUSER(ADDRESS2)>>

	

User's second address.




<<Q_BILLTO(CITY)>>

	

<<Q_SHIPTO(CITY)>>

	

<<Q_ENDUSER(CITY)>>

	

User's city.




<<Q_BILLTO(STATE)>>

	

<<Q_SHIPTO(STATE)>>

	

<<Q_ENDUSER(STATE)>>

	

User's state.




<<Q_BILLTO(PROVINCE)>>

	

<<Q_SHIPTO(PROVINCE)>>

	

<<Q_ENDUSER(PROVINCE)>>

	

User's province.




<<Q_BILLTO(ZIPCODE)>>

	

<<Q_SHIPTO(ZIPCODE)>>

	

<<Q_ENDUSER(ZIPCODE)>>

	

User's zipcode.




<<Q_BILLTO(COUNTRY)>>

	

<<Q_SHIPTO(COUNTRY)>>

	

<<Q_ENDUSER(COUNTRY)>>

	

User's country/region.




<<Q_BILLTO(PHONE)>>

	

<<Q_SHIPTO(PHONE)>>

	

<<Q_ENDUSER(PHONE)>>

	

User's phone number.




<<Q_BILLTO(FAX)>>

	

<<Q_SHIPTO(FAX)>>

	

<<Q_ENDUSER(FAX)>>

	

User's fax number.




<<Q_BILLTO(CUSTOMERNUMBER)>>

	

not available

	

<<Q_ENDUSER(CUSTOMERNUMBER)>>

	

User's customer number.

You can use this tag to retrieve

other bill-to customer custom fields:

<*CTX(Quote.Customer(BillTo).CustomField(FieldName))*>


Note

Every tag that inserts files supports these formats: DOCX, PDF, and images (BMP, EMF, GIF, ICO, JPG, JPEG, PCX, PNG, TIF, TIFF, WMF).

Yes
No