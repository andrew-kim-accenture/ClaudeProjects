# Define Pricing Condition Mapping | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/1f5bcafda155485599284b3a973d7566.html?locale=en-US&state=PRODUCTION&version=2603
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
Define Pricing Condition Mapping

In Pricing Condition Mappings, you need to create mappings for the pricing conditions from the selected procedure that are sent from SAP Variant Configuration and Pricing to SAP CPQ.

You can define mappings between pricing conditions from the back-end system, and quote item columns and item total columns in SAP CPQ. Pricing conditions aren’t editable in SAP CPQ, since they are retrieved from SAP Variant Configuration and Pricing as read-only data.

Click Manage Conditions.

A list of conditions from the selected pricing procedure is displayed.

Select the pricing conditions that you want to map and display on the quote.

Click Add.

The selected pricing conditions are displayed.
Note

With SAP CPQ using document pricing with Quote 2.0, all pricing conditions received from SAP Variant Configuration and Pricing are exposed, even those that are not mapped. For more information, see Conditions in Quote 2.0 Exposed in Scripting and Quotes API below.

Tip

Click Details next to a pricing condition to inspect the condition details from the back end (for example, the condition class, whether the condition is a subtotal, can be mapped only to item or header fields, or both).

This information is read-only. For more information about the data imported from the back end, see the SAP Variant Configuration and Pricing documentation.

Define mappings for the added pricing conditions by populating the row of fields displayed next to the condition.

A detailed explanation of the function of the displayed fields is provided in the table.

Field

	

Use




Step

	

The unique identifier of a pricing condition. This value is automatically synchronized from the back end.




Pricing Condition

	

The pricing condition from the back end. This value is automatically synchronized from the back end.

If the pricing condition is a subtotal, a value exists for it under Step, but the Pricing Condition is empty.




Name

	

The descriptive name of the pricing condition. This value is automatically synchronized from the back end.




Pricing Frequency

	

Select One Time, Monthly, Yearly or Any. The pricing frequency of the mapping needs to match the quote item price period so that the mapping is applied.

For example, there can be two pricing conditions for the recurring base price, one of which is monthly, and the other one yearly. In SAP CPQ, these conditions are both mapped to the same quote item field, but with different values in the Pricing Frequency field. Consequently, only the mapping with the Pricing Frequency value that corresponds with the item pricing period will be used on the quote. The same mechanism applies for one-time prices.

The Calculation Type of the pricing condition determines the predefined values for Pricing Frequency. For example, the calculation type M preselects the frequency Monthly (which can’t be changed in SAP CPQ). In the same way, the calculation type N corresponds with Yearly. The calculation type C corresponds with One-Time, which is editable in SAP CPQ. In case of discount conditions (which are applied the same way regardless of the item price period), you need to select Any.




Rate/Value

	

Select Rate or Value. Rate is the price per unit, and Value is the total price for the entire quantity. The unit can be displayed on the quote only if Rate is selected for the condition.




Quote Item

	

Select the quote item field which you want to map to the pricing condition. You can either select a quote item field or a quote header field for a specific mapping. The quote item custom fields created for condition mapping can have the type Currency (for prices) or Number (for percent values, in case of discounts).




Quote Header

	

Select the quote header field which you want to map to the pricing condition. You can either select a quote item field or a quote header field for a specific mapping.




Order Item Type

	

Select one or more order item types. For more information see the dedicated document.




Scaled Condition

	

If the toggle for Scaled Condition is enabled, it indicates that the specific pricing condition supports tier pricing. If the toggle is disabled, you cannot use that pricing procedure for tier pricing calculations. This field supports the configuration of a default tiered table for scaling conditions. You can map different pricing conditions for redefining the scaled table if necessary. The active condition for the redefined tiered table can be determined using a formula. The scaled condition toggle can only be enabled when the order item type, or one of the order item types, is "subscription".




Invert Value

	
Note

This column isn’t visible by default. You can enable it by clicking  and selecting Invert Value.

If the toggle switch for Invert Value is enabled, the negative value from the back end is displayed as a positive value on the quote. In addition, if the Plus/Minus flag in condition details in the back end is set to X(Negative) on a pricing condition (for example, in case of discounts), the Invert Value toggle switch is always enabled and read-only for all mappings created for that pricing condition.

Discounts in SAP S/4HANA have a negative value, but inSAP CPQ, this value is displayed as a positive on the user interface (without any impact on the functionality of discounts). In case of a discount condition, the back-end system always sends a negative value to SAP CPQ, and it is always displayed as positive because the Invert Value toggle switch is enabled by default.

Consider the following example: If you enter a 10% discount in SAP CPQ, it will be sent to the back end as a positive value (+10%). The value returned from the back end will be negative, but it will be displayed as positive in SAP CPQ. However, if you enter a -10% discount, it will be sent to the back end as a negative value (-10%), and the return value will be negative, but it will also be displayed as positive. In conclusion, SAP CPQ always sends the discount value as it was entered by the user (positive or negative) to the back end, but since the discount condition is always flagged as negative, the back-end system will take the absolute value and add a negative sign.




Display Unit

	

If the toggle switch is enabled, the unit for the pricing condition is displayed on the quote (for example: per each, or per stack). This option is available only if Rate is selected for the pricing condition mapping.




Determination Formula

	

This input field enables to define a formula for the current item context when adding a new manual condition.

When you add a new manual condition while the parameter is active and one of the item fields has been changed, all mappings for that field will be fetched and all the formulas will be evaluated. Only one formula should return a predefined value 1, and mapping for that condition type should be used. If there are several formulas with that predefined value, an error occurs.

When the mapping is determined, SAP Cloud Integration gets called with the appropriate condition type. Once the mapping has been determined based on a formula for the cart item, there will no re-determination.

Note

This feature supports using header fields as well but only in case that switch option Use Back-End Pricing on Quote Totals is not selected (possibility to have mixed variant pricing products and SAP CPQ pricing products on the same quote).

In addition to the first mapping, you can create multiple mappings for a single condition by clicking   Add.

With multiple mappings, you can map both Rate and Value, and you are able to map a header-level condition to an item total field. See Allowed Value Combinations for more information on how to define multiple mappings.

You can expand and collapse all the mappings assigned to a single condition. The Details button is displayed only in the row of the first condition mapping.

Click Save.

The mappings you defined can now be applied on the quote.

Conditions in Quote 2.0 Exposed in Scripting and Quotes API
With SAP CPQ using document pricing with Quote 2.0, all pricing conditions received from SAP Variant Configuration and Pricing are exposed, even those that are not mapped. Administrators can use them in SAP CPQ API calculations and scripts afterwards to populate other line item custom fields. See the SAP CPQ APIs on the SAP Business Accelerator Hub under https://api.sap.com/package/SAPConfigurePriceQuoteQuote2.0/rest.
Note

This feature is only valid for Quote 2.0 and in the case where pricing condition mapping is enabled and pricing data is sent from SAP Variant Configuration and Pricing to SAP CPQ.

The integration architect can read the entire line item level data including all pricing conditions and subtotals and use the data in downstream processes:

Mapped conditions are part of the payload.

Not mapped conditions are part of the payload.

Subtotals are part of the payload in addition to the condition types, such as SAP Variant Configuration and Pricing aggregates and specific steps into subtotals labeled “1” = 5000.00, “2” = 700.00, ”A” = …, “B” =.

Yes
No