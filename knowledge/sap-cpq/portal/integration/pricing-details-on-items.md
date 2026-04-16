# Pricing Details on Items | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/f5fa0136edbe4de9b1821405d4653e23.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
Variant Configuration Integration


	
Introduction to the Variant Configuration Integration
	
Integrate SAP CPQ with SAP Variant Configuration and Pricing
	
Define SAP General Attribute Mappings
	
Knowledge Base Diagnostics
	
Technical Overview
	
Pricing


	
Pricing Procedure Mapping
	
Set Up Pricing Procedure in SAP ERP
	
Map Pricing Response to Quote Columns
	
Pricing Details on Items


	
Setting Visibility of Pricing Details on Items
	
Pricing Behavior for Products Created/Edited via SOAP API
	
SAP Variant Configuration and Pricing Log
	
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
Pricing Details on Items

The Pricing Details on Items feature allows sales representatives to view or edit pricing details on quote items for products synchronized from SAP Variant Configuration and Pricing.

With all the relevant pricing information present in SAP CPQ at the item level (similar to how it's presented in SAP S/4HANA), sales representatives no longer need to switch between systems to find more information on pricing procedure breakdown. Sales representatives can also manually change pricing conditions that are marked as editable. For example, they can add a pricing condition returned in the payload from SAP Variant Configuration and Pricing, even if that condition isn't present in the current SAP CPQ mapping.

Benefits

Single place for all relevant quoting information: Sales representatives can view pricing details on a quote item directly in SAP CPQ without the need to switch between systems.

Drilldown view of pricing procedure with just the information you need: Unlike the column view of pricing procedure with all pricing conditions, the Pricing Details table displays, in individual rows, only the pricing conditions that currently determine the price of a particular quote item.

Quick editing of pricing procedure: Sales representatives can edit the existing pricing conditions and charges, or add new ones, if these changes are allowed.

Feature access control: Admins can set which users have access to the pricing details and at which step of the quotation process.

Faster quotation time: The Pricing Details table saves time because sales representatives can quickly view which pricing conditions influence a particular quote item and make changes directly in the table.

Easy enablement: No configuration steps are required. Admins don't need to map pricing response to columns to enable this feature. The Pricing Details table is available out of the box.

Key Features

Sales representatives can view pricing details on a quote item directly in SAP CPQ.

Sales representatives can edit the existing pricing conditions with associated charges, or add new ones, if these changes are marked as editable.

Sales representatives can add additional charges, which are displayed as new columns in the pricing details table.

Sales representatives can delete existing pricing conditions.

When sales representatives have made all the changes to pricing details, they can save them in one go.

All changes made in the Pricing Details table for a quote item are reflected in the column view of the entire pricing procedure for that quote item and vice versa.

Admins can set who has access to the feature and at which step in the quotation process.

For more information on how to use the feature, see Pricing Details on Items in the User Guide.

Related Information
Setting Visibility of Pricing Details on Items
On this page
Benefits
Key Features
Related Information
Yes
No