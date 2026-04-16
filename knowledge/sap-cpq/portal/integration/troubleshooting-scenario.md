# Troubleshooting Scenario | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/12042a025c4548fc90b9bee25e7122e4.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems


	
SAP ERP Integration for Quote 1.0


	
Preparation
	
Configuration
	
Manual Build Steps
	
Troubleshooting Scenario
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
Variant Configuration Integration
	
SAP Sales Cloud Integration
	
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
Troubleshooting Scenario

This topic describes a typical troubleshooting scenario for the SAP ERP integration.

Sales orders sent from SAP CPQ to SAP ERP may fail due to various reasons. In that case, the SAP CPQ quote will remain in the Order Confirmation Pending status and will therefore be read-only (for the regular Sales user type). This will prevent users belonging to the mentioned user type from editing the quote and optionally resending the order.

The recommended course of action is to create an additional user type which will be able to edit quotes in the Order Confirmation Pending status and change the status to the one where the Place Order to ERP action is available. Workflow needs to be adjusted accordingly.

Furthermore, there is a risk of creating double sales orders from the same quote (for example, a sales order failed because of a network issue). The user (belonging to the newly created user type that is able to edit the quote in the Order Confirmation Pending status) edits the quote and resends the sales order. In the meantime, network issues are fixed and the sales order that was created first arrives to the SAP ERP system. In that case, there will be two sales orders that came to SAP ERP from the same SAP CPQ quote.

In order to avoid this error, clients are recommended to check the logs in the SAP ERP system in order to determine the cause of the sales order failure, before they edit the SAP CPQ quote and optionally resend the sales order.

Yes
No