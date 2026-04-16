# Customers | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/c65ef749b51448afa5d91eaa9a92f7b3.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems
	
SAP Sales Cloud Integration


	
SAP Sales Cloud Version 2 - SAP Sales Cloud Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 1.0


	
General Prerequisites
	
Configuration
	
Ticket Components
	
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0


	
Adding Items
	
Customers
	
Field Mapping
	
Updates and Status Change
	
Placing Order to ERP
	
Payloads for Quote Creation and Quote Synchronization in SAP Sales Cloud
	
SAP Commerce Cloud Integration
	
SAP Subscription Billing Integration for Quote 2.0
	
Integration with SAP Master Data Integration
	
Identity Provisioning Service Integration
	
CX AI Integration
	
Integration with Central Entry Point
	
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
Customers

SAP Sales Cloud sends data for the bill-to and ship-to customers to SAP CPQ.

An Account in SAP Sales Cloud matches the Bill-to customer role in SAP CPQ and the Ship-to role in SAP Sales Cloud matches the Ship-to customer role in SAP CPQ. Ship-to is the only role that users can edit on the quote

Additionally, the system validates the country/region and the state of the customer. The system checks whether the country/region exists in SAP CPQ as a 2-digit or 3-digit ISO country/region code. If the country/region does not exist, the quote is not created and a message stating that the customer country/region code is invalid is displayed.

Additionally, if the 2-digit code for the customer state does not exist for the country/region in SAP CPQ, an error stating that the state code is invalid is displayed. Since the format of the state and country/region codes is not the same in SAP Sales Cloud and SAP CPQ, administrators need to map the statuses in SAP Cloud Integration.

Support for Prospects in Quote 1.0

It is also possible to create quotes for prospects in SAP Sales Cloud. When the quote creation is initiated by a user on the SAP Sales Cloud side, the payload that is sent to SAP CPQ doesn’t contain the CustomerCode parameter because the system doesn’t have the SAP ERP ID of the prospect. Instead, the payload contains the CrmAccountId parameter with the ID of the prospect.

Consequently, in the SAP CPQ quote, the Customer ID field (mapped to the CustomerCode parameter) remains empty and Account Id is populated with the value of the CrmAccountId parameter. The same applies for the bill-to and the ship-to customers.

Once a prospect is converted to customer in SAP Sales Cloud, a customer is created in SAP ERP and its ID is sent to SAP Sales Cloud. From there, the customer ID along with the prospect ID is passed along to SAP CPQ and the following changes take place:

The customer which was first created from the prospect with account ID is now updated with the SAP ERP ID. The same applies for ship-to and bill-to customers.

All quotes created with the account ID are now updated with the customer ID. There is an API for updating quotes with the custome ID: api/v1/customers/c4c/update/{crmAccountId}.

Related Information
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0
Adding Items
Field Mapping
Updates and Status Change
Payloads for Quote Creation and Quote Synchronization in SAP Sales Cloud
On this page
Support for Prospects in Quote 1.0
Related Information
Yes
No