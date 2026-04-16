# Customer Information | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/9f09e3561f0347f6b10434a20a5948de.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Quote and Item Actions
	
Pricing Details on Items
	
Sales Units of Measure
	
Discounts and Multipliers
	
Other Discounts
	
Quote Markets
	
Adding Products to Quote
	
Documents
	
Customer Information
	
MRC Quote Calculations
	
Quote Tabs and Fields
	
Alternative and Variant Configurations
	
Application Parameter for Preventing Users to Add Simple Products to a Quote
	
Adding Products from Quote (Quick Add)
	
Parallel Work on Quote 1.0 (User Side)
	
Multi-User Quote Collaboration
	
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
Customer Information

Customer information can be entered in the Customer Info tab. Depending on how your company has it set up, there are three roles in which customer information can be entered: Bill To, Ship To, and End Customer. Information is entered in the same manner for all three roles.

Customer information can be entered by adding a new customer or loading an existing customer from a CRM application or the local system. In this tab, you can:

Edit the customer currently added to the role.

Add a new customer.

Remove the current customer from the role.

Select an existing customer that has already been added to the local system.

Search a CRM application for a customer (See CRM Integration Use for more information).

In addition to these operations, local customers can also be searched by typing in the fields available for the role. While typing in the First Name, Last Name, Customer ID, or Company fields, a search list is generated based on what has already been typed. You can choose a customer easily by clicking the customer you would like to use. A customer can also be selected with arrow keys on the keyboard and pressing the Tab or Enter key.

Customer details such as their address, phone number, email, and so on, are automatically hidden. These details can be seen by expanding the View Details pane included for that role. Also, customer details can be seen for all roles by clicking the View All Details link at the top of the page.

Once you have included a customer for a role, you can easily copy that customer’s information to other roles. Expanding the View Details pane for a role displays a box containing the other role names and a Copy button. You have to select the role you would like to copy customer’s information to and click Copy.

Once the customer’s information is entered to a role, it is automatically saved. Therefore, there is no need to save before switching to another tab or navigating to another page.

SAP CPQ currently supports three customer address types: Bill To, Ship To, and End User. The End User customer address type can be disabled, if there is no need for it. Searching for customers is always performed on the Bill To and End User customer storages. Searching for a customer to add them to the Ship To customer address type is done by browsing the existing Bill To or End User customers. Customer storage for Bill To and End User roles is common for all quotes. When you edit a Bill To customer in one quote, the change you made to that customer will be visible in all quotes where this customer is loaded, no matter if it is the Bill To or the End User role. That change will also be visible if you use search to load that customer into a new quote. However, Ship To customers are exceptions. They are stored in a separate storage, and every quote has its own Ship To customer. Editing a Ship To customer in one quote will not alter any customers in any other quote, nor will that change be visible when you try to add a new Ship To customer in any quote. To put it differently, what has been edited in a Ship To customer in one quote is only visible on that quote, until it is decided to change the Ship To customer with another customer. In that case, the old Ship To customer data for that quote gets erased.

Postal Code Lookup

This feature enables users in Great Britain to retrieve address information based on the customer’s postal code. If you have chosen Postcode look-up provider in SAP CPQ Setup, the button Find Address will appear in customer information dialog (Bill To, Ship To or End User) next to the Zip/Postal Code customer field. Enter a postal code in the ZIP/Postal Code field and click Find Address. A dialog with a list of available addresses for entered postal code will appear. Click on the address that matches your criteria to fill in the appropriate fields in the customer information dialog.

Postcode look-up returns the following information:

Apartment Number

House Name

Street Address

The SAP CPQ default mappings are:

Apartment Number and House Name will be mapped to field Address(1)

Street Address will be mapped to Address(2)

Yes
No