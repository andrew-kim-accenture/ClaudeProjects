# Business Partner Custom Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/b38db7f879aa4b6aa89a205c4b3ca863.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Business Partners


	
What are Business Partners and Partner Functions?
	
Involved Parties and Customers – Differences
	
Create Business Partner in SAP CPQ


	
Business Partners General Fields
	
Business Partner Custom Fields
	
Business Partner Sales Area Tab
	
Business Partner Permissions
	
Managing Relationships Between Business Partners
	
Create Business Partner in External Systems and Import into SAP CPQ
	
Partner Functions
	
Create Partner Functions in External Systems and Import into SAP CPQ
	
Synchronize Business Partners and Partner Functions
	
Involved Parties
	
Bulk Business Partner Import/Export
	
Business Partner Relationship Category
	
Bulk Delete Business Partners
	
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
Business Partner Custom Fields

You can create custom fields on business partners, which display on involved parties on the quote and in business partner master data.

Business partners can be used for a variety of custom, business-specific purposes. An example of such a purpose is sorting your customers into categories such as Gold, Platinum, or VIP.

Once it is defined in the Setup, a business partner custom field is automatically present on all business partners, involved parties in the Involved Parties tab on the quote, and in business partner master data. However, you can manage the values for that field as they pertain to specific business partners, as well as the permissions and visibility rules for that field.

You can reference business partner custom fields using CTX tags, and read and update them via IronPython scripting.

Create Business Partner Custom Field

Go to Setup   Business Partners  Business Partner Fields second tab.

Click Add New Custom Field.

The definition page opens.

In the General tab, fill out the required fields and make the necessary selections:

Name (required) – the unique name of the custom field.

Label (required) – the label displayed for that custom field on the quote. Translations are created in dictionaries for labels, and not names.

Suppress Information Logging – by enabling this option, you prevent the logging of old and new values of this custom field.

Type – select a type for the business partner custom field:

Type

	

Description




Text

	

Text up to 1000 characters can be entered in the field.




Number

	

Numeric values can be entered in the field.




Date

	

The field contains dates and provides a date selection calendar.




Attribute

	

If Attribute is selected, a new field appears where you can select an attribute from a list. Only attributes with the type User Selection can be selected for business partner custom fields.




Boolean

	

You can choose between the values Yes and No using a toggle switch.

In the Permissions tab, manage the permissions for the business partner custom field:

If the option Same permission for all permission groups is enabled, the same permission level for this field applies for all permission groups. In that case, you can select a Field permission: Hidden, Read-Only, or Editable. When you first create a business partner custom field, the toggle switch is enabled, and the field permission Hidden is selected by default.

If the option Same permission for all permission groups is disabled, you can assign the permissions Read-Only or Editable to specific permission groups.

Click Save.

The business partner custom field is now created. It will appear on all business partners in the Setup and on involved parties on the quote.

Enter Value for Business Partner Custom Field

Go to Setup  Business Partners  Business Partners.

Click Add New Business Partner or, alternatively, edit an existing business partner.

In business partner definition, open the tab Custom Fields.

Every defined business partner custom field displays in this tab.

Enter or select a value for a business partner custom field.

Click Save.

After you save your changes, whenever this business partner is used on the quote as part of an involved party, the business partner custom field appears with the value you specified in the Setup.

Note

The value you enter for a business partner custom field in the Setup displays on the quote by default whenever that field appears. However, if a user has the permission to edit a business partner custom field, they can overwrite that value on the quote or enter a new value. The values which the user enters directly on the quote apply only to the quote in question.

Note

You can manage business partner custom fields via the API. Learn more in the API documentation.

On this page
Create Business Partner Custom Field
Enter Value for Business Partner Custom Field
Yes
No