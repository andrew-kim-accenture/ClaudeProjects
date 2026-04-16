# Local Customer Visibility | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/99e0ee46bfc54899b0c71c430e91d220.html#using-the-condition-%221%22
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
Local Customer Visibility

You can define visibility rules to allow users to view the local customers of other users on quotes.

Note

Customers are available only in Quote 1.0. In Quote 2.0, organizational and transactional relationships are recorded via involved parties.

Details
Setup

You can define rules for allowing local customer sharing in the Local Customer Visibility section of the Customers/Customer Roles setup menu. If no rule is defined, then your users can only see global customers and their local customers.

The Local Customer Visibility administration screen shows the parameters from which a rule can be built: User Type and User. The order in which each parameter is displayed reflects its priority from left to right, with User Type having priority over Users.

Impact on Quotes

If users can edit customers on quotes, any modifications they do to customers that are available to them through local customer visibility aren't permanent. Changes only affect the customer’s info in the current quote.

When users perform a customer lookup either by typing customer info in a customer role field or through the lookup action, the system runs the local customer visibility rules applied to the user who is currently logged in. The condition field of these rules determines which local customers are available.

Creating a Visibility Rule

To create a new rule, choose Add New. The screen for defining local customer visibility consists of two areas:

The first area specifies to which users the rule applies.

The second area specifies the condition under which the local customer becomes visible for those users.

User Selection

You can only create one rule per combination of User Type and User. If several rules exist for the same user, the user type takes precedence over the user's rule.

Example

You can only create one rule for the user John Smith. However, you can create a rule for the user type Sales, even if John Smith has been added to that user type. In this case, the visibility rule created for the Sales group would have priority over the rule created for John Smith.

In addition to the user selection, you can configure that the user can see all customers in the company of the quote owner by selecting My company's customers.

Condition

You can only use quote data in the condition field for visibility rules. With theFormula Builder, you can access tags and create complex conditional statements. Any quote information can be pulled and be used in the calculation, including user information, customer information, custom fields, discounts, quote amounts, and many others.

Tip

Enter 1 into the Condition field to allow the selected users to see all the local customers from other users. See Using the Condition "1" for more information.

Conditions can be based on user info or customer info:

If based on user info, then all the local customers of the user that matches in the condition are available.

If based on customer info, then only the customers that match in the condition are available.

Example

A rule allows the user type Sales to see all local customers within their user type. You could also create a rule to allow the user type Sales to see all local customers that are in a certain state. If the condition based on the user or customer info is met, then the customers are available to the current user.

Using the Condition "1"

The condition value 1 enables the selected users to see all the local customers from other users. This condition can be combined with the setting My company's customers as follows:

Description

	

Settings




Enable users to see all the local customers from other users.

	

My company's customers: Deselected

Condition: 1




Enable users to see all the local customers from other users if the quote owner has the same company as the users. Otherwise, the users only see global customers and their own local customers.

	

My company's customers: Selected

Condition: 1

Other condition values are evaluated and applied to all combinations with the setting My company's customers selected or deselected.

On this page
Details
Creating a Visibility Rule
Using the Condition "1"
Yes
No