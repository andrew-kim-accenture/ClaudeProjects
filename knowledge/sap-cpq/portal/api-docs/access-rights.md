# Access Rights | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/38f993341de84159a783ce72e6ae9666.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Users
	
User Types
	
Permission Groups
	
User Custom Fields
	
Companies
	
Guest User
	
Access Rights


	
Assign Access Rights for Setup Sections and Entities
	
Select Access Rights Administrators
	
Access Rights and Custom Table Deployment
	
View Access Rights Permissions
	
Proxy Access
	
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
Access Rights

By managing access rights, you can control which individual administrators or permission groups can access specific Setup sections and entities, or grant them read-only access to those sections and entities.

Typically, different administrators manage different tasks in SAP CPQ, which means that not every administrator requires complete access to every Setup section. You can manage the access rights of administrators to provide them with access to only those sections and entities that are relevant to their work. In addition, you can provide administrators with either complete access or read-only access to specific sections. Access rights for sections and entities are managed in the Setup Sections and Setup Section Entities menus. In addition to Setup sections, you can manage the access rights for some user-side elements, such as the Formula Debugger, Developer Console or Script Workbench.

Caution

To gain access to this feature, you need to explicitly request it from the SAP CPQ Support Team. Once the feature is enabled, only the administrator who requested it will have the option to assign access rights for Setup sections and entities to other administrators.

The administrator who can assign access rights can also provide other administrators with the option to manage access rights.

Access rights can be assigned to individual administrators or to permission groups to which administrators belong. If the administrator belongs to multiple permission groups, once access rights are enabled, they automatically have access to all sections and entities that their permission groups can access.

For example, Adam the administrator belongs to the permission groups Sales and Sales Manager. If the right to access the Fields, Calculations, Layout section of the Setup is assigned to either of Adam's permission groups, Adam is automatically able to access the Fields, Calculations, Layout section. However, if the permission group Sales Manager has full access to Fields, Calculations, Layout, but the permission group Sales has read-only access to that section, Adam will have read-only access to that section.
Note

By default, if the administrator belongs to groups with a conflicting level of access rights (one of them has read-only rights, but the other one has full editing rights), read-only access rights override editing access rights. However, you can change this behavior by enabling the toggle switch Editing rights will prevail when two or more permission groups administrators belong to have both read-only and edit access rights to a particular Setup option. If that option is enabled, in the previously described scenario, Adam will have full editing access rights for the Fields, Calculations, Layout section, instead of read-only access.

Before the Enable Access Rights toggle switch is enabled, all administrators are able to access every section of the Setup. After the option is enabled, administrators don't have access to any Setup sections unless the required access rights are assigned to them. Make sure that you activate the toggle switch only after you are done with assigning access rights to administrators and permission groups. If the Enable Access Rights toggle switch is disabled after having been enabled for some time, all administrators will regain full access rights to all sections and entities.

Yes
No