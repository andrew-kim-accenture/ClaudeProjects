# Placing Order to ERP | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/b73de8de52134fd48cc34cb09cd338bb.html?locale=en-US&state=PRODUCTION&version=2603
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
Placing Order to ERP

When the Place Order to ERP action is executed, SAP ERP processes the order.

Once the order is processed, SAP ERP calls the PerformCartAction API on the SAP CPQ side to execute the Order Status Update action, which changes the status according to the Workflow and sets an Order Id for the quote. In the recommended setting, the Order Status Update action changes the status from Order Confirmation Pending to Order Placed.

After the order is placed, changes made in SAP ERP are not visible to the user until the quote is reloaded. To reload the quote in SAP Sales Cloud, refresh the browser (by pressing F5). To reload the quote in SAP CPQ, go to the quote list and reopen the quote.

After placing the order, the user shouldn’t make changes on the quote, and only the action Change Status should be available. You shouldn't attempt to save the quote after placing the order via scripting, either. In the Order Confirmation Pending status, you should only execute scripts which do not change the quote, such as Update Sales Quote. In addition, in case there was an error on the SAP ERP side, use the Change Status action to change the status from Order Confirmation Pending to a status which allows the user to make changes on the quote. Alternatively, you can change the status of the quote via scripting, to the same effect. That way, you can fix the error and try to place the order again.

Yes
No