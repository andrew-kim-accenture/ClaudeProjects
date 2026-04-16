# Quote Visibility | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/347ec2bcdc7e4d7489189c5554b48e85.html?locale=en-US&state=PRODUCTION&version=2603
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
Quote Visibility

With quote visibility rules, administrators can define under which conditions their users can view other quotes.

Details

By default, users can only view quotes that they create. Users' quotes appear in the Load Existing Project/Quotation page under the My Quotes tab. As an administrator, you can enable your users to also access other quotes in the Other Quotes tab. You do this by creating quote visibility rules in the setup. If no visibility rule is configured, then users can only see their own quotes.

Overview

You manage visibility rules under Setup  Quotes  Quote Visibility.

In Quote 2.0, the Quote Visibility setup section consists of:

The list of configured visibility rules.

In this section you can create, edit, and delete sets of rules. To learn more, see Rule Settings.

The ranking of permission priorities for quote visibility.

In this section you can configure the priority of permission groups. The priority determines which quote visibility rules are executed. To learn more, see Permission Priorities.

Rule Settings

In Quote 2.0, you configure a quote visibility rule as follows:

Select which users can view other quotes. This selection is based on permission groups.

Define the conditions under which the selected permission groups can view other quotes.

You can configure either simple or advanced conditions, or combine both.

You do the configuration with the following settings:

Setting

	

Description




Name and description

	

Name and describe in detail the visibility rule for identification purposes.




Permission groups

	

Choose to which permission groups the visibility rule applies. If no permission group is selected, the rule applies to all users.




Simple condition

	

Choose from predefined scenarios for quote visibility.




Advanced conditions

	

Configure complex scenarios for quote visibility based on objects and their properties.

Permission Groups

The selected permission groups define to whom the visibility rule applies. If you select more than one permission group, the rule applies to either of the selected permission groups.

Example

You select the user John Doe and the user type Sales Manager. That way, the rule conditions apply to either John Doe or any user that is a sales manager. In this example, John Doe doesn't have this user type.

If no permission groups are selected, the visibility rule applies to all users.

You can select from the following permission groups:

Permission Group Type

	

Description

	

Setup




Company

	

Permission based on the organization to which your users belong.

	

In the setup, companies are configured under Users  Companies and then assigned to users.

For more information, see Companies.




Custom permission group

	

Permission based on customized permission groups.

	

In the setup, custom permission groups are configured under Users  Permission Groups.

For more information, see Permission Groups.




Brand

	

Permission based on brand design for the user interface.

	

In the setup, brands are configured under UI Design  Branding and then assigned to users in the User Administration.

For more information, see Branding and Users.




Market

	

Permission based on markets to which users have access.

	

In the setup, markets are configured under Pricing/Calculations  Markets and then assigned to users in the User Administration.

For more information, see Markets and Users.

Note

If you have enabled the Sales Area feature, you will see sales organizations instead of markets.




Sales Organizations

	

Permission based on sales organization to which users have access.

	
Note

This permission group is only available if you have enabled the Sales Area feature.

In the setup, the replicated sales organizations from SAP S/4HANA can be viewed under Sales Area  Sales Organizations and then assigned to users in the User Administration.

For more information, see Sales Organizations and Users.




User type

	

Permission based on user type of the users.

	

In the setup, user types are configured under Users  User Types and then assigned to users.

For more information, see User Types.




User

	

User accounts in your SAP CPQ tenant.

	

In the setup, users are configured under Users  Users.

For more information, see Users.

Simple Condition

With simple conditions, you can select from predefined scenarios under which the selected permission groups can view other quotes. If you select more than one condition, any of the selected conditions enable users to view other quotes. The logic for the relationship of simple conditions is OR.

Simple conditions are based on SAP CPQ tags and expressions for quotes:

Simple Condition

	

Tag or Expression




Logged-in user and quote owner are in the same company

	

Tag <*SAMEUSERCOMPANY*




Logged-in user and quote owner have the same user type

	

Tag <*SAMEGROUP*>




Logged-in user and quote owner are from the same territory

	

Tag <*SAMETERRITORY*>




Logged-in user is the quote owner's approval parent

	

Expression [EQ](<* VISITOR_ID *>,<*CTX( Quote.Owner.ApproveParent.Id )*>)




Logged-in user is the quote owner's managing parent

	

Expression [EQ](<* VISITOR_ID *>,<*CTX( Quote.Owner.ManagingParent.Id )*>)




Logged-in user is the quote owner's ordering parent

	

Expression [EQ](<* VISITOR_ID *>,<*CTX( Quote.Owner.OrderingParent.Id )*>)

Advanced Conditions

If you need more complex visibility scenarios, you can combine simple conditions with advanced conditions, or only use advanced conditions instead. Advanced conditions enable you to configure visibility rules based on objects (quote, quote owner, user, or involved party) and their properties (for example, status of quote, name of quote owner, and so on).

In the setup, you define the logic of an advanced condition by creating a row. By default, the row consists of five list fields to select the objects and properties:

Object: Quote, Quote Owner, User, or Involved Party.

Property of selected object.

Operator: Equal, Not Equal, Like, Less Than, Less Than Or Equal, Greater Than, or Greater Than Or Equal.

Field to which you compare the property (list field 2) of the object (list field 1):

Single Select: A specific value within SAP CPQ.

Note

If you choose a free form value, you can only enter text strings, no formulas.

Object: Quote, Quote Owner, User, or Involved Party

Single select value or object chosen for the comparison.

If you chose an object for the comparison, in the 6th list field you select the object property for the comparison.

You can create one or several rows of advanced conditions as needed. For several rows, you configure their relationship under Select Advanced Condition Logic. The logic can be AND (combination), OR (either), or a custom logic.

Example

The following configuration enables users to view quotes of quote owners that work in the same company and of involved parties (bill-to party, ship-to party) that are in the same country as the users.

Advanced Conditions:

Object Involved Party "Bill-to Party" + Property Country + Operator Equal + Object property User Company

Object Quote Owner + Property Company + Operator Equal + Object property User Company

Object Involved Party "Ship-to Party" + Property Country + Operator Equal + Object property User Company

Select Advanced Condition Logic: Custom logic with value (1 AND 2) OR (2 AND 3)

Permission Priorities

Apart from visibility rules, in the setup page Quote Visibility you also configure Quote Visibility Permission Priorities. If several visibility rules exist that can apply to the same user, the permission priorities define which visibility rule takes precedence for that user. The priority is based on permission groups, the highest priority in the ranking is applied.

You configure the ranking by moving the rows of priorities. The default ranking is:

Custom Group

User Type

User

Company

Market

Brand

Example

We've configured two visibility rules:

Rule 1 applies to the user Jane Doe.

Rule 2 applies to the user type Sales.

Both rules are valid for Jane Doe because she works on Sales. In our priority ranking, User Type has a higher position than User, therefore only Rule 2 is executed for Jane's visibility rights to other quotes.

On this page
Details
Rule Settings
Permission Priorities
Yes
No