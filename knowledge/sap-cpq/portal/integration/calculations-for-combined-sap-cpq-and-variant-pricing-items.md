# Calculations for Combined SAP CPQ and Variant Pricing Items | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/059954e0e2b84bf1b76699455b08f45d.html?locale=en-US&state=PRODUCTION&version=2603
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
Calculations for Combined SAP CPQ and Variant Pricing Items

If you are using SAP Variant Configuration and Pricing as your pricing service and you mapped pricing procedures from SAP S/4HANA to quote fields, you need to assign the necessary calculations to quote fields in Setup  Quotes  Fields, Calculations, Layout  Fields and Calculations.

To enable combined SAP CPQ and variant pricing items on the same quote, you need to make settings on the Pricing Procedures page in SAP CPQ.

Back-End Pricing Settings

Pricing procedures settings control which system the pricing for quote totals is retrieved from.

Switch on (Activated)

When the Use Back-End Pricing on Quote Totals switch is active (default setting), the system behaves as described in Calculations for Variant Pricing Items. In this scenario, the combination of SAP CPQ and variant priced products is not allowed.

Switch off (Deactivated)

To enable combined SAP CPQ and variant pricing items on the same quote, the Use Back-End Pricing on Quote Totals switch on the Pricing Procedures settings page needs to be deactivated (switched off).

If this option is disabled, you can't define mappings for quote totals, but existing mapping values will be retained in case you decide to enable this option in the future. In addition, the Variant Pricing - All Item Total Fields calculation won't have any effect. Calculation of totals will be done by SAP CPQ.

Note

To end up with valid prices, the rounding setup has to be configured the same on the SAP Variant Configuration and Pricing and on SAP CPQ sides.

When the Use Back-End Pricing on Quote Totals switch is disabled, the system behaves as follows:

On the Pricing Conditions Mapping page, there is no option to map header-level fields. Previously mapped fields are still visible but not editable.

The variant calculation for total fields is executed without any effect.

The PriceUnit is not present on the quote total view model. When the Quotes API is called, the pricing conditions list on the header level is empty.

The discount percent column on the header level is visible.

Totals include both SAP CPQ and variant priced products so that calculations will include totals regardless if the products are coming from SAP CPQ or the SAP Variant Configuration and Pricing source. The rules that will apply are that the standard calculations are executed only on SAP CPQ items, and standard total calculations are executed for both SAP CPQ and variant pricing items.

Set up the Combined Calculations

To set up the combined calculations of SAP CPQ and SAP Variant Configuration and Pricing items, you have to know the following information.

Create Item

Calculations on the actions Add/Copy/Delete are executed when the item is being created. All standard SAP CPQ calculations are executed at that moment (except calculations for Product Types that are not supported with document pricing), but also two SAP Variant Configuration and Pricing calculations Variant Pricing - All Item Fields. These calculations calculate prices for the variant items and on the header level, they participate in the total fields calculation. The total fields on the header level are calculated in SAP CPQ only.

Variant calculations on the item level should be executed on every change that is relevant to variant pricing items in order to fetch the prices from SAP Variant Configuration and Pricing. Standard SAP CPQ calculations will not be executed on variant pricing items.

Totals

Editability

The Field Editability on the header level depends directly on all the item fields on the quote. If only one item field is not editable, the header level field change is discarded and reverted to the previous value.

The possibility to edit fields on the total level is only possible when all the fields on item level are editable to avoid errors:

Total Field Editability is calculated by SAP CPQ only in the case when using combined products on the same quote.

Editability on the item level is calculated by SAP CPQ and SAP Variant Configuration and Pricing, and on the total level it is calculated based on item level editability. The total field becomes editable, but when you change the field, the system checks whether the field is editable on all items. If this is not the case, the change is reverted.

Calculations

Calculations on the total level need to be re-factored slightly by adding all standard item level calculations in the appropriate order. After this calculation, the Standard Variant Pricing - All Item Fields get the new state of pricing and now fetch all new prices from SAP Variant Configuration and Pricing. SAP CPQ calculations can now be triggered on top of SAP Variant Configuration and Pricing calculations when the quote contains both item types.

In case there is a warning from SAP Variant Configuration and Pricing that there is a condition with limitations and that the entered value is not allowed, a mechanism for a revert action is offered to the user. If the user tries to enter not-allowed values on the item or header levels, or if the payload with a warning is received, all changes are reverted to the previous state. This prevents the user from entering an invalid value for the condition.

Example
Example order:

For the item One-Time Discount Percent (from Total One-Time Discount Percent), all standard calculations get added and remain unchanged.

Then, variant pricing items are added to the calculation: Variant Pricing -Calculate Item Fields.

Finally, all variant pricing item fields are added Variant Pricing –All Item Fields.

This calculation prorates change from the total field to item discount percent on all fields (SAP CPQ and SAP Variant Configuration and Pricing item fields).

Related Information
Calculations for Variant Pricing Items
On this page
Back-End Pricing Settings
Set up the Combined Calculations
Related Information
Yes
No