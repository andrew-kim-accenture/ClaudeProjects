# Search Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/1f8da9f157dd4b35901bf5f0f8d5ba91.html?locale=en-US&state=PRODUCTION&version=2603
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
Search Fields

The Search Fields administration allows users to control which fields will be available to filter their quotes on the Quote List page.

Search fields can be defined per a user group and can be ordered. The search fields available include quote information, customer information, key attributes, or user information.

The Search Fields administrative section can be accessed under the Quotes admin menu. Here user can add, remove, and modify the search fields.

To add a new search field, click the Add New button. This displays the search field definition page.

Available Fields displays the fields that can be searched by. These include any Key Attributes, Custom Fields, and default fields, which include cart information, customer information and user information. The Label field determines what the search field label will say on the user side. Because the search field name can be sometimes not very descriptive or not custom for user's company, the Label field allows displaying any label that is needed.

The Operator field determines how the system will search the value entered by the user. There are 6 options available as an operator:

=number - requires the value entered by the user and the selected field is a number

=date - requires the value entered by the user and the selected field is a date

=string - requires the value entered by the user and the selected field is a string, or text

like - allows user to enter any value, this value is then searched by for in the selected field. An exact match is not needed with this query. For example, if a user enters the value “com”, the system will match that with “computer”, “communication”, “combination”, etc.

number interval - user is given two fields to enter a number. The system then returns the values that fall between the entered numbers.

date interval - user is given two fields to enter dates. The system then returns the values that fall between the entered dates.

Tip

Searches done with the =number, =date, and =string operators must be exact matches in order for the system to return the result.

The All User Types field refers to user types for which no search fields have been defined. What this means is that, if a search field has been defined for a certain user type, that user type will not have access to search fields defined for All User Types. For example, if a Project Name search field has been defined for a Sales user type, the Sales user type will only have access to the Project Name search field, and to no other. This also means that All User Types will not have access to the search field defined for a Sales user type.

Selected Fields lists all the search fields currently being displayed to users. The fields are listed in the order that they will be displayed to the users from top to bottom.

To add a new search field, user must select the field from the Available Fields and click  to send the field to the Selected Fields. Then it is possible to order the selected fields by selecting the field and clicking the up and down arrows.

Note

You can only add one search field at a time. To add another search field, save the current addition, then go back to the Search Fields administrative section and click Add New.

When editing a search field, if desired, user can only remove and edit the label of the field that you edited. User can, though, modify the ordering of all the fields while editing.

Note

To make the Advanced Search feature available on the Existing Quotes page, you must tick the Show Fields in a Quote Search/Filter check box in User Types.

Yes
No