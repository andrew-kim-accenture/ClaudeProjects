# Purpose | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/82a0a579eac14c53af9724ac64dbd3ab.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

Integration with Sales Orders in SAP S/4HANA CloudVersion: 2603English
Provide feedback on our search

	
Purpose
	
System Requirements
	
Prerequisites
	
Configuration in SAP CPQ
	
Configuration in SAP S/4HANA Cloud
	
SAP Cloud Integration Configuration
	
Data Replication
	
Master Data
Purpose

Learn how to configure the basic integration between SAP CPQ and sales orders in SAP S/4HANA Cloud using SAP Cloud Integration.

SAP CPQ can be integrated with SAP S/4HANA Cloud to provide a workflow for users to automatically create a sales order in SAP S/4HANA Cloud whenever a SAP CPQ quote is sent to SAP S/4HANA Cloud. The follow-up documents are then created in SAP S/4HANA Cloud automatically.

Note

The setup instructions in this guide only describe the basic authentication. Nevertheless, a certificate-based authentication might also be possible, depending on the system preconditions.

Limitations

This integration works only with the Quote 2.0 engine in SAP CPQ.

This integration supports only simple products and single-level configurable products.

Data Transfer in Integration Flow

The integration flow is triggered by the Place Order event in an SAP CPQ quote, that is, when the user finishes the quote process and sends the final quote to the backend, which in turn creates a sales order.

SAP Variant Configuration and Pricing is used as default mechanism for configuring and pricing sales products in SAP CPQ.

If the quote item is configurable, the quote data from SAP CPQ and the configuration data from SAP Variant Configuration and Pricing are combined and sent to SAP S/4HANA Cloud. Otherwise, only the standard product information and pricing details are transferred to SAP S/4HANA Cloud.

Products and attributes that have not been replicated from SAP S/4HANA Cloud, but created directly in SAP CPQ, are ignored in the integration flow.

Note

Behavior of Item Types in SAP CPQ Quote 2.0 and SAP S/4HANA Integration:

When Product Item Types are enabled in the SAP CPQ Quote 2.0 engine by the SAP CPQ administrator:

Only line items marked with Item Type = Base will be considered for follow-up document creation in SAP S/4HANA public and private cloud.

Following Item Types are excluded from SAP S/4HANA follow-up document creation. These item types are typically not billed to the customer, and thus are irrelevant for official transactional in SAP S/4HANA:

Optional

Variant

Alternative

Yes
No