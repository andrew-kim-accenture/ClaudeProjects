# Quote Visibility | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/a4e93dd75a104d1d9e8d4a8217aad67f.html#rule-4
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
Quote Visibility

As an administrator, you can use quote visibility rules to define which quotes are accessible to users in the Other Quotes tab.

By default, users can only view quotes that they have created, in the My Quotes tab of the Load Quotes page. However, given the appropriate permissions, users can also access other quotes in the Other Quotes tab. To allow a user to see the other quotes, you must create quote visibility rules in Setup  Quotes  Quote Visibility.

Note

Users won’t be able to see any quotes in the Other Quotes tab if no quote visibility rules are defined. This behavior is the same in both quote engines.

In the Quote Visibility section in the Setup, you can see all existing quote visibility rules. You can filter the rules using the parameters Group (which refers to user types), User, Company, and Condition.

Note

When the system determines which rule is applied, groups have priority over users, and users over companies.

By clicking Add New, you access the quote visibility rule definition page, where you can define a new rule by completing the following steps:

In step 1, you need to specify to which users the rule is applied, by adding individual users, user types, or companies.

In step 2, you can limit the quotes that the users specified in step 1 can view. You can allow the specified users to only view their company's quotes, quotes created by other users for whom the specified user is the approval parent, or quotes created by users for whom the specified user is the managing parent.

In step 3, you can specify a condition under which the rule is applied. You use SQL pre-filtering to create dynamic settings.

Note

If you defined prefiltering conditions but you’ve noticed that they aren’t applied, contact the SAP CPQ Support team to enable prefiltering for your tenant.

SQL prefiltering can affect the way regular filters work. Results which would be included if using regular filters may be discarded due to prefiltering.

It is only possible to create one rule per combination of User Group, User, and Company. In addition, you can only create one rule for a specific user (for example, John Smith). However, you can create a rule for the user group Sales, even if John Smith belongs to that group. In this case, though, the visibility rule created for the Sales group would have priority over the rule create for John Smith.

When a user opens the Other Quotes tab, the system runs the visibility rule for every quote in the system. If the condition is met for a quote, then the specific user will be able to see that quote. The actions which the user can perform on these quotes are defined in the Workflow Actions administrative section.

In Quote 1.0, only quote tags can be used in the condition field for visibility rules. You can use the formula builder to create complex conditional statements. Any quote information can be retrieved to be used in the calculation, including user information, customer information, custom fields, discounts, cart amounts, and many others. Entering 1 in the condition field allows the selected user to see all quotes generated in the system.

Using Visibility Rules Together

You can create inherited visibility rules to further filter quotes.

For example, we can create a rule in which the Sales group can see all quotes where the quote creator’s user group is Sales, by specifying the user type Sales and the condition <* SameGroup *>. This rule states that any user in the Sales group will be able to see quotes from the users that are within their group. The <* SameGroup *> tag checks the quote creator’s user group and the user group of the user currently logged in and returns true if the same.

We then want John Smith, who is part of the Sales group, to only see quotes within his ZIP code. To achieve that, we need to create a rule that specifies the user John Smith, the user type Sales, and the condition <* SameZipCode *>. This way, the previous visibility rule for Sales also applies to John Smith, but in addition, the tag <* SameZipCode *> matches the ZIP code of the currently logged in user with that of the quote creator. The rule states that John Smith will only see quotes where his ZIP code matches that of the quote creator. In addition, since the Sales user type is also specified, John Smith is now allowed to see only those quotes where he has the same user group and the same ZIP code as the quote creator.

Visibility Rule Examples

All companies have unique needs but there are some commonalities which will be used for quote visibility rule examples. Companies can have many different ways of distributing products and services and hierarchal structures to manage them. For example, a Sales Management group needs to see all quotes that its groups or salespeople generate, which may include individual users, Value-Added Resellers, Wholesale Distributors, Outside Sales Reps, etc. Several quote sharing rules must be created in order to specify who can and cannot see the quotes that have been generated.

There are four groups that need cart visibility rules applied to them:

Sales Management: The internal management staff which needs access to all quotes.

Sales: The internal sales rep staff which work in territories or specific companies.

Channel Rep: Wholesalers, VARs, Distributors.

Direct Sales: Center sales personnel, customer service, etc.

The Sales group will be divided into 2 territories, East and West. The Channel Rep group has 4 major stocking wholesalers, 2 in each territory. In addition, they have 5 Value-added resellers assigned to each.

Based on these conditions, four visibility rules can be created.

Rule 1
Sale Management needs access to ALL quotes. Administrator should select Sales Management as user type and in Condition, enter 1.
Rule 2
The Sales group should see only quotes within their territory. Jerry Thompson is assigned to East and Anna Windfree is assigned to West. In order to make sure each rep can only see quotes that belong in their respective territory a rule is created using the <*SAMETERRITORY*> tag. Administrator should select Sales as user type and in Condition, enter <*SameTerritory*>.

Now every Sales user will be able to see all quotes located within their respective territory. Based on this rule Jerry Thompson will not be able to see Anna Windfree’s quotes, because in there user profile they are in different territories. For more information on assigning users to a territory, see the chapter on Users in the Users section.

The way this rule works is very simple as well. When a user from the group Sales accesses the Other Quotes tab, every quote is evaluated against the tag <*SAMETERRITORY*>. This tag evaluates to 1 (true) if a user who created a quote (quote owner) has the same territory as the logged in user. All quotes will then be visible to the logged in user through the Other Quotes tab.

Rule 3
Channel Reps should see only those quotes they have generated (My Quotes) and all quotes created by their own distributor companies. The Channel Rep group supplies Westcoast Distribution Inc. and Eastcoast Distribution Inc. They need to view all quotes generated by those two distributor companies. In this case the condition is a bit more complex and requires the following expression: [OR]([EQ](<*CO_INFO(COMPANY_NAME)*>,Eastcoast Distribution Inc),[EQ](<*CO_INFO(COMPANY_NAME)*>,Westcoast Distribution Inc)). Administrator should select Channel Rep as user type and in Condition, enter [OR]([EQ](<*CO_INFO(COMPANY_NAME)*>,Eastcoast Distribution Inc),[EQ](<*CO_INFO(COMPANY_NAME)*>,Westcoast Distribution Inc)). The way the above rule works is also very simple. When a user from the Channel Rep group accesses the Other Quotes tab, every quote is evaluated to see whether or not the user who created that quote belongs to a company Eastcoast Distributors or Westcoast Distributors. Those quotes that belong to those companies are then visible.
Rule 4
By default the employee from each company (Westcoast and Eastcoast) can only see their own quotes (My Quotes). In order to allow each user to see quotes from their own company we need the following rule: User Type should be set to Direct Sales, My company's quotes checkbox selected and Condition set to 1. The way this rule works is also very simple. After a user from Direct Sales accesses the Other Quotes tab the user will see all quotes where the quote owner has been added to the same company as the logged in user.
On this page
Using Visibility Rules Together
Visibility Rule Examples
Rule 1
Rule 2
Rule 3
Rule 4
Yes
No