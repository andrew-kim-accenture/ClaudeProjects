# Quote Teams | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/1cf69d652de248c684cd309081a82850.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Solution Design
	
Quote Teams


	
Assign Section to Team
	
Create Teams
	
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
Quote Teams

Grouping users into teams enables parallel work on one quote and allows quote owners to assign quote sections to different teams.

Quote owners create administrator teams that manage sections and assign users to solution teams. Each solution team has access only to the sections assigned to it. Consequently, multiple teams can work on the same quote and on different sections at the same time, without altering each other's work.

The hierarchy of teams on quotes, based on their rights, is as follows:

Quote Owner - the default user with maximum rights. Only quote owners can create administrator teams and they can also create solution teams.

Administrator Team​ - unlike the solution team users, administrator team users can create, edit, and delete sections. Administrator teams create solution teams, add users to teams, and assign teams to sections. There can only be one administrator team per quote.

Solution Team​ - a group of users that can be assigned to a section. Only members of a team assigned to a section have access rights to it. Users in the team assigned to a parent section don’t have access to its subsections. The users in this team can’t add any new teams, nor can they edit the existing ones. They can only view the grid with the existing teams.

Quote teams can be managed in the Teams tab. You can create and manage tabs as any other tab in SAP CPQ, however, you should use the /quotation/Teams implementation file. By default, this tab is visible to all permission groups in all quote statuses.



Assign Section to Team

You can assign sections to teams in the Solution Design tab.
Create Teams

Users can create teams either through the Excel template for creating sections (Solution Design tab), or in the Teams tab.
Yes
No