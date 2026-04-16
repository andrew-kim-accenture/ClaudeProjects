# Customer Custom Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/e46af790693d45ad9111d35d61dcc41c.html#naming-custom-fields
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration


	
Customer Field Permissions
	
Customer Actions
	
Customer Custom Fields
	
Customer Role Defaults
	
Local and Global Customers
	
Local Customer Visibility
	
Global Customer Visibility
	
Global Customers
	
Postal Code Lookup
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Customer Custom Fields

All SAP CPQ Customer address fields (Bill To, Ship To, End User) contain standard fields, which hold customer information. First Name, Last Name, Address, and Company are some of these standard customer fields.

Note

Customers are available only in Quote 1.0. In Quote 2.0, organizational and transactional relationships are recorded via involved parties.

If necessary, you can add one or more custom fields to Customer Roles. You can do that in Setup  Customers/Customer Roles  Customer Custom Fields. This page shows custom fields defined for all customer roles.

On the Customer Custom Fields list page, you can edit and delete existing fields, and add new ones by clicking Add New.

To add a new custom field, you need to enter Name, Label, and select a customer Role Type to which this field is added. It's also possible to define the field's rank, but it's not required. Also, you can specify if old and new values of a customer custom field shouldn't be logged in the Audit Trail by enabling the Suppress Information Logging toggle switch. Note that the field Name is used for uniquely identifying customer's custom fields - therefore, users can't add two custom fields with the same name and role type. By selecting multiple Role Types on this form and clicking Save, you can add multiple custom fields with exactly the same data - one custom field is added for each customer role.

Customer custom fields are always of the free input type - they can't be changed to dropdown, checkbox, or something else.

Note that you can't change the Role Type on already created fields. Otherwise, the form is no different from the Add New custom field form.

Custom Field Names

As mentioned before, custom fields have a Name field, which is required, and is used along with Role Type to uniquely identify customer's custom fields. When users copy customer data from one role to another, custom fields are copied from one role to another along with standard fields. Custom field names are used for identifying which field is to be copied from the source customer role to which field on destination customer role. Fields that are contained in source customer role and are missing from destination customer role aren't copied.

Custom Fields and Searching for Customers

As it’s already known, only Bill To customers are used as customer repository, which is being used when searching for customers. While for standard customer fields this has little impact, it affects custom customer fields. When searching for a customer to add them to the Ship To customer role, finding the customer and adding it to Ship To role, the destination role only contains custom field contents that are defined in Ship To role, and are also defined in Bill To role, with same custom field name. Users can't create or fill an End User customer, and load it as Ship To customer and expect that it gets custom fields populated. It only works for Bill To customer as source.

Custom Fields and Global Customers

In V8 SAP CPQ version, users can't enter custom fields on global customers.

Custom Fields and Managing Customers from User Page

Customers can be managed from User Page as usual. However, customer field permissions apply as if the user is editing a Bill To customer role in the Default quote status. This applies for standard customer fields, their permissions and for custom customer fields.

Custom Customer Fields and Their Permissions

Standard Customer Field and Custom Customer Field permissions are being defined on Customer Field Permissions page.

Naming Custom Fields

There’s a list of standard field names in the SAP CPQ that appear by default. It is important that you refer to this list when naming custom fields because no custom field should get a name from this list. In other words, there must be no duplicates. The best way to name the Customer Custom Fields is to add “custom” in front of the custom field’s name.

Look at the list of standard fields provided in the following table:

CustomerId

	

City

	

BusinessPhone

	

CRMAccountId




FirstName

	

StateName

	

BusinessFax

	

CRMContactId




LastName

	

StateAbbrev

	

UserId

	

ShopCartId




Email

	

Province

	

DirtyFlag

	

ShipId




Title

	

CountryName

	

Active

	

CustomerType




Company

	

CountryAbbrev

	

CustomerCode

	

OwnerName




Address1

	

Country

	

TerritoryId

	

PrimaryIndustry




Address2

	

ZipCode

	

TerritoryName

	

CustomerPassword

On this page
Custom Field Names
Custom Fields and Searching for Customers
Custom Fields and Global Customers
Custom Fields and Managing Customers from User Page
Custom Customer Fields and Their Permissions
Naming Custom Fields
Yes
No