# Customer Actions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/3fdd6992f7aa4973ab578f3a95724cea.html?locale=en-US&state=PRODUCTION&version=2603
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
Customer Actions

The Customer Actions administrative section allows you to define which actions are available for each customer role on the Customer Info Tab. Permissions for actions can be given based on user group and order status.

Note

Customers are available only in Quote 1.0. In Quote 2.0, organizational and transactional relationships are recorded via involved parties.

Customer Action in administrative section is available by clicking the link under the Customers/Customer Role administrative menu. This displays a matrix of user groups and order statuses for each customer role. You can switch the customer role that is being defined by clicking the tabs at the top of the screen. You can easily copy action settings from another customer roles by choosing that customer role from the dropdown in the upper right-hand corner of the screen.

To set actions to a cell, click the cell to display a pop-up where one or more actions can be selected. There are six different types of cells in the matrix that can be defined:

All User Groups and Statuses - Sets the same option for all the cells in the matrix. Click the upper left corner of the matrix to define.

All Statuses for One User Group - You can set all the statuses for one user group by clicking the user group’s name on the left side of the matrix.

All User Groups for One Order Status - You can set all the user groups for one order status by clicking the status on the top of the matrix.

Individual Cell Intersection - You can set a cell intersection between a status and a user group. For instance, the Sales Rep group can only Lookup customers from CRM when in the Order Placed status.

Default (For New User Groups) - Set which customer actions are available to the users added to new user groups that haven’t been set in this matrix yet.

Default (For New Order Status) - Set which customer actions are available in new statuses that haven’t been set in this matrix yet.

The default cells make administration easier so that, when you create a new user group or status, you don't need to go through and define all the customer actions again.

Note

Selecting an option for a cell that includes all statuses or all user groups can take some time to set, depending on the number of statuses and user groups created in the system. Large number of groups or statuses indicates that there are numerous cells to set, so there can be a slight delay in setting them all. When finished defining the customer actions for the current customer role, click Save at the bottom of the page.

Yes
No