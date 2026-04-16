# Map Pricing Response to Quote Columns | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/230e4d09b5704930a37e62d5c89624a8.html?locale=en-US&state=PRODUCTION&version=2603
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
Map Pricing Response to Quote Columns

The pricing response from SAP Variant Configuration and Pricing can be made visible in SAP CPQ if you map it to quote columns.

A pricing procedure combines different types of charges (such as the list price, freight, discounts and surcharges) into a single procedure, where the sub-totals and the totals comprising the net amount are defined. In other terms, a pricing procedure defines a group of condition types in a particular sequence.

When SAP CPQ is integrated with SAP Variant Configuration and Pricing, pricing procedures are defined in SAP ERP and, from there, via SAP Variant Configuration and Pricing, replicated into SAP CPQ (as long as Variant Pricing is selected for products obtained via knowledge base synchronization). It is possible to map pricing procedures into SAP CPQ via the fields described in Define SAP General Attribute Mappings. When a pricing procedure is mapped this way, the arriving response payload is stored in the SAP CPQ database. The pricing response payload contains information about the conditions from the pricing procedure.

Example
A pricing procedure with the name ZRt52t exists in SAP ERP, in which various condition types are defined. One of them is the condition type VA00 with the step number 10 and the condition value 40. The information about the condition type is stored in SAP CPQ as conditionType (VA00), conditionStep (10) and conditionValue (40).
By default, the List Price column in the quote displays the sum of the base price and the variant conditions from the pricing procedure. There are multiple ways pricing can be set up here:
SAP CPQ-specific discounts and surcharges can be added on top of the List Price. This is the out-of-the-box scenario.
SAP CPQ Quote Header Price Type → SAP S/4HANA/SAP ERP Sales Order Header Price Condition

Additional Discount - Discount Percent → RB00

Additional Discount - Discount Amount → HA00

SAP CPQ Quote Item Price Type → SAP S/4HANA/SAP ERP Sales Order Item Price Condition

List Price → PR00

Rolled Up Discount Percent → K007

A pricing procedure breakdown can be mapped into multiple columns and the existing conditions (discounts, surcharges and so on) can be edited.

A pricing procedure breakdown can be mapped into multiple columns, along with SAP CPQ-specific discounts and surcharges (which do not exist in the pricing procedure).

Note

When standard condition types are edited, they are sent to the order via the standard integration package. In case of condition types mapped through scripting, additional SAP Cloud Integration content needs to be created for the edited conditions to be used. When the user changes the quantity or the configuration, the Reconfigure action is performed. The application parameter Calculate Auto-Reconfigure only items with modified ItemQuantity attribute determines whether the manual changes are maintained or lost.

You can add discounts modeled in SAP CPQ that are reflected as values of the specified condition types (RB00, HA00, K007) when you place an order from the Quote 1.0 engine in SAP CPQ. This is part of the standard package for the SAP CPQ – SAP ERP integration (see Value Mapping). Mapping other condition types is explained below and is done by accessing the pricing response from SAP Variant Configuration and Pricing and mapping the condition to a quote column.

Note

Variant Configuration integration is available for both the Quote 1.0 and Quote 2.0 engines. The integration works in the same way on both quote engines, the only difference being that in the integration for the Quote 2.0 engine, the Copy Quote and Place Order to ERP actions are not supported.

Additionally, you can create promotions that apply discounts to standard fields mapped to these conditions. All SAP CPQ pricing elements can be added after the prices obtained from the pricing service. SAP CPQ pricing elements cannot be processed in the pricing service. However, you can add an SAP CPQ pricing element, map it to SAP ERP when placing the order, and remodel the pricing procedure in SAP CPQ to maintain correct values and calculations.

All the information from the pricing response from SAP Variant Configuration and Pricing is fully accessible through scripts. It is possible to make condition types from the pricing procedure visible and/or editable on the user interface of the quote. To do that, you need to use a script to map individual condition types to custom item columns.

Prerequisites
Complete the following prerequisites before mapping the pricing response into quote columns.

Create a dedicated quote item custom field to which you want to map the condition type.

To display the field on the quote, you need to add it to the quote XSLT, which is defined per user type.

Assign a value to the quote item custom field’s key in the dictionary, to enter a name for the field.

Add the field to the list of editable fields.

Procedure

Go to Setup  Develop  Global Scripts  Add New.

Write a script that will map the pricing response breakdown to quote item custom fields.

Select an execution event for the script in the Events tab.

Click Save.

The value of the condition from the pricing response is now visible in the quote item custom field to which it was mapped via the script.

Here is an example script which can be used here:


for mainItem in Quote.MainItems:
​
    if not mainItem.ParentItemGuid:                                 #checks for the root item, to get the entire pricing response
        x = 0 
        y = 0
        for condition in mainItem.VCPricingPayload.Conditions:
            if condition.conditionType == 'PR00':                   #checks for the certain condition type (In this case: List price)
                x += float(condition.ConditionValue)                       #sumarizing values of condition type PR00           
​
            elif condition.conditionType == 'VA00':
                y += float(condition.ConditionValue)
​
    mainItem["BasePrice"].Value = x                                 #assigns condition values to CPQ Quote Item Custom Field
    mainItem["PricingSurcharge_1"].Value = y

Making the Quote Item Custom Field Editable
There are additional requirements which you need to complete to make the quote item custom field editable:

Write a custom calculation for that field.

Once a condition type is mapped to a quote item custom field, SAP Variant Configuration and Pricing no longer provides the pricing information, so a custom calculation must be used in order for any edits to apply.

Adapt the standard IFlow for the Place Order action in SAP Cloud Integration by manually mapping condition types and their respective values exposed in SAP CPQ columns to the corresponding elements from SAP ERP. For example, the quote item custom field Surcharge 1 should be mapped to the corresponding condition from the SAP ERP pricing procedure ZRt52t. This is currently applicable only for Quote 1.0.

Related Information
Technical Overview
Define SAP General Attribute Mappings
Set Up Pricing Procedure in SAP ERP
On this page
Example
Prerequisites
Procedure
Making the Quote Item Custom Field Editable
Related Information
Yes
No