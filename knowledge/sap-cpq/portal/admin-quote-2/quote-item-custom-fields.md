# Quote Item Custom Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/9a95c4945a6e445f83adda2633ebc68a.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Quote 2.0 Calculations


	
Fields and Calculations


	
Quote Item Custom Fields
	
Quote Field Calculations
	
Quote Field Editability
	
Order of Calculations When Adding, Copying, or Deleting Quote Items
	
Order of Calculations when Changing Quote Field Values
	
Rolled-up and Reverse Calculations
	
Calculations for SAP Subscription Billing Integration
	
Quote Custom Sections
	
Quote Layout
	
Quote Layout Permissions
	
Item Types
	
Shipping
	
Effective Date on Quote Item
	
Document Generation
	
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
Quote Item Custom Fields

Custom fields on quote items are able to hold values of different types.

Users are able to edit values of item custom fields in the quote. When administrators add new (or edits existing) custom field, they are able to administer item custom field:

Field

	

Description




Name

	

The name is required. You cannot save two or more custom fields with the same name




Type

	

Once you define the type of the field, it cannot be changed.

Five types are available:

Number (selected by default)

Custom fields of this type can have decimals. They can also have negative values.

Date

Custom fields with Date type will be saved in the same way quote custom fields that are dates are saved (in default format mm/dd/yy).

Currency

Custom fields of this type are calculated and saved in the same way as other prices in SAP CPQ (list price, cost, extended amount etc.). Values will be saved in default currency (dollar) and current market and currency factors will be applied when displaying this value.

Text

All characters are supported. When admin is editing existing field, this field is displayed as read-only.

With the setting Character Limit, you can restrict the number of characters that the user can enter for text fields. By default, no character limit is defined.

Attribute

This type allows you to connect your quote item custom field to an autocomplete attribute (other attribute types are not supported). This way, in the quote, you get the text box where you can select the quote item custom field value from the list of attribute values. If you set an attribute of the type „Auto-complete“ to be connected to your custom field, then in the quote, instead of drop box, you get the autocomplete text box where you can type a value that you want to assign to your quote item custom field. As you start typing, autocomplete offers a list of values that either starts with the typed combination of letters, or contains it. You can also set the value of autocomplete item custom fields via scripting by using the Value Code property, as explained in Autocomplete Attributes.




Order of calculation

	

This field can accept only numbers. Default number is 10. If admin deletes everything and clicks on the field, value 10 is saved for the field.




Calculation Formula

	

You can select an event that specifies the moment when the dedicated calculation formula is triggered. After selecting an event, you can create the relevant formula. This way, it is possible to create certain scripts directly on the custom field, instead of having to use global scripts. You can select the events: Once, when quote is created, On Involved Parties Changed, After changing the value of custom fields, After changing the value of quote custom fields. After selecting one or more of these events, a box displays where you can define formulas. Additionally, if the checkbox After changing the value of custom fields and/or After changing the value of quote custom fields is selected, a new field displays, where you can add custom fields or item custom fields that trigger the event once they are changed. This new feature is available on Fields, Calculations, Layout in the Setup menu.




Display summary in the quote

	

Default value is FALSE.

Note

Displaying a summary on quote item custom fields is allowed only if the following conditions are met:

The quote uses the old quote engine. This feature isn't supported for the new quote engine.

The quote item custom field types supported for displaying a summary are Number and Currency.




Always include in KO context

	

When the checkbox is selected, the field is included in the knockout context and sent to the user's browser. Consequently, you can use the hidden quote item custom field for processing in responsive templates.

For example, a quote item custom field controls whether a product’s cost used for calculating the line item’s list price is editable. The field is hidden from quotes as users do not need to see its value. However, if Always include in KO context is selected, administrators can use the field’s value when defining the responsive templates to control whether the list item’s price is editable or not.)

Note

If a quote item custom field is not visible on the quote layout, and the Always include in KO context is selected, the field value will be visible in the hiddenValues observable array. To retrieve the field value, use getHiddenValue(“QICF_Name”). If a field does not exist, the function returns FALSE. The function does not have to contain the complete name of a quote item custom field. You can enter only a part of the name and the system will find the first field whose name starts with the defined string and it will return its value.




Contains Personally Identifiable Information

	

All information that could potentially be used to identify an individual should be flagged as PII.




Suppress Information Logging

	

You can prevent old and new values from being logged as an additional layer of protection.

Example

Log into SAP CPQ as an administrator and go to Setup. You need to create a new attribute of type Auto-complete, and then select it as an underlying for your custom field. If you need instructions on how to create an Auto-complete attribute, take a look at Autocomplete Attributes.

Once you have created the attribute, you want to create new Quote Item Custom Field by going to Setup  Quotes  Quote Item Custom Fields and clicking on Add New button.

Form for adding a new Quote Item Custom Field is displayed.

Fill out Name field, select Attribute from the Type dropdown list and select the particular attribute (that you have previously created). Click Save.

In order to be able to see your newly created Quote Item Custom Field, you need to do three things:

add it to the appropriate permission group

move it to the list of visible custom fields

add it to the quote editable group

More information on how to add the custom field to the appropriate permission group is available on this link - Quote layout permissions

More information on how to move the custom field to the list of visible fields is available on this link - Visible fields.

Also, you will have to insert a translation for your custom field into SAP CPQ dictionary. You can find more information on how to achieve this by following next link - Creating Custom Dictionary

Now, your Quote Item Custom Field is set up. To see how it works, go to catalog and create a new quote. Your custom field is displayed in the quote as a column and you are able to select a value for it.

Once you define the type of the field, it cannot be modified. (When admin is editing existing field, this field is displayed as read-only)

Order of calculation - This field can accept only numbers. Default number is 10. If admin deletes everything and clicks on the field, value 10 is saved for the field.

Calculation Formula - This field will accept standard SAP CPQ tags.

Display summary in the quote- Default value is FALSE.

Note

Displaying a summary on quote item custom fields is allowed only if the following conditions are met:

The quote uses the old quote engine. This feature isn't supported for the new quote engine.

The quote item custom field types supported for displaying a summary are Number and Currency.

For each item custom field that is defined, new editable groups will be available in the Available Fields section in Cart Fields Administration. Example – when user adds field ‘Delivery Date’, fields ‘Main Item – Delivery Date’ and ‘Child Item – Delivery Date’ will be added. When user deletes particular item custom field, all related editable fields will be removed from here.

If certain field is found among quote editable fields (found in Editable Field group), it will be displayed as every other editable field. When developing this template in xslt, we should make an effort to make it as easier as possible for the admin to show item custom fields in the quote. When user clicks to edit currency item field, it will be displayed as every other price field on the quote. When user edits number field, it will be displayed in the same way other numbers (e.g. Quantity) are displayed on the quote. After user changes value for particular field, SAP CPQ will display icon indication that currently displayed value is different from default value (default value is calculated every time other quote item custom fields are calculated). This icon will be displayed only if default value is not empty (if it is empty and user entered something in the field, no icon will be displayed).

Note

Quote item custom fields are created and evaluated once quote items have been created, so they should not be used in any item calculation, including item discount, multiplier, etc. Additionally, they should not be used in any item information, including information regarding the product or attribute, such as description, part number, price, cost, among others. That said, it is possible to use quote item custom fields in item calculations or item information – but this can be carried out only with a Reconfigure action which can negatively affect system performance. For this reason, it is not recommended.

SAP CPQ will execute calculation only if any of the data used by the quote has been changed. For example, if the entered value of a particular custom field was 100, and has remained 100 following any changes, the calculation will not be executed.

New CTX tags are developed:

CurrentItem:

<*CTX(Quote.CurrentItem.CustomField(“CustomFieldName”) )*>

Total:

<*CTX(Quote.Total.ItemCustomField(“CustomFieldName”).Summary )*>

<*CTX(Quote.Total.ItemCustomField(“CustomFieldName”).Maximum )*>

<*CTX(Quote.Total.ItemCustomField(“CustomFieldName”).Minimum )*>

<*CTX(Quote.Total.ItemCustomField(“CustomFieldName”).Count )*>

Rolled-Up Items:

<*CTX(Quote.CurrentItem.RolledUpItemCustomField(“CustomFieldName”).Summary )*>

<*CTX(Quote.CurrentItem.RolledUpItemCustomField(“CustomFieldName”).Minimum )*>

<*CTX(Quote.CurrentItem.RolledUpItemCustomField(“CustomFieldName”).Maximum )*>

Yes
No