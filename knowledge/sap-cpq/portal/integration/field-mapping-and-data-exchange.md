# Field Mapping and Data Exchange | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/b2ac3eb085034b5ba67ec71dc734a654.html?locale=en-US&state=PRODUCTION&version=2603
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
	
SAP Commerce Cloud Integration


	
SAP Commerce Cloud Integration for Quote 1.0
	
SAP Commerce Cloud Integration for Quote 2.0


	
SAP Commerce Cloud User Scenarios for Quote 2.0
	
Setting Up SAP Commerce Cloud Integration for Quote 2.0
	
Field Mapping and Data Exchange
	
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
Field Mapping and Data Exchange

The SAP Cloud Integration IFlows contain the definition of field mapping between SAP CPQ and SAP Commerce Cloud. This page describes the field mapping and explains the data exchange between the systems.

Field Mapping
SAP CPQ	SAP Commerce Cloud


Cart Comment

	

Description




Collaboration/Comments

	

Comments in the quote header




Global comment inItem-level comment in Collaboration/Comments

	

Comment on item level




Revision Name

	

Version




External Id

	

Quote ID




Sales Order Id

	

The ID of the order sent from SAP Commerce Cloud to SAP ERP. This field is in the quote header and it’s empty until the customer in SAP Commerce Cloud accepts the quote and the order is sent to SAP ERP. Sales order ID is calculated by adding 3 on the Order Number in SAP Commerce Cloud.




Discount Percent

	

Discount

Data Exchange
Integration User

The integration user's purpose is to call SAP CPQ APIs in SAP Cloud Integration. This user needs to be defined in both SAP CPQ and SAP Cloud Integration. Its username and password need to be added in the subscription to events defined in SAP CPQ.

Involved Parties

Involved parties are synchronized in both SAP Commerce Cloud and SAP CPQ from SAP ERP. However, when the user journey starts in Global comments in SAP Commerce Cloud and there isn't yet an involved party in SAP CPQ and SAP ERP, it’s created in both systems. SAP Commerce Cloud and SAP ERP are considered the master of business partner data, because SAP CPQ may not have the up-to-date business partner data from the back end. All business partner data arrives from these systems to SAP CPQ. Existing business partner data in SAP CPQ is not relevant for the request for quotation integration scenario.

Note

All communication between SAP CPQ and SAP ERPis managed through SAP Cloud Integration.

Market

Markets aren’t automatically synchronized between systems so the administrator in SAP CPQ should create it manually. The Market Code in SAP CPQ corresponds to Sales Organization ID in SAP Commerce Cloud.

Items

SAP CPQ - SAP Commerce Cloud integration for Quote 2.0 supports subscription products and physical products (coming from SAP ERP via SAP Cloud Integration). All subscription products need to be created first in SAP CPQ since SAP CPQ is the master for subscription billing products. After a subscription product is created, an event is triggered and product details are sent to SAP Subscription Billing and SAP Commerce Cloud where the same product is created.

Dictionaries

A dictionary ISO code is sent from SAP Commerce Cloud to SAP CPQ for the SAP Commerce Cloud user. The system then searches for the dictionary corresponding to the ISO code in SAP CPQ and selects it. The system searches for custom dictionaries first and, if multiple custom dictionaries are available, selects the one with the lowest rank. If no custom dictionaries are found, a system dictionary with that ISO code is selected. Custom dictionaries are used for custom product messages and as region-specific dictionaries. More information on using custom dictionaries is available in Dictionaries.

Custom Fields

There are no custom fields that are necessary in the integration model. However, in SAP Cloud Integration, you can map the custom fields in SAP CPQ with the fields in SAP Commerce Cloud, as needed. The values of custom fields in SAP CPQ are updated accordingly via the API.

Note

Currently, it isn’t possible to manage the quantity of SAP Subscription Billing products in SAP Commerce Cloud via the QTY field. Instead, the customer and the sales representative should manually enter as many SAP Subscription Billing products as needed.

Related Information
SAP Commerce Cloud User Scenarios for Quote 2.0
Setting Up SAP Commerce Cloud Integration for Quote 2.0
SAP Commerce Cloud Documentation
On this page
Field Mapping
Data Exchange
Related Information
Yes
No