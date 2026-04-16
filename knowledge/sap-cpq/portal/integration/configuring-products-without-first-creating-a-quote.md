# Configuring Products Without First Creating a Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/d5236938f1384089b86f8dbfd6018b15.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Calculation Pipeline for Variant Configuration Products
	
Configuring Products Without First Creating a Quote
	
Reference Characteristics and Pricing Attributes
	
Knowledge Base Diagnostics
	
Technical Overview
	
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
Configuring Products Without First Creating a Quote

By default, with the Variant Configuration integration enabled, a quote needs to be selected before you can configure a product, because the configuration obtains reference and pricing attributes from the currently selected quote. However, it is possible to set up a separate pricing procedure and set of attributes, used only when a product is being configured without first creating a quote.

Users may use this feature to explore the configuration options of a new model before selling it to a customer, without having to create an empty quote first to initiate the configuration process. After activating the toggle switch Configure products without first creating a quote, the SAP General Attribute Mappings page is split into two tabs. The original set of attributes is located in the Attributes (with Created Quote) tab. The second tab Attributes (No Quote) lists the settings that are used if there is no quote context available.

In Attributes (with Created Quote), the administrator can refer to the quote context when specifying the reference and pricing attributes. This is not possible for Attributes (No Quote), as there is no existing quote context. Regardless, the administrator should provide some meaningful defaults in this case, which can be fixed values or values retrieved from a custom table through formulas defined in the Formula Builder. The defaults chosen here depend on the specifics of your business: for example, if most products are sold to customers from a specific country/region, it should be set as the default country/region. If you are mainly trading via the Internet, you likely want to set the corresponding division as default. Typically, a minimal set of reference characteristics required to run the configuration should be specified here – in most cases, it should be enough to specify the country/region, division, and pricing procedure. The defaults used for configuration can be synchronized with any defaults used in the quote process.

Related Information
Define SAP General Attribute Mappings
Yes
No