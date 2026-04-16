# Define SAP General Attribute Mappings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/5aa078cb64d143e3839229fc10a23550.html?locale=en-US&state=PRODUCTION&version=2603
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
Define SAP General Attribute Mappings

After connecting SAP CPQ to SAP Variant Configuration and Pricing, you need to map general attributes.

Procedure

Note

With scripting and APIs, cost can be mapped in the pricing procedure mappings, variant conditions can be mapped in pricing procedure mappings, and CPQ default discount is supported when the document pricing is used.

Go to Setup   Providers   Providers   SAP.

Available SAP providers display.

Click SAP General Attribute Mappings.

A new page displays.

Under Global Attributes, fill out the following fields:
(Optional) In Country/Region Code, enter a two-character country/region code (for example, US).

A country/region code should be used only if Variant Configuration runs product rules that rely on the country/region code. Additionally, if you need to dynamically build a country/region code, you can do so by clicking  to build a formula. When using a CTX tag, the tag also needs to return two characters.

This is not a mandatory setting. This value is used for the execution of product rules and pricing procedure evaluation in SAP Variant Configuration and Pricing. If it is not used for either of those, please skip this setting.

In Division, enter a two-character code representing the SAP ERP division (for example, 01). Click  to build a formula to dynamically retrieve the value for this field. Division is also used for determining which pricing procedure is used on the quote when pricing conditions are mapped in SAP CPQ. For more information see Determinations.
In Pricing Procedure Name, enter the name of the pricing procedure (for example, ZRt52t), which you obtained from SAP ERP. See Set Up Pricing Procedure in SAP ERP.

This pricing procedure will be used for calculating pricing for configurable products that are synchronized between SAP ERP and SAP Variant Configuration and Pricing. Additionally, if you need to dynamically build a pricing procedure name, click  to build a formula.

In Pricing Procedure Name for Catalog Prices, enter the name of the pricing procedure used for obtaining base price values for synchronized products and displaying them in the Catalog. In a typical use case, this pricing procedure contains the base price calculation. It is less complex than the pricing procedure used for obtaining both the base price and variant condition values. Setting up a pricing procedure and maintaining it in SAP ERP is explained in Set Up Pricing Procedure in SAP ERP.
In Exchange Rate Type, define the key that determines which exchange rate will apply for each currency pair. The default value is M (average rate). You can also use a CTX tag, for example to retrieve a custom field, or build a formula with  to dynamically build the exchange rate type.
Under Pricing During Configuration, fill out the following fields:
In Source of Pricing Details, select Condition Function to source the back-end system pricing details from a condition function, or Condition Type to source the pricing details from multiple condition types which you can manually add.

Values for the base price and selected options can be retrieved from condition types in case the relevant condition functions aren’t present in the response from SAP Variant Configuration and Pricing. The condition functions or condition types which you provide are used to calculate the base price and the selected options of synchronized products. If no condition function or types are specified, the default values for base price and selected options are BASE and VARC, respectively. If invalid conditions are entered (that is, if the values entered for Base Price and Selected Options don't match the same values in the back-end system), the base price is calculated as 0.

In Base Price, enter the base price value or click  to build a formula that dynamically obtains the value. The default Base Price value is BASE. This value also needs to be maintained in SAP ERP. See Set Up Pricing Procedure in SAP ERP, where the example value ZSS1 is used instead of BASE.
In Selected Options, enter the condition function or the condition types used for calculating the breakdown and the total of the selected price-related options. Additionally, if you need to dynamically build the value for this field, click  to build a formula. The default Selected Options value is VARC. This value also needs to be assigned to variant condition types in SAP ERP. See Set Up Pricing Procedure in SAP ERP.
In Automatically Reconfigure on Pricing Attributes or Pricing Procedure Change, if TRUE is selected, whenever the following entities are changed in a quote, SAP CPQ checks if the pricing procedure or pricing attributes for the quote items have changed:

customers

customer fields

quote custom fields

quote item custom fields

If they are different, the quote items are reconfigured. For more information, see Calculation Pipeline for Variant Configuration Products.

Enter a Pricing Attribute Value Separator if you allowed pricing attributes to resolve as multiple values (by enabling the option Evaluate as multiple values), and you want to define a default separator that is used between these values. The default value for the separator field is the pipe symbol |. If the formula specified for a pricing attribute introduces a new separator using the list tag, it must be reverted to the default separator at the end of the formula, as seen in this example formula: <*SETLISTSEPARATOR(,)*><*LIST(SELECT Value FROM Multivalued)*><*SETLISTSEPARATOR(|)*> (in this example, Multivalued represents the name of a custom table). For information on list separator tags, see SETLISTSEPARATOR Tag1.0.
Under Item-Specific Pricing, you can set the standard item-specific pricing date mappings and introduce new ones.

Standard pricing dates whose mappings you can modify are: Item Pricing Date (KOMK-PRSDT) and Item Service Date (KOMK-FBUDA). You can also use formulas or set absolute values to define additional pricing date mappings, such as Billing Date, Creation Date, Order Date, or any date of a choice that can be evaluated per quote item.

Note

These mappings are part of the AccessDateList section of the payload sent to SAP Variant Configuration and Pricing.

Under Reference Attributes and Pricing Attributes, you can edit the standard reference characteristics used in integrations with SAP systems, or create custom reference and pricing attributes. See Reference Characteristics and Pricing Attributes.
Note

To be able to configure products without having to create a quote first, see Configuring Products Without First Creating a Quote.

Click Set Determination Events to assign a dedicated event to quote fields and partner functions which triggers the determination of pricing attributes when that quote field is edited or when that partner function is used or modified on the quote in an involved party. This button is available only on Quote 2.0 environments for attributes that work with a previously created quote.

Changing the fields Market, Pricebook and Contract Duration triggers the determination of pricing attributes by default. However, any quote custom fields or quote item custom fields that are referenced in the Value column of pricing attribute definitions must be included in the list of determination events. When the determination event is triggered, the pricing attribute used on the quote is calculated according to the formula defined for that attribute on this page. If the pricing attribute used on a quote is changed, that information is sent to SAP Variant Configuration and Pricing, where the pricing document is updated. See Pricing Condition Mapping on Quote for more information on how pricing from SAP Variant Configuration and Pricing can be triggered.
Click Save.

The mapped attribute values are now in use.



Calculation Pipeline for Variant Configuration Products

Reference and pricing attributes on products synchronized from SAP Variant Configuration and Pricing are evaluated in a specific order.
Configuring Products Without First Creating a Quote

By default, with the Variant Configuration integration enabled, a quote needs to be selected before you can configure a product, because the configuration obtains reference and pricing attributes from the currently selected quote. However, it is possible to set up a separate pricing procedure and set of attributes, used only when a product is being configured without first creating a quote.
Reference Characteristics and Pricing Attributes

Standard reference and pricing attributes used by SAP CPQ for the SAP Variant Configuration and Pricing integration are listed on this page. You can edit reference and pricing attributes or create custom reference characteristics in SAP General Attribute Mappings.
Yes
No