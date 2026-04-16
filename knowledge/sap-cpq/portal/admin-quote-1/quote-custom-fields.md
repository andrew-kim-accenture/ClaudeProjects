# Quote Custom Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/1c74233feae74d51af235e39b57d868a.html#date-quote-custom-fields-in-scripting
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
Quote Custom Fields

The Custom Fields administration allows creating custom fields in the shopping cart for users to include additional information, such as terms of payment or other specific information to your company.

The fields can also be useful in helping to define what a generated document includes. Field selections can also affect the configuration of the products. Each custom field is assigned to a tab defined as a quote tab and gets permissions set to define how the field will be used based on the user and the status of the quote.

Custom Fields administration can be found under the Quotes admin menu. Here user can copy, delete, and edit existing custom fields. Clicking Add New allows adding a new custom field.

Creating a new custom field comes in two steps. First step is to define the field, including the label, the type of field it is, what tab it is displayed in and the order, and the label. Once defined, user can then assign permission to the field. The permissions determine how the field is displayed to the user, such as hidden, required, editable, and read- only.

Note

Quote custom fields have a limit of 2,000 characters per field.

The maximum number of quote custom fields that can be created is 1,024.

Definition

Field

	

Description




Name

	

Custom fields can be created with any name, or label. This label can then be different for other users based on user group.




Type

	

The determines how this custom field is used:

Free Form

Field appears as a text box in which users input a value.

With the setting Character limit, you can restrict the number of characters that the user can enter up to 2,000 characters.

Attribute

This type allows you to connect your custom field to an attribute. This way, in the quote, you get the text box where you can select custom field value from the list of attribute values.

If you set an attribute of type „Auto-complete“ to be connected to your custom field, then in the quote, instead of drop box, you get the autocomplete text box where you can type a value that you want to assign to your custom field. As you start typing, autocomplete offers a list of values that either starts with the typed combination of letters, or contains it.

You can also set the value of autocomplete custom fields via scripting by using the Value Code property, as explained in Autocomplete Attributes.

Date

Field appears as a text box in which the user enters a date. The date the user enters must match the date format the user has set on the User’s Page. Next to this field, the user is able to click an icon to display a calendar where the date can be chosen.

You can’t change the Date field to any other type, nor can you switch other types to Date. You can switch fields to and from Free Form, Attribute and Long Text.

Long Text

Field appears as a large text box in which the user can enter multiple lines of text. No restrictions on what the user can enter.




Tab

	

Select one or multiple quote tabs under which this field will be displayed. The only tabs available are those tabs that have been defined as a quote tab in the Quote Tabs administrative section. It’s important to keep in mind that the tabs that are used for the cart, customer info, and attachments are available selections. This means that user can place custom field not only in custom tabs, but also within the cart, customer info, or attachments.




Order within Tab

	

Determines where this field will be displayed in relation to the other fields on that tab. The lower ranked fields will be displayed on the top, while the higher ranked will be displayed after.




Calculation Type

(Quote 1.0 only)

	

If “Once, when quote is created” or “Every time quote is modified” Calculation type is selected, a new Formula field is shown. The evaluated formula value is assigned to the content of the custom field. This way a custom field value can be defaulted to some value. Some of the tags aren’t supported for “Once, when quote is created” calculation type option (<*CTX(Quote.QuoteNumber)*>,<*GI(CART_OWNER_ID)*>,…).

When application parameter “Enable quote custom field calculation ranking” is true, the new field is added in custom fields administration “Calculation rank”. This field is visible only when “Calculation type” is not “None”. For example, admin can add three dependent custom fields: Custom field “A” ,Custom field “B” ,Custom field “C” . Custom fileds B i C have calculation type 'Every time quote is modified'. Custom field B has formula <*EVAL(<*CTX(Quote.CustomField(A))*> * 2)*>, custom field C: <*EVAL(<*CTX(Quote.CustomField(B))*> * 2)*>. Calculation rank is set to 1 for B and to 2 for C. When the user enter “5” in the custom field “A” and click on “Calculate”, the value for custom field “B” should be 10 and for custom field “C” should be 20.




Calculations are run

(Quote 2.0 only)

	

You can select an event that specifies the moment when the dedicated calculation formula is triggered. After selecting an event, you can create the relevant formula. This way, it is possible to create certain scripts directly on the custom field, instead of having to use global scripts. You can select the events: Once, when quote is created, ,, On Involved Parties Changed, After adding products to Quote, After copying products in Quote, After updating products in Quote, After deleting products from Quote, and After changing the value of custom fields. After selecting one or more of these events, a box displays where you can define formulas. Additionally, if the After changing the value of custom fields checkbox is selected, a new field displays, where you can add custom fields which trigger the event once they are changed.




Save quote on change

	

If enabled, the quote is automatically saved after the custom field value is changed. The field is visible if the application parameter Automatically save quote on custom field change is set to TRUE in General  Application parameters  Shopping cart and Quotes.




Transfer to Items

	

Determines whether or not this field’s value will affect the product’s configuration. This is done when this field is connected to an attribute. That same attribute needs to be added to the product where the product definition is using the attribute. Once the field is selected in the cart and saved, the value is passed to the product’s configuration and the same attribute value is selected in the product. Any rules, calculations, etc used around this attribute will be affected.

For example, say we have a custom field connected to an attribute called Number of Users, which contains the values 1 through 10. In addition, we’ve also added this same attribute to the product’s configuration to control the pricing of the software we are configuring. Once a user has configured the software and added it to the cart, they can select a value from the custom field Number of Users drop down list. Once it is saved, that value is passed back to the configuration where the pricing is updated based on the number of users selected. - This determines whether this field will be displayed along with the order on the confirmation page after clicking Place Order. If selected, then the custom field will also be displayed in the email that goes to the ordering parent or system administrator depending on how it is configured.

Note that value from custom fields that are marked as 'transfer to item' will NOT be transferred when product is in catalog and while product is configurated. After the product is added to the quote, all custom fields that are marked as 'transfer to item' will pass their values. This may affect a final price of the particular product, if the price depends on the attribute that is used in custom field.

Note

When using the Transfer-to-item functionality it will cause Quote Reconfigure – not only when the custom field value is changed, but also when the Calculate action is triggered (on item discount change, list price change or any other field value change).




Show on place order confirmation page

	 


Default Label

	

User can give the field a different label from the required name of the field. If left empty then the system will use the name of the field. This is just the default label. The label can be changed based on the user group.

 clicking this icon displays a list of all the user groups in the system where user can define what the label will be for each group. This is most beneficial when quotes are being shared among user types. Users that open quotes from another user group will see their label with the other user’s value.

For instance, if we have a custom field called quote name, we may want the managers to see the label ‘Project Name’ but the sales rep to see ‘Quote Name’. When a sales rep user creates a quote they’ll enter a value for Quote Name. Then when the manager opens the same quote, they’ll see the same value the sales rep enter but under the label Project Name.




Contains Personally Identifiable Information

	

All information that could potentially be used to identify an individual should be flagged as PII




Suppress Information Logging

	

You can prevent old and new values from being logged in the Audit Trail as an additional layer of protection.

Note

Quote custom field Customer's Language, which is the system type of custom field, is now no longer available in the list of fields for selecting Related Fields within the document generation process, neither in Setup nor in the User part of document generation settings. Customers have the standard option for choosing the language for translation in document templates.

Permissions
The Permissions tab defines how the custom field will be displayed to the user based on the user group and status of the quote. There are four options that you can define for the field:

Hidden - This is used for the statuses or user groups that you would not like the field displayed for. The field is not displayed at all to the user. If the field is required the user will not be prompted to enter a value for the field.

Read-Only - This is generally used for statuses after the quote has been completed, such as Order Placed or Received Order. The field is not editable. Whatever value had been entered for the field will be displayed as uneditable text. Even when a custom field is read-only for a user type, a script will change the value when triggered.

Editable - This is generally used for the initial statuses in which the quote is being created, such as Open. The field is displayed in whatever format it was defined in.

Required - This is used when user would like the user to define this field before they are allowed to Place Order on the quote. Field marked as required are editable and are displayed with a red asterisk. If they try to Place Order on the quote or save the custom fields on that tab, then they will be prompted to define the field.

One of these options can be defined for each cell in the matrix of user groups and statuses. To set an option to a cell click the cell to display a pop-up where the option can be selected. There are six different types of cells in the matrix that can be defined:

All Permissions - Sets the same option for all the cells in the matrix. Click the upper left corner of the matrix to define.

All Statuses for One User Group - You can set all the statuses for one user group by clicking the user group’s name on the left side of the matrix.

All User Groups for One Order Status - You can set all the user groups for one order status by clicking the status on the top of the matrix.

Individual Cell Intersection - You can set a cell intersection between a status and a user group. For instance the Sales Rep group should have the custom field Read-Only when in the Order Placed status.

Default (For New User Groups) - Set how the custom field will be displayed to the users added to new user groups that haven’t been set in this matrix yet.

Default (For New Order Status) - Set how the custom field will be displayed in a new statuses that haven’t been set in this matrix yet.

The default cells make administration easier so that when you create a new user group or status you do not need to go through and define all the custom field permissions again.
Note

Selecting an option for a cell that includes all statuses or all user groups might take a little bit of time to set depending on the number of statuses and user groups created in the system. Large number of groups or statuses means there are a lot of cells to set, so there might be a slight delay in setting them all.

When finished defining the custom field and its permissions, click Save at the bottom of the page. You are not redirected to another page in case you would like to continue to define the field. For instance if you’ve just defined how the field will be used and now you’d like to define the permissions.
Date Quote Custom Fields in Scripting

In Quote 1.0, quote custom fields are stored as strings in the database. If you are setting the date in a quote custom field in Quote 1.0 through scripting, you’ll first need to convert the date to string, using the ToUserFormat function. Check the following example:



from datetime import datetime
crmEstCloseDate = datetime.strptime("26/03/2024", '%d/%m/%Y').date()
crmEstCloseDate1 = DateTime.Parse(str(crmEstCloseDate))
context.Quote.GetCustomField("Date Tester").Value = crmEstCloseDate1
On this page
Definition
Permissions
Date Quote Custom Fields in Scripting
Yes
No