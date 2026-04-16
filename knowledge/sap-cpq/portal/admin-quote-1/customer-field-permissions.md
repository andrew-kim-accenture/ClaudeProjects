# Customer Field Permissions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/2e135aec46b44c578036509e2136d680.html?locale=en-US&state=PRODUCTION&version=2603
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
Customer Field Permissions

The Customer Field Permissions administrative section gives you the option to define how the fields in customer roles are displayed to the user.

Note

Customers are available only in Quote 1.0. In Quote 2.0, organizational and transactional relationships are recorded via involved parties.

Permissions can be defined based on an order’s status and the user group the current user is in. The following permissions can be defined for each customer role field:

Hidden - Used for the statuses or user groups that you wouldn’t like the field displayed for. The field isn't displayed to the users.

Read-Only - Used for statuses after the quote has been completed, such as Order Placed or Received Order. The field isn't editable. Whatever value had been entered for the field, it’s displayed as uneditable text.

Editable - Used for the initial statuses in which the quote is being created, such as Open. The field is displayed in whatever format it was defined in.

Required - Used when administrators want to define this field when they create new customers. Fields marked as required are editable and displayed with a red asterisk. If users have a customer role set as Required in the Required Fields by Workflow Action administrative section, then users are required to define any required fields when that action is performed.

To access the Customer Field Permissions administrative section, click the link under the Customers/Customer Roles administrative menu. From this screen, you can define permissions for each customer role: Bill To, Ship To, and End User. You can switch between each through the tabs at the top of the screen.

Customer role fields are displayed for each customer role. The same fields are used for all customer roles. Click a permission name next to a field to define permissions for that field. This defines that permission for every user group in every order status.

To set an option to a cell, click the cell to display a pop-up where the option can be selected. You can easily copy permissions from another customer role’s field, by choosing that field from the dropdown box in the upper right corner of the screen. There are six different types of cells in the matrix that can be defined:

All Permissions - Sets the same option for all the cells in the matrix. Click the upper left corner of the matrix to define.

All Statuses for One User Group - You can set all the statuses for one user group by clicking the user group’s name on the left side of the matrix.

All User Groups for One Order Status - You can set all the user groups for one order status by clicking the status on the top of the matrix.

Individual Cell Intersection - You can set a cell intersection between a status and a user group. For instance, the Sales Rep group should have the customer role field Read-Only when in the Order Placed status.

Default (For New User Groups) - Set how the customer role field is displayed to the users added to new user groups that haven’t been set in this matrix yet.

Default (For New Order Status) - Set how the customer role field is displayed in new statuses that haven’t been set in this matrix yet.

The default cells make administration easier so that when user creates a new user group or a status, user doesn't need to go through and define all the customer role field permissions again. The Default for New User Groups and Default for New Order Status cells is automatically filled with what is set for that field on the previous screen. Changing the permission in this cell changes the permission on the previous screen.

Note

Selecting an option for a cell that includes all statuses, or all user groups can take some time to set depending on the number of statuses and user groups created in the system. Large number of groups or statuses means that there are many cells to set, so there can be a slight delay in setting them all.

When finished defining the advanced customer role field permissions, click Save at the bottom of the page. You aren't redirected to another page in case you would like to further to define the field.

Yes
No