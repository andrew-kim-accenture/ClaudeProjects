# Customer Role Defaults | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/3568420c8e2748699f4c5863c56f9345.html?locale=en-US&state=PRODUCTION&version=2603
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
Customer Role Defaults

The Customer Role Default administrative section allows you to define whether or not customer role fields are filled with user’s information or a user’s company information.

Note

Customers are available only in Quote 1.0. In Quote 2.0, organizational and transactional relationships are recorded via involved parties.

Prepopulating customer role fields with data can be helpful in many instances. For example, channel representatives often create users themselves in the Bill To customer role and the customer’s name in the Ship To or End User customer role. Defining customer role default rules ensures that their information is prepopulated in a customer role each time they create a new quote. These rules are defined based on the user type and the customer role. This allows controlling which users can and can't have customer roles prepopulated.

To access the Customer Role Defaults administrative section, click the link under the Customers/Customer Roles administrator menu. The page contains a list of existing customer role default rules that can be copied, edited, or deleted.

Click Add New to create a new customer role default rule. This displays the rule definition screen, which contains the following fields:

User Type Name - Defines the user type this rule applies to. Each time a user in this user type creates a quote, the selected customer role becomes prepopulated with data.

Customer Role - Select the customer role that becomes prepopulated with data for the selected user type.

Default (Pre-populate) with User Info - Determines that the user’s data prepopulates the selected customer role fields.

Default (Pre-populate) with User’s Company Info - Determines that the user’s company info prepopulates the selected customer role fields.

Note

User's Company Info requires that the company associated with the user has the Create Customer Record option selected. This creates a global customer and allows the information to be used for customer roles. See Companies for more details.

Yes
No