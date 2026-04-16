# Purpose | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/fe30d316460c4e43bfb94a8df9d1ad61.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP S/4HANA Sales Order Integration for Quote 2.0Version: 2603English
Provide feedback on our search

	
Purpose
	
System Requirements
	
Prerequisites
	
Configuration in SAP CPQ
	
SAP S/4HANA Configuration
	
SAP Cloud Integration Configuration
	
Sales Area
Purpose

Learn how to configure the basic integration between SAP CPQ Quote 2.0 and sales orders in SAP S/4HANA using SAP Cloud Integration.

Integration Overview

SAP CPQ can be integrated with SAP S/4HANA to provide a workflow for users to automatically create a sales order in SAP S/4HANA whenever a SAP CPQ quote is sent to SAP S/4HANA. The follow-up documents are then created in SAP S/4HANA automatically.

To enable the creation of SAP CPQ quote based on SAP S/4HANA data, the system first copies product master data and business partner master data from SAP S/4HANA into SAP CPQ. By default, when business partners and products are copied into SAP CPQ, the system uses the existing SAP CPQ concepts of markets and pricebooks.

If you want to use the Sales Area concept from SAP S/4HANA, which adds an extra dimension to product and business partner modeling, you need to enable the Sales Area feature in SAP CPQ. To request the activation, please submit a support ticket on component CEC-SAL-CPQ.

Note

When you enable the Sales Area feature, quotes that do not include sales area data—such as sales organization, division, and distribution channel—are not visible in SAP CPQ Quote 2.0. If you later disable the Sales Area feature, quotes created while the feature was enabled are also not visible because they do not have the required market and pricebook data.

Product Display Types
This integration supports:

Simple products

Single-level configurable products

Multi-level nested products

You can apply discounts at root-level items. However, discounts at sub-item level are not supported.

Product Item Types

When Product Item Types are enabled in the SAP CPQ, only line items marked as Item Type = Base are considered for follow-up document creation in SAP S/4HANA. Item Types such as Optional, Variant, and Alternative are excluded, as they are typically not billed to the customer and are irrelevant for official transactions in SAP S/4HANA.

Data Transfer in Integration Flow

The integration flow is triggered by the Place Order event in an SAP CPQ quote, that is, when the user finishes the quote process and sends the final quote to the backend, which in turn creates a sales order.

SAP Variant Configuration and Pricing is used as default mechanism for configuring and pricing sales products in SAP CPQ.

If the quote item is configurable, the quote data from SAP CPQ and the configuration data from SAP Variant Configuration and Pricing are combined and sent to SAP S/4HANA. Otherwise, only the standard product information and pricing details are transferred to SAP S/4HANA.

Products and attributes that have not been replicated from SAP S/4HANA, but created directly in SAP CPQ, are ignored in the integration flow.

Authentication

The setup instructions in this guide only describe the basic authentication. Nevertheless, a certificate-based authentication might also be possible, depending on the system preconditions.

Related Information
Sales Area
Yes
No