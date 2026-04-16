# Sales Logic for Variant Configuration Models | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/bbbcea580d84486ca19ccf472f2091ec.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Quote-First Approach for Variant Configuration Integration
	
SAP Sales Area in SAP CPQ
	
Sales Logic for Variant Configuration Models
	
Pricing
	
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
Sales Logic for Variant Configuration Models

The sales logic for Variant Configuration (VC) models allows administrators to enrich the rules evaluated in backend systems with an additional set of rules that adapt to dynamic attribute changes in product models. They can define complex configuration rules for both legacy variant configuration (VC) and advanced variant configuration (AVC) product models.

This sales logic equips SAP CPQ with capabilities tailored specifically for sales personnel. It enables them to handle complex business requirements within the SAP CPQ system as their preferred sales solution.

Based on business requirements, administrators can create complex scripts that define how a change in one characteristic influences changes in related characteristics. This means that when a sales representative selects one attribute value in the quote, the SAP CPQ system automatically sets the values of other characteristics based on per-defined conditions. For example, a company may want to boost the sales of certain product models by defining a set combination of product variations that are applicable for a promotion. Suppose a company has below-average sales for last season's mini fridge model Sierra in mint color. To clear the inventory, the company may offer it with an additional 10-year guarantee to the student population. So, when a sales representative selects mini fridge in the quote, the system also automatically selects mint as a color, 60l capacity, and an additional 10-year guarantee. In this example, the mini fridge is a key attribute or characteristic whose selection influences changes in other characteristics.

In the Scripts section of a selected product in Setup, administrators can configure complex rules for many product combinations at once. To apply these rules when a key attribute changes in the quote, add the method Product.ApplyRules() at the end of the script. Then, select the event When product rule execution ends. This will attach the script to the event. The event When product rule execution ends allows admins to extend the sales logic on any attribute change even after backend rules are executed. Note that this event is applicable only to products that are of configuration type Variant and are synced from Backoffice.

The defined rules in the script are executed only when a sales representative initiate a change in the key characteristic from a quote. At that point, updated values are sent to Variant Configuration and Pricing Service where additional checks are performed. If requested changes are allowed and values exist in the backend system, the Variant Configuration and Pricing Service will send a response with the updated values. In case of any conflict, the problematic attribute value is left unassigned in the quote.

Yes
No