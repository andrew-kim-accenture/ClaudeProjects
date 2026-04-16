# Select Pricing Procedure in SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/b85d0bff573b4e15b7a8c2542a4ec9d4.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Pricing Procedures from SAP Variant Configuration and Pricing


	
Select Pricing Procedure in SAP CPQ
	
Determinations
	
Define Pricing Condition Mapping
	
Allowed Value Combinations
	
Pricing Condition Mapping on Quote
	
Calculations for Variant Pricing Items
	
Calculations for Combined SAP CPQ and Variant Pricing Items
	
CPQ Line Items Calculations and Fields
	
CTX Tags for Fields Mapped from Pricing Conditions
	
Example Procedure for Mapping Pricing Conditions
	
Order Creation/Update Mapping
	
Set Up Pricing Procedure in SAP ERP
	
Map Pricing Response to Quote Columns
	
Pricing Details on Items
	
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
Select Pricing Procedure in SAP CPQ

Complete the procedure outlined below to add a pricing procedure from the back-end system to SAP CPQ.

Procedure
Go to Setup  Pricing/Calculations  Pricing Procedures.
Click Add New Pricing Procedure.

The list of procedures that can be synchronized from SAP Variant Configuration and Pricing is displayed.

Select the pricing procedures which you want to synchronize into SAP CPQ.
Click Add.
The selected procedures now display in the list.
Note

Click Details next to a pricing procedure to inspect the determinations for that procedure and to define pricing condition mappings.

Note

If a pricing procedure, which was synchronized to SAP CPQ, is subsequently modified in SAP S/4HANA, administrators can resynchronize that pricing procedure by clicking Resync in Setup  Pricing/Calculations  Pricing Procedures  Actions to ensure that the new version of the procedure is used.

To configure additional settings, open the Settings tab. The following options are available:
In Document Pricing Procedure Name, enter the value which will be used for determining which pricing procedure is used on the quote when pricing conditions are mapped in SAP CPQ. For more information see Determinations.
In Customer Pricing Procedure Name, enter the value which will be used for determining which pricing procedure is used on the quote when pricing conditions are mapped in SAP CPQ. This field is not required. For more information see Determinations. Dynamically mapping conditions based on item values enables users to define two different conditions to be mapped to the same column. Functionality and visibility of the new column on the pricing procedure mappings page is controlled by the parameter Use formula for Condition determination located on Setup   Pricing/Calculations   Pricing Procedures   Setting.
In the Custom Values/Sources (formula supported) for a sales organization to be used for the pricing procedure determination so you don’t have to rely on markets which are currently tightly coupled with currencies under Setup  Pricing/Calculations  Pricing Procedures  Settings  Sales Organization. If the sales organization isn't specified in the market mappings on quote creation, the sales organization from the quote will be used as the default value.
Enable Condition Reset: Activates that users can reset the value of any manually priced condition for a field in an item on a car. For example, a discount..
In the Sort Order field, you can define in which order items are processed in a pricing document. If a sort order isn’t specified when items are created, items will be processed in the order in which they were added to the quote and the pricing document. The current item’s child items are processed before other items regardless of the order items’ sort order priority.
In the Item-Specific Pricing section (format YYYY-MM-DD) on the item level, under Setup  Providers  SAP Integrations   General Attribute Mappings  Item-Specific Pricing.

KOMK-PRSDT

Date for pricing and exchange rate: Item Price Date.

KOMK-FBUDA:

Date when services are rendered: Item Service Date.

Using formulas in division parameters on header and item levels KOMK_SPART, KOMP_SPART, and KOMK-LAND1 under Setup  Providers  SAP Integrations  General Attribute Mappings  Pricing Attributes.

You can define formulas for:

Division header field KOMK_SPART.

Division item field KOMP_SPART.

KOMK-LAND1 if the Country/Region Code is defined in General Attributes. These Attributes contains only 2 characters value. For existing clients the default settings should stay the same - both parameters should stay the same.

For more information, see Reference Characteristics and Pricing Attributes.

Note

Clients are defining these parameters on their own responsibility.

Pricing attributes KOMK-VKORG(Sales organization) and KOMK-VTWEG(Distribution channel) and Reference characteristics VBAK-VKORG(Sales organization) and VBAK-VTWEG(Distribution channel) under Setup Providers SAP Integrations General Attribute Mappings Pricing Attributes can be redefined using formulas:

The default value of the KOMK-VKORG and VBAK-VKORG is <*CTX( SalesArea.SalesOrganization )*>.

The default value of the KOMK-VTWEG and VBAK-VTWEG is <*CTX( SalesArea.DistributionChannel )*>.

Click Save to save your changes.
Related Information
Pricing Condition Mapping on Quote
On this page
Procedure
Related Information
Yes
No