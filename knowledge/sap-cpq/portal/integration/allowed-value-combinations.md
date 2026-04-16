# Allowed Value Combinations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/274badd2a21846e281a64c898e321d50.html?locale=en-US&state=PRODUCTION&version=2603
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
Allowed Value Combinations

Described here are the combinations of values in pricing condition mapping that you need to know and follow in order to define valid mappings.

For every mapping, either a quote item or a quote header field must be selected. If mapping rows are created, but no field is selected, the rows disappear on saving the page. If invalid data is specified for a mapping, changes can’t be saved. Error information about invalid mappings is displayed as a hint in the mapping row.

No more than one mapping can be defined for one quote header field.

If multiple mappings are created for one pricing condition, only one mapping can be defined for every quote item field. Multiple mappings for the same quote item field can exist only with different pricing conditions.

Quote fields related to cost are available in the list of possible quote item or quote header fields.

If the pricing condition is recurring, Pricing Frequency can only be Monthly or Yearly and one of these options is selected by default. Pricing Frequency is determined based on the Calculation Type, and in case a pricing condition is recurring, only the values provided by default are available.

Pricing Frequency can only be defined for quote item fields.

Pricing Frequency is visible and can be defined only for the first mapping for a pricing condition. The frequency selected for the first mapping applies to all other quote item mappings of the same pricing condition. This field can’t be edited for those mappings.

Note
In condition details, some types of pricing conditions are flagged according to the type of fields to which they can be mapped. The following combinations exist in this case:

Is item condition – Yes, Is header condition - Yes (can be mapped to both quote item and header fields)

Is item condition – Yes, Is header condition – No (can be mapped to quote item fields, but also to quote header fields if the condition is a sum of the values of other quote item fields)

Is item condition – No, Is header condition – Yes (can be mapped only to quote header fields)

If a pricing condition can only be mapped to quote header fields, the Pricing Frequency field for that condition is empty and not editable.

If a pricing condition can be mapped to both quote item and quote header fields, or the condition is a subtotal, but it is mapped only to quote header fields, the Pricing Frequency field for that condition is empty and not editable.

Variant conditions can be mapped and subtotal can be defined for them.

If a pricing condition can be mapped to both quote item and quote header fields, or the condition is a subtotal, and it is mapped to both quote item and quote header fields or only to quote item fields, the Pricing Frequency field for that condition is editable. The default value of Pricing Frequency is determined based on the calculation type of the pricing condition (M - Monthly, N - Yearly, C - One-Time, and Any for other calculation types).

If a pricing condition can be mapped to both quote item and quote header fields, or the condition is a subtotal, a maximum of eight mappings can be created for that condition. It’s possible to have three item field mappings when Rate is selected in the Rate/Value field, and an additional three item field mappings when Value is selected in the Rate/Value field. All mappings must have different Order Item Type values. Regarding the quote header mappings, you can only add two: one when Rate is selected and one when Value is selected. The following combinations are possible:

Quote item field, Rate under Rate/Value, Sales under Order Item Type.

Quote item field, Rate under Rate/Value, Subscription under Order Item Type.

Quote item field, Rate under Rate/Value, Service Contract under Order Item Type.

Quote item field, Value under Rate/Value, Sales under Order Item Type.

Quote item field, Value under Rate/Value, Subscription under Order Item Type.

Quote item field, Value under Rate/Value, Service Contract under Order Item Type.

Quote header field, Rate under Rate/Value.

Quote header field, Value under Rate/Value.

Tip

If two mappings are defined for a condition, and a quote item field is selected for each mapping, the Rate/Value field must be defined differently for each mapping (Rate for one and Value for the other). Otherwise, an error message appears, and the changes can’t be saved. The same limitation applies in the case when the same condition is mapped twice to quote header fields.

It's possible to select more than one Order Item Type per pricing condition mapping.

If a pricing condition is not a subtotal and is defined as Is item condition - Yes, Is header condition - No in the condition details, both quote item and quote header fields can be selected for that condition. A header field can be mapped in case this pricing condition sums up all other quote item fields. For such conditions, a maximum of eight mappings can be created, and the following combinations are possible:

Quote item field, Rate under Rate/Value, Sales under Order Item Type.

Quote item field, Rate under Rate/Value, Subscription under Order Item Type.

Quote item field, Rate under Rate/Value, Service Contract under Order Item Type.

Quote item field, Value under Rate/Value, Sales under Order Item Type.

Quote item field, Value under Rate/Value, Subscription under Order Item Type.

Quote item field, Value under Rate/Value, Service Contract under Order Item Type.

Quote header field, Rate under Rate/Value.

Quote header field, Value under Rate/Value.

If a pricing condition is not a subtotal and can only be mapped to quote header fields, a quote item field can’t be selected for that condition. In addition, the Order Item Type will be empty and not editable. For such conditions, no more than two mappings are allowed, and the following combinations are possible:

Quote header field, Rate under Rate/Value.

Quote header field, Value under Rate/Value.

Display Unit is disabled for pricing condition mappings where Value is selected under Rate/Value. If Display Unit is enabled when you change Rate/Value to Value, the Display Unit toggle switch automatically becomes disabled.

Invert Value is disabled when the condition class for a pricing condition is Prices(B), which is visible in the condition details.

Invert Value can only be specified for the first mapping for a pricing condition. The selection applies to all mappings for that condition.

Yes
No