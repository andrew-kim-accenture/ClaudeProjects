# Change Set | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/a024c4a52c11439f80a1417d033e4309.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Audit Trail Logs
	
Change Set


	
Create Change Set
	
Deploying a Change Set
	
SAP CPQ Tags
Change Set

Change Set is a feature that increases traceability of changes (in Setup or via scripting) and ensures that appropriate recording of changes occurs in the relevant change management procedures.

A change set encompasses a group of changes that are performed in a single set. Each change in SAP CPQ is logged in the Audit Trail as a part of a change set.

Utilizing different Change Sets by different administrators in SAP CPQ allows for improved tracking of the steps taken by each administrator within a specific Change Set. This enables other administrators to easily review the changes in the Audit Trail and potentially reuse or gain insight from them.

Note

Change sets can only be created in development and testing SAP CPQ environments. If you want a change set to be displayed in Setup in sandbox and production environments, you need to deploy it from the lower environment once the changes have been tested and applied there.

Change sets can be active and inactive. Of all the active change sets, only one can be in use at a time. You can select the change set you wish to use in the Change Set dropdown in Setup. Once you select a change set, all changes that you apply to SAP CPQ from that moment on are logged in Audit Trail under that change set. The inactive change sets don’t appear in the dropdown, but you can find them in Setup  Audit Trail  Change Set (where all change sets created by administrators are listed) and activate them again. Changes can’t be logged under an inactive change set.

Note

Using change sets to improve tracking of changes is optional. If there are no change sets in your environment other than DEFAULT (CPQ-1), the Change Set dropdown isn’t displayed in Setup.

If a client is only using the default ChangeSet (DEFAULT (CPQ-1)), the Change ID will always be 0. If any additional custom ChangeSets are made, it will track changes with Change ID, which can range from 0 to the maximum integer value. If the integer for Change ID reaches its maximum value, it will be reset to 0 and start over.

The default change set is selected every time you log into SAP CPQ regardless of whether a different change set was previously selected or not. If you make some changes under a custom change set, exit the Setup and then enter it again without logging out, the custom change set you have previously used is the selected one.

Change Set and API
If a change is performed via API, and you wish to assign it to a change set, enter the change set ID in the header for each API call. You can only use IDs of active change sets. The key entered in the header should be ChangeSetId, and its value should be the value of that change set ID (for example, CPQ-10). This is the list of affected APIs:

AUXTableAdministrator

CompanyAdministration

ImportMaterialsFromERP

SimpleProductAdministration

UpsertPricebook

UpsertPricebookWithDistributionChain

UserAdministration

CustomerAdministration

Related Information
Audit Trail Logs
Create Change Set
Deploying a Change Set
On this page
Change Set and API
Related Information
Yes
No