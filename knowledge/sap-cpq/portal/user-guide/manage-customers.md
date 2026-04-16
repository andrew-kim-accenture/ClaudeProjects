# Manage Customers | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/5c4e3d855fa34224ad01625ddc176258.html?locale=en-US&state=PRODUCTION&version=2603
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
Manage Customers

On the Manage Customers page of the User Menu, you can manage local customers associated with your specific user. You can create new customers, edit existing ones, as well as import or export customers.

Note

Customers are available only in Quote 1.0. In Quote 2.0, organizational and transactional relationships are recorded via involved parties.

Manage Customers displays a list of existing local customers specific to your user.

Add New or Edit Existing Local Customers

Follow this procedure to add new local customers or edit existing ones.

Click Add New to create a new local customer.

Alternatively, click …  Edit next to an existing customer from the list.

The customer definition tab opens, containing the fields listed in the provided table.

Define values for the fields in the customer definition tab, as explained in the table.

Customer Definition Field

	

Description




First Name

	

Customer’s first name.




Last Name

	

Customer’s last name.




Customer ID

	

Value received from an external system when SAP CPQ is integrated with it. The customer code (customer ID) from the external system is saved here.




Company

	

The company to which the customer belongs. You can enter a company already defined in SAP CPQ or enter a new company.




Address 1

	

Customer’s primary address.




Address 2

	

Customer’s secondary address.




City

	

The city where the customer is based.




State/Province

	

State/Province as defined in SAP CPQ Setup displayed in a dropdown menu.




Province

	

Customer’s province.




ZIP / Postal Code

	

Customer’s ZIP code or postal code.




Country/Region

	

Country/Region defined in SAP CPQ Setup displayed in a dropdown menu.




Territory

	

Territory defined in SAP CPQ Setup displa dropdown menu.




Phone

	

Customer’s phone number.




Fax

	

Customer’s fax number.




Email

	

Customer’s email, which will be used for receiving emails sent via SAP CPQ.




Account Id

	

Contains a value received from an external system when SAP CPQ is integrated with it. The ID of the account used to create a customer in SAP CPQ is saved here.




CRM Contact Id

	

Contains a value received from an external system when SAP CPQ is integrated with it. The ID of the contact used to create a customer in SAP CPQ is saved here.

The table lists standard customer fields, available to all users by default. Additionally, all customer custom fields available to the specific user will also be available in the customer definition page.

Click Save Customer to save your changes.

The customer is now created or updated.

Import/Export Local Customers
You can import and update your local customers via a Microsoft Excel file by clicking Import/Export Customers. Download a sample template to populate with your own data or export a Microsoft Excel file with all of your local customers. You will need to specify an identifier to be used to determine if an existing customer should be updated or a new customer should be added. The column with the selected identifier is used to match existing local customers and those in the Microsoft Excel file. If the value of the selected identifier in the Microsoft Excel file matches the value in SAP CPQ, the existing local customer is updated. If the values don't match, a new local customer is created. You can choose your identifier from the following values:

Customer Code

CRM Account ID

CRM Contact ID

CRM Account ID and CRM Contact ID

CPQ Customer ID

None (if this option is selected, the system will create new local customers from every entry in the Microsoft Excel file)

Note

A maximum of 2500 customers can be imported in one file.

Related Information
Local and Global Customers
On this page
Add New or Edit Existing Local Customers
Import/Export Local Customers
Related Information
Yes
No