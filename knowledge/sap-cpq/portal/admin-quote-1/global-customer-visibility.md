# Global Customer Visibility | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/abfb4f99c2494d1a901f00a8f465237b.html?locale=en-US&state=PRODUCTION&version=2603
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
Global Customer Visibility

Global Customers are customers added in the Global Customers administrative section. They’re available only to those users who have permissions to view them. Rules need to be written to allow users to view these customers.

Note

Customers are available only in Quote 1.0. In Quote 2.0, organizational and transactional relationships are recorded via involved parties.

Rules that allow users to see that global customers are defined in the Global Customer Visibility administrative section. This section can be accessed by clicking the link under the Customers/Customer Roles administrator menu. The page contains a list of all existing visibility rules, and they can be edited or deleted.

The Global Customer Visibility administration screen shows the parameters from which a rule can be built: Group, User, and Company. The order in which each is displayed reflects its priority from left to right, with Groups having priority over Users, and Users priority over Companies.

To create a new rule, click Add New. Clicking this button displays the definition screen for global customer visibility.

Global customer visibility rules have the following areas of definition: the first area specifies which users the rule applies to and the second specifies the condition under which the global customers become visible. It’s only possible to create one rule per combination of User Group, User, and Company. For instance, users can only create one rule for the user John Smith. They can, however, create a rule for the Sales user group, even if John Smith has been added to that group. In this case, though, the visibility rule created for the Sales group would have priority over the rule created for John Smith.

In addition, here you can define a formula used for SQL pre-filtering. The value from the field SQL Where is used as a pre-filter applied on a DB level. The pre-filter is applied first, after which settings defined in the previous steps are applied. As a result, the settings from the previous steps can only narrow down the list of global customers which is returned after the pre-filtering. This step is optional, but it can result in improved performance

When users perform a lookup for a customer either by typing customer info in a Customer Role field or through the lookup action, the system runs the global customer visibility rules applied to the user who is currently logged in. The condition field of these rules determines which global customers are available.

Unlike Local Customer Visibility rules, Global Customer Visibility rules can be based only on customer info. This is because the customers are global and don’t belong to any particular user, which is the case with local customers. Only the customers that match in the condition are available to the selected users. For example, users can specify that the Sales user group can view any global customers in the same territory that they’re assigned to. This is possible because global customers and users can be assigned to territories. If the condition based on the customer info is met, then customers are available to the current user.

Once the customer is loaded it and the edit action is available, the current user can temporarily edit customer info. This doesn't change the customer info on global scale only for that quote in witch has been edited.

Only quote tags can be used in the condition field for visibility rules. In the Formula Builder, users can access tags and create complex conditional statements. Any quote information can be pulled and be used in the calculation, including user information, customer information, custom fields, discounts, quote amounts, and many others. Entering 1 in the Condition field allows the selected users to see all user’s local customers.

Yes
No