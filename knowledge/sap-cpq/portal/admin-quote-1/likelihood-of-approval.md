# Likelihood of Approval | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/2c8987058e654cf6996c5b9e86474d97.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Statuses
	
Workflow Actions
	
Workflow
	
Workflow Permissions
	
Required Fields By Workflow Action
	
Item Actions Workflow
	
Email Lists
	
Notifications
	
Approval Rules
	
Approval Branch
	
Approval Auto-Reminder
	
Likelihood of Approval
	
Approving Quotes in One Click
	
Quote Revisions
	
Outbound SAP CPQ Emails
	
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
Likelihood of Approval

This functionality allows extending approval rules.

User can define slider definition and attach the definition to approval rules. Sliders allow users to see the probability of the current quote to be approved. One slider definition can be attached to more than one rule, but one rule can have only one slider definition. Slider definitions are listed in a standard table, with actions copy, delete and edit.

Clicking Add New opens a page for adding/editing a slider definition. The first step is to choose which field is related with this slider. For this slider field user must add an editable field and set corresponding maths (see Cart Fields Administration). The second step is to enter slider boundaries and finally, the third step is to select the rules to which this slider will be applied.

On the user side, for every rule that has a slider definition, a user has the information about likelihood of approval based on the color and/or image. The color and image is the same as for margin health and can be defined in Margin Health Design and Appearance.

The user can change this probability by clicking the Adjust button.

When a user moves a slider, SAP CPQ will calculate the value of the slider based on the min and max value and on the slider's current position. (ex: min=20, max=30, current position = 30, slider value = 20 + (30 - 20)***30 = 23). After calculating the slider value, SAP CPQ will find the field, which is defined in the second step and meets the criteria from the third step, then applies the value of the slider to that field, then finds the editable group which contains this field and executes maths for this editable group. So, for this functionality to work properly the user needs to adjust cart editable fields (see Cart Fields Administration) Ex: If the administrator on the second step chooses Product Type  Discount Percent, also administrator must specified Editable group field where Product Type - Discount Percent will be editable with the corresponding math.

Yes
No