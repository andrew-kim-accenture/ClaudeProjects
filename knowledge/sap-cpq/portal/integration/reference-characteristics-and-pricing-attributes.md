# Reference Characteristics and Pricing Attributes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/21b0e023c74744b6960d901c9a05619b.html?locale=en-US&state=PRODUCTION&version=2603
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
Reference Characteristics and Pricing Attributes

Standard reference and pricing attributes used by SAP CPQ for the SAP Variant Configuration and Pricing integration are listed on this page. You can edit reference and pricing attributes or create custom reference characteristics in SAP General Attribute Mappings.

Any reference characteristic from SAP Variant Configuration and Pricing can be mapped to any custom field in SAP CPQ. Attributes defined in the Reference Attributes section are used for sending reference characteristics to SAP Variant Configuration and Pricing with every configuration request. Similarly, attributes defined in the Pricing Attributes section are sent with every pricing request. Attribute values (defined on the SAP CPQ side) can be either hard-coded or in the form of formulas. Reference characteristics and pricing attributes must have unique names.

Evaluating Pricing and Reference Attributes Per Item

Pricing and reference attributes are evaluated in the context of the quote header information by default. However, they can also be evaluated in the context of quote items. You can enable that by editing a pricing attribute and selecting the checkbox Evaluated per item. In General Attribute Mappings, pricing attributes for which this checkbox is selected are marked as True in the Evaluated per item column. As a result, tags such as <*CTX( Product.SystemId )*>, <*CTX( Product.UnitOfMeasure )*>, <*CTX( Product.PartNumber )*> can be used in attribute formulas, and therefore, a pricing attribute or a reference attribute value can differ from item to item. For more information, see Calculation Pipeline for Variant Configuration Products.

Evaluating Pricing Attributes as Multiple Values

Pricing attributes can resolve as multiple values, which are subsequently sent to the back-end system. This behavior is controlled via the toggle switch Resolve as multiple values, located next to the pricing attribute formula, which permits the system to send more than one result of formula evaluation to the back end. If the formula specified for a pricing attribute resolves into multiple values, and the toggle switch is enabled, multiple results are sent once the system evaluates that formula. If the switch is disabled, only one value can be sent to the back-end system as the result. This option can be enabled for pricing attributes used both with and without a previously created quote. You can also specify a default separator that will be used between these multiple values, as explained in Define SAP General Attribute Mappings.

Reference Characteristics
SAP CPQ uses the following reference characteristics (attributes) for the configuration context:

Context Keys

	

Context Values

	

Match in SAP CPQ




VBPA_AG-LAND1

VBPA_RG-LAND1

	

SAP country/region code (two-character code)

	

Country/region/region code




VBAP-MATNR

	

SAP root material ID (internal format)

	

System Id




VBAP-KWMENG

	

1

	

1




VBAK-VTWEG

	

Distribution channel

	

Distribution channel in pricebooks




VBAK-VKORG

	

Sales organization

	

Market code




VBAK-SPART

	

Division

	

Division




VBAK-KUNNR

VBPA_AG-KUNNR

VBPA_RG-KUNNR

	

SAP customer ID

	

Ship-to customer (for VBAK-KUNNR);

Bill-to customer (for VBPA_AG-KUNNR and VBPA_RG-KUNNR)




VBAK-ERDAT

	

Creation date

	

Effective date

Pricing Attributes
The following attributes are used when sending the price inquiry over SAP Variant Configuration and Pricing:
Note

You can use formulas to edit some of these parameters. Note that this should be set up by an expert and is done at your own risk.

Level

	

Attribute Name

	

Description




Item (product)

	

KOMP-PMATN

	

Material number




KOMP-SPART

	

Division




KOMP-PRSFD

	

Set to X




Header (business partner) - Quote, Customer in CPQ

	

KOMK-VKORG

	

Sales organization




KOMK-VTWEG

	

Distribution channel




KOMK-SPART

	

Division




KOMK-LAND1

	

Country/region key




KOMK-KUNNR

	

Customer code




KOMK-WAERK

	

Currency code of the selected market




KOMK-PRSDT

	

Item Pricing Date




KOMK-FBUDA

	

Item Service Date

Related Information
Calculation Pipeline for Variant Configuration Products
Define SAP General Attribute Mappings
Technical Overview
On this page
Reference Characteristics
Pricing Attributes
Related Information
Yes
No