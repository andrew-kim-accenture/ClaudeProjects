# User Mappings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/e62d997bafda4f8b927fcec2ad8c7ae6.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration


	
General
	
CRM Objects
	
Custom Fields Mapping
	
Customer Roles Mapping
	
Partner Functions Mapping
	
Opportunity Status
	
CRM Item Mappings
	
Price Book Market Mappings
	
User Mappings
	
CRM Quote
	
CRM Administrator Account
	
Send Document To CRM
	
New Authentication method for COD integration
User Mappings

The User Mappings administrative section allows you to control the mappings between accounts on the CRM and accounts in SAP CPQ. This sections shows the mappings that have been created already between the CRM and SAP CPQ.

The first time a user logs into the CRM then accesses SAP CPQ through the custom link created in the opportunity, they are asked to log into SAP CPQ. Once logged into SAP CPQ, a mapping is created between their CRM account and the SAP CPQ account they logged in as. In the future when they access SAP CPQ through the custom link in the opportunity, they are not asked to log into SAP CPQ. This mapping created between the two user accounts is managed in the User Mappings administrative section. So make sure that users are actually able to log in for the first time. (Don't set them as inactive in administration). If they ever become inactive, they won't be able to access SAP CPQ from CRM any more.

The User Mapping admin section can be accessed by clicking the link under the CRM Integration Setup admin menu. The section lists every user in the system. Users with mappings already defined display the mapped CRM user in the second column. Other users without a mapping show nothing in this column.

To delete, a mapping between a SAP CPQ user account and a CRM user account, click the delete button. This breaks the mapping and forces that CRM user to log into SAP CPQ the next time they access SAP CPQ through the custom link created in the opportunity.

To edit a mapping or add a mapping between two user accounts, click the edit button. The SAP CPQ user you’ve edited will be the only user available to edit. The field will not allow you to edit the SAP CPQ user. Likewise, if you are editing an existing mapping, you will be unable to modify the CRM user involved in the mapping.

To change the CRM user involved in the mapping, click the CRM Lookup link. This displays the search results of what is entered in the search field. Leave the search field empty to return all the users in the search results. Select the CRM user you would like mapped with the SAP CPQ user. Once the mapping is defined, the user will not be required to log in to SAP CPQ after clicking the custom link in the opportunity.
Caution

CRM users can be used in only one mapping with a SAP CPQ user. The system will not save the mapping if the CRM user is being used with another SAP CPQ user.

Also, before you rename user in CRM, a mapping in SAP CPQ should be removed, and then user remapped.

Yes
No