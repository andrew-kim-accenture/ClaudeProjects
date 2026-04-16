# Calculation Pipeline for Variant Configuration Products | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/9ca7c21c68844565bdce295fff6ec39d.html?locale=en-US&state=PRODUCTION&version=2603
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
Calculation Pipeline for Variant Configuration Products

Reference and pricing attributes on products synchronized from SAP Variant Configuration and Pricing are evaluated in a specific order.

The following is an example of a formula used for Variant Configuration products. This is a formula for pricing attributes that should retrieve a value from a custom table based on a product material number (SystemId), sales organization and distribution chain, and, if the returned value is empty, use the value from the base product table instead.


<* ISNULL(<* TABLE( SELECT UoM FROM Materials WHERE SalesOrg = '<*CTX( Market.Code )*>' and DistributionChannel = '<*CTX( Pricebook.DistributionChannel )*>' and MaterialId = '<*CTX( Product.SystemId )*>' ) *>, <*CTX( Product.UnitOfMeasure )*>) *> 


Evaluation of Attributes Upon Creating a Request
All reference attributes are evaluated at the root product level (root product logic is used). Pricing attributes are evaluated at the root item product level, or at both the root and the child item product level if the Evaluated per item checkbox is selected for the attribute in question in SAP General Attribute Mappings (see Reference Characteristics and Pricing Attributes). Tags such as <*CTX( Market.Code )*> and <*CTX( Pricebook.DistributionChannel )*> can be evaluated in the product context and have the same value for all items, while the tag <*CTX( Product.SystemId )*> is evaluated as a different value for each item. 
Obtaining New Prices Upon Pricing Attribute or Pricing Procedure Change

When a user edits a quote, SAP CPQ checks whether pricing attributes or the pricing procedure are changed. If they are changed, the Reconfigure action is executed in order to retrieve new prices from SAP Variant Configuration and Pricing. If the pricing procedure or pricing attributes evaluated at the quote header level are changed, the Reconfigure action is executed for all SAP Variant Configuration and Pricing root items. This is because they affect prices for all items. If a change is detected on the value of a pricing attribute which is evaluated on the item level, the affected root item is reconfigured.

The check and the subsequent Reconfigure action are performed only if Automatically Reconfigure on Pricing Attributes or Pricing Procedure Change is enabled in General Attribute Mappings. The check is performed when the Reprice (Calculate) action is performed. Reprice (Calculate) is performed when the user changes a quote item field, a quote custom field triggers saving, or when the Save Quote action is executed. The check is also performed when customer selection is changed or when a customer field is changed.

The pricing request which is sent to SAP Variant Configuration and Pricing is captured (saved in memory and to database) for each SAP Variant Configuration and Pricing root item. When the check is performed, the pricing attributes and the pricing procedure name are evaluated again and compared to the corresponding data from the previous pricing request. If a change affecting all items is detected (pricing procedure name change or header-level pricing attribute change), the check is stopped and Reconfigure is executed for all SAP Variant Configuration and Pricing root items. Otherwise, item-level pricing attributes are evaluated and compared for each root item and its descendants. If a change is detected, the affected root items are reconfigured.

During the check, the attribute formulas are evaluated in the quote context, while during pricing request creation, they are evaluated in the product context. It is possible that some formulas that can be evaluated in the product context, such as product based CTX tag formulas, cannot be evaluated in Quote context, and therefore have empty values. If there are such attributes (whose value is evaluated as empty in the quote context, but they were not empty in the previous pricing request) they are not regarded as changed during the check, and they do not cause Reconfigure, in order for the system to avoid false positives and avoid executing the Reconfigure action too frequently. Additionally, you can always execute the Reconfigure action manually on the quote.

Related Information
Reference Characteristics and Pricing Attributes
Define SAP General Attribute Mappings
Technical Overview
On this page
Evaluation of Attributes Upon Creating a Request
Obtaining New Prices Upon Pricing Attribute or Pricing Procedure Change
Related Information
Yes
No