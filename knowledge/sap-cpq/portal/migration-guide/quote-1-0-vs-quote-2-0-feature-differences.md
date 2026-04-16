# Quote 1.0 vs Quote 2.0 - Feature Differences | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/71ab96157a8442e9ab20a7fdc1863ed9.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Migration Guide to Quote 2.0 EngineVersion: 2603English
Provide feedback on our search

	
SAP CPQ Migration Guide to Quote 2.0 Engine
	
About Quote 2.0 - Benefits and Compatibility
	
Quote 2.0 Migration Process
	
Migration Effort Estimate


	
Quote 1.0 vs Quote 2.0 - Feature Differences


	
CTX Tags - Quote 1.0 vs Quote 2.0
	
API - Quote 1.0 vs Quote 2.0
	
Feature Specific Migration Instructions
	
Migration Effort Estimate Legend
	
Quote 2.0 Migration Checklist
	
Support Procedure for Migration to Quote 2.0
	
Quote 1.0 to Quote 2.0 Migration FAQ
Quote 1.0 vs Quote 2.0 - Feature Differences

This page contains a comparative overview of Quote 1.0 vs Quote 2.0 features. For more details on the differences and the migration instructions, check Feature Specific Migration Instructions.

All the features listed here are supported in Quote 1.0 unless stated otherwise with the status Only in Quote 2.0.

Features that are limited to Quote 2.0 engine and the features that are available in both quote engines, but their usage is different for each engine are listed here, as well as the features that are obsoleted from Quote 2.0.

Note

If a feature is not listed in this page, then it is the same as in Quote 1.0.

Integrations

Integration Name

	

Status




SAP S/4HANA Private Cloud

	

Only in Quote 2.0




SAP S/4HANA Public Cloud

	

Only in Quote 2.0




External Configurator Integration

	

Only in Quote 2.0




Variant Configuration

	

Supported




SAP Commerce Cloud

	

Supported




SAP Sales Cloud

	

Supported




SAP ERP Central Component (ECC)

	

Project-based implementation, not available out of the box.




SAP S/4HANA (Sales Order)

	

Supported




SAP Billing Revenue and Innovation Management (Solution Quote in SAP S/4HANA) (subscription and service contract products)

	

Only in Quote 2.0




SAP Master Data Service for Business Partners

	

Only in Quote 2.0




Salesforce

	

Supported




Microsoft Dynamics

	

Toolset for Developing Custom CRM Integrations




CLM

	

To do

The CLM solution used for Quote 1.0 will be replaced by a partner solution in Quote 2.0.




CX AI

	

Supported




DocuSign

	

Supported




AdobeSign

	

To do




Enablement

	

Obsoleted




NetSuite

	

Toolset for Developing Custom CRM Integrations

Quote

Feature Name

	

Status

	

Description and Workaround




Bulk Quote Deletion

	

Redesigned

	

Bulk Deletion 1.0 works the same as in Quote 1.0, except that you can only delete quotes in bulk (not users or customers). In Quote 2.0, you select quotes for deletion, whereas in Quote 1.0, you select users and delete their quotes.




Load Existing Project/Quotation

	

Redesigned

	

The list of quotes in Quote 2.0 is redesigned for a better user experience.




Item Filtering

	

Redesigned

	

Quote filtering is improved in Quote 2.0 and it provides more options for filtering.




Customers

	

Obsoleted

	

Customers are replaced by Involved Parties in Quote 2.0




Involved Parties (business partners and partner functions)

	

Only in Quote 2.0

	

/




Quote Teams

	

Only in Quote 2.0

	

Allows quote owners to create administrator and solution teams. Administrators and quote owners can manage sections and assign them to solution teams. Each solution team has access only to the sections assigned to them.




Solution Design

	

Only in Quote 2.0

	

Allows users to create sections in the Solution Design 2.0 tab and add items to them.




Section Distribution

	

Only in Quote 2.0

	

The value of sections with the Sum aggregate type can be distributed to other sections as indicated in the distribution calculation.




Bulk Update of Quote Item Custom Fields in Sections

	

Only in Quote 2.0

	

This feature facilitates the process of mass updating the section fields with one value.




Quote Visibility

	

Redesigned

	
Quote visibility is available in both Quote 2.0 and Quote 1.0 with some differences for dynamic conditions:

Quote 1.0: Dynamic conditions are configured through CTX tags.

Quote 2.0: Dynamic conditions are configured through advanced conditions. Advanced conditions allow you to define rules based on objects and their properties.




Renewal Management

	

Obsolete

	

The Renewals feature tradiotionally available in Quote 1.0 is obsoleted for Quote 2.0. However, in Quote 2.0, users can perform product/contract renewals but only as part of the integration with SAP Billing Revenue and Innovation Management (Solution Quote in SAP S/4HANA).




Fields, Calculations, Layout

	

Only in Quote 2.0

	

Available only in Quote 2.0. This section groups the features for managing quote layout, fields and calculations and distribution calculations.




Key Attributes

	

Obsolete

	

This can be reimplemented using item custom fields in Quotes  Fields, Calculations, Layout.




Margin Health

	

Redesigned

	

Margin health in Quote 2.0 works in the same way as in Quote 1.0, except that the action Margin Health has been removed and instead calculations need to be set up.




Compare Revisions

	

Redesigned

	

Compare functionality is improved on Quote 2.0. In addition to comparing different revisions of the same quote, user can also compare two different quotes with the flexibility to choose the fields, quote tables and the items to be compared.

Quote Layout

Feature Name

	

Status

	

Description and Workaround




Custom Sections

	

Only in Quote 2.0

	

Admins can now create sections on Quote tabs in Quote 2.0 to logically group custom fields and quote tables based on business needs. When defining fields or tables, they can assign them to specific sections, streamlining the layout and improving navigation.




Layout

	

Redesigned

	

In Quote 2.0, quote layout is defined in Quotes  Fields, Calculations, Layout  Layout.




Layout Permissions

	

Redesigned

	

In Quote 2.0, quote layout permissions are defined in Quotes  Fields, Calculations, Layout  Layout Permissions.




Quote Layout Columns

	

Redesigned

	

These columns are not available in Quote 2.0:




Quote Item Columns:

ChannelMarginPercent

ChannelMarkupPercent

ChannelMarkupAmount

CustomColumn1

CustomColumn2

CustomColumn3

CustomColumn4

CustomColumn5

CustomColumn6

EndUserExtendedAmount

EndUserNet

ExternalId

FamilyCode

Inventory

ItemDeliveryMethod

ItemDeliveryStatus

ItemShippingCost

LeadTime

MonthlyFeeAmount

MPN

Multiplier

MultiplierAmount

PRODUCT_WEIGHT

ProductModelPrice

ProductVersion

PromoDiscountAmount

PromoDiscountPercent

RolledUpCartItem

RolledUpEndCustomerExtendedPrice

RolledUpEndCustomerUnitPrice

UnitDiscountAmount

UnitMultiplierAmount

UPC

UpfrontAmount

UpfrontPercent

Weight

	

Product Type Columns:

ChannelMarginPercent

ChannelMarkupAmount

ChannelMarkupPercent

CustomColumn1

CustomColumn2

CustomColumn3

CustomColumn4

CustomColumn5

CustomColumn6

EndUserExtendedAmount

MarginHealth

Multiplier

MultiplierAmount

ProductModelPrice

PromoDiscountAmount

PromoDiscountPercent

	

Quote Totals Columns:

ChannelMarginPercent

ChannelMarkupAmount

ChannelMarkupPercent

CustomColumn1

CustomColumn2

CustomColumn3

CustomColumn4

CustomColumn5

CustomColumn6

EndUserExtendedAmount

MarginHealth

Multiplier

MultiplierAmount

ProductModelPrice

PromoDiscountAmount

PromoDiscountPercent

OverallDiscountAmount

OverallDiscountPercent

SubTotalAmount

TotalChannelGrossMarginPercent

TotalChannelMarkupAmount

TotalChannelMarkupPercent

TotalMonthlyFeeAmount

TotalShippingCost

TotalUpfrontAmount

TotalWeight


Quote Item Custom Fields

Feature Name

	

Status

	

Description and Workaround




Quote Item Custom Fields

	

Redesigned

	

In Quote 2.0, quote item custom fields should be created and managed in Fields and Calculations.




Quote Item Custom fields of type attribute which is sourced from Custom table

	

Redesigned

	

Quote 2.0 uses references to Custom table entry ID. In case that value of the same Custom table entry ID is changed, it will automatically be updated on the Quote 2.0 Quote Item Custom Field.

Calculations

Feature Name

	

Status

	

Description and Workaround




Cart Fields Administration

	

Redesigned

	

In Quote 2.0, calculations should be managed in Fields, Calculations, Layout  Fields and Calculations section. The logic for managing calculations has been completely changed as described in Quote 2.0 Calculations.




Rounding Setup

	

Redesigned

	

In Quote 2.0 it is possible to set rounding rules for each currency as described in Rounding Setup 1.0.




Application Parameter (Calculate Discounts only for Changed Items)

	

Only in Quote 2.0

	

This parameter is available on the Discounts page in Setup and it checks the discount rules only for the changed items




Quote Multipliers

	

Obsolete

	

Discounts should be used instead of the multipliers functionality. Alternatively, quote item custom fields can also be used.




Enable Formula Reevaluation Condition and Formula Reevaluation Condition in the Discounts section.

	

Only in Quote 2.0

	

Administrators of Quote 2.0 engines have the possibility to decide whether the discounting rules are reevaluated every time their users open a quote and every time reconfigure and recalculate actions are triggered in quotes.

Quote Custom Fields

Feature Name

	

Status

	

Description and Workaround




Calculation Types (Once, when quote is created, Every time quote is modified and Always)

	

Redesigned

	

In Quote 2.0, you can choose between creating scripts, or using the low-code approach by creating formulas directly in custom field definition. In custom field definition, you can select an event that specifies the moment when the dedicated calculation formula is triggered, and create the relevant formula for that event. This way, it is possible to create certain scripts directly on the custom field, instead of always using global scripts. You can select the events Once, when quote is created, On Involved Parties Changed, After adding products to Quote, After copying products in Quote, After updating products in Quote, After deleting products from Quote and After changing the value of custom fields.

Quote 2.0 does not recalculate a custom field always, even if no change was made on the quote (in Quote 1.0 this was possible if Always calculation type was selected).




Quote Custom fields of type attribute which is sourced from Custom table

	

Redesigned

	

Quote 2.0 uses references to Custom table entry ID. In case that value of the same Custom table entry ID is changed, it will automatically be updated on the Quote 2.0 Quote Custom field.




Global Information (GI) Variables

	

Obsolete

	

CTX tags should be used instead.




Cart Level Aggregates

	

Obsolete

	

Scripting offers similar possibilities. This feature will be redesigned and reimplemented in the future.




Transfer to items

	

Obsolete

	

Administrators can create product rules based on quote custom fields. Users will then have to click the Reconfigure action on quote.

Quote Actions

Standard Action

	

Description




Add Comment from CLM

	

To Do




Attach Document To SAP Opportunity

	

Obsolete




Attach Document To SAP Opportunity And Sales Quote

	

Obsolete




Attach Document To SAP Sales Quote

	

Obsolete




Cancel Changes

	

Obsolete




Change E-Sign Status

	

To Do




Change Status From CLM

	

To Do




Change Status In CLM

	

To Do




Conditional Reconfigure

	

Obsolete




Create Assets

	

Obsolete




E-Sign Accepted

	

To Do




E-Sign Declined

	

To Do




Generate Document For E-Sign

	

To Do




Margin Health

	

Obsolete




Place order to ERP

	

Obsolete




Preview

	

To Do




ReApply Taxes

	

Obsolete




Replace Items

	

To Do




Send Email

	

Obsolete




Send Quote To CLM

	

To Do




Send Quote XML

	

Obsolete




Update Opportunity and Create Update SAP Sales Quote

	

Obsolete




Update Quote in CLM

	

To Do




Update Sales Quote

	

Obsolete




Update SAP Opportunity

	

Obsolete




Void Document

	

To Do

Document Generation

Feature Name

	

Status

	

Description and Workaround




Emails are sent by CPQ Mailer

	

To Do

	

In Quote 2.0 only User's Mail Client can be selected in the Emails are sent by field in Email Customers / Quote Acceptance Settings.

Quote Tags

Feature Name

	

Status

	

Description and Workaround




<*SHIPPINGMETHOD*>

	

Obsolete

	

/




<*FREIGHTAMOUNT*>

	

Obsolete

	

/




<*IAAVAILABLE(Copy)*>

	

Obsolete

	

/




<*END_USER_INFO (FirstName)*>

	

Obsolete

	

<*CTX( Quote.InvolvedParties.PartnerFunctionKey(BP).FirstName )*> <*CTX( Quote.InvolvedParties.CurrentInvolvedParty.FirstName )*> - should be used in document generation templates only.




<*CARTAMOUNT*>

	

Obsolete

	

<* CTX(Quote.Total.Amount) *>




<*TAXEXEMPT*>

	

Obsolete

	

/




<*TOTALLISTPRICE*>

	

Obsolete

	

<* CTX(Quote.Total.ListPrice) *>




<*TOTALNETPRICE*>

	

Obsolete

	

<* CTX(Quote.Total.NetPrice) *>




<*AVERAGEDISCOUNTPERCENT*>

	

Obsolete

	

<* CTX(Quote.Total.AverageProductDiscountPercent) *>




<*TOTALDISCOUNTAMOUNT*>

	

Obsolete

	

<* CTX(Quote.Total.ProductDiscountAmount) *>




<*AVERAGEMULTIPLIER*>

	

Obsolete

	

/




<*TOTALMULTIPLIERAMOUNT*>

	

Obsolete

	

/




<*ADDITIONALMULTIPLIER*>

	

Obsolete

	

/




<*ADDITIONALMULTIPLIERAMOUNT*>

	

Obsolete

	

/




<*SUBTOTALAMOUNT*>

	

Obsolete

	

<* CTX(Quote.Total.NetPrice) *>




<*TOTALCHANNELMARKUPPERCENT*>

	

Obsolete

	

/




<*TOTALCHANNELMARKUPAMOUNT*>

	

Obsolete

	

/




<*TOTALCOST*>

	

Obsolete

	

<* CTX(Quote.Total.Cost) *>




<*TOTALGROSSMARGINPERCENT*>

	

Obsolete

	

/




<*TOTALGROSSMARGINAMOUNT*>

	

Obsolete

	

/




<*TOTALCHANNELCOST*>

	

Obsolete

	

/




<*TOTALCHANNELGROSSMARGINPERCENT*>

	

Obsolete

	

/




<*TOTALCHANNELGROSSMARGINAMOUNT*>

	

Obsolete

	

/




<*TOTALCHANNELCOMMISIONPERCENT*>

	

Obsolete

	

/




<*TOTALCHANNELCOMMISIONAMOUNT*>

	

Obsolete

	

/




<*TOTALUSERCOMMISIONPERCENT*>

	

Obsolete

	

/




<*TOTALUSERCOMMISIONAMOUNT*>

	

Obsolete

	

/




<*VATPERCENT*>

	

Obsolete

	

/




<*VATAMOUNT*>

	

Obsolete

	

/




<*STATETAXPERCENT*>

	

Obsolete

	

/




<*OVERALLDISCOUNTAMOUNT*>

	

Obsolete

	

<* CTX(Quote.Total.ProductDiscountAmount) *>




<*OVERALLDISCOUNTPERCENT*>

	

Obsolete

	

<* CTX(Quote.Total.AverageProductDiscountPercent) *>

Products

Feature Name

	

Status

	

Description and Workaround




Product Display Types

	

Redesigned

	

Support for simple products, configurable products and parent/child system(list) of configurable products. The Collection of Configurable Products and System(List) of Configurable Products are currently not supported. This will probably be implemented in the future, in a slightly different form.




Alternative Item Type

	

To Do

	

/




Manage items (bulk items reorder, product replace, product delete and item type change)

	

Obsolete

	

/




Order Item Type

	

Only in Quote 2.0

	

The value in the Order Item Type field determines the product model in SAP CPQ (which fields are available for product administration, what columns are available on quote items and the type of order that is created out of quote items when SAP CPQ is integrated with a backend system, such as SAP S/4HANA). After migrating products from Quote 1.0 to Quote 2.0, the default order item type is sales and administrators do not need to make any changes after the migration.




Standalone Subscription Products

	

Only in Quote 2.0

	 


Product Part Number

	

Redesigned

	

On Quote 2.0 number of characters for Product Part Number is limited to 100 and cannot be exceeded.

Product Events

Feature Name

	

Status

	

Description and Workaround




When product is added to quote (OnProductAddedToQuote)

	

Obsolete

	

Other than an ability to attach a script to specific product, it is the same as After adding products to quote (AfterItemAdded/AfterItemUpdated).

Application Parameters

Consult the documentation on application parameters to find out if a parameter is available in Quote 2.0.

Scripting

Feature Name

	

Status

	

Description and Workaround




Script Workbench

	

To Do

	

The Script Workbench currently does not contain Quote 2.0 snippets.




Quote Save (in scenarios when multiple scripts are executed after an event is triggered)

	

Redesigned

	

Quote is saved at the end, after the last script is executed (the pipeline is done).




Trigger events on adding items to quote

	

Redesigned

	

Events are triggered only once for all items that are being added to quote. This way, all items that are being added to the quote are available in the scripting context.




GetItemByQuoteItem

	

Obsolete

	

GetItemByItemNumber




GetItemByUniqueIdentifier

	

Obsolete

	

/




ContainsAnyProductType

	

Obsolete

	

ContainsAny* can be replaced with lambda expressions that allow more flexibility, for example:

Quote.GetAllItems().Contains(lambda x: x.ProductName == "SQL"

x.PartNumber.Contains("PN-"))




ContainsAnyProduct




ContainsAnyProductByPartNumber




CRM Integration Variables:

MSCrmServiceContext

MSCrmService

MSCRMOpportunityId

MSCRMUserId

SalesforceProxy

SFEnvironment

NsEnvironment

	

Obsolete

	

The CRM context is currently not available in Quote 2.0 scripting so you cannot build custom CRM integrations in scripting.




OpportunityId

	

Redesigned

	

OpportunityId returns the opportunity ID in both quote engines. In Quote 1.0 this property can also set the opportunity ID. However, in Quote 2.0, there is a dedicated method AttachToQuote for setting the opportunity ID.




Messages

	

Redesigned

	

This feature is inherited from Quote 1.0 and improved in the following way:

Four types of messages are supported: Success, Error, Info and Warning.

Messages have a distinct look and feel based on the message type.

The isTemporary property defines whether the message is removed automatically from the screen after the first request or if the user is to remove it manually (temporary vs persisted messages, respectively).




ParentItemGuid

	

Obsolete

	

/




MainItems

	

Obsolete

	

Quote 2.0 uses IQuoteItem interface to represent items. You can determinate whether an item is a line item using the IQuoteItem.IsLineItem property.




AsMainItem

	

Obsolete




IsMainItem

	

Obsolete




Every time quote is changed (OnEveryTimeQuoteChanged)

	

Obsolete

	

In Quote 1.0, runs every time a quote is changed. Instead of attaching a script to this event so it triggers every time a quote is changed, think about attaching it only to the events where the scripting logic is actually needed.




When user is on quotation tab (OnUserOnQuotationTab)

	

Obsolete

	

In Quote 1.0, runs every time quote is saved while user is on the Quotation tab. Instead of attaching a script to this event so it triggers every time the quote is saved while on the Quotation tab, think about attaching it only to the events where the scripting logic is actually needed.




OnCustomerMappings Event

	

Obsolete

	

This event was rarely used in the old quote engine, so it has been obsoleted in Quote 2.0. You can uninterruptedly map fields from CRM to SAP CPQ without this event.

Related Information
API - Quote 1.0 vs Quote 2.0
CTX Tags - Quote 1.0 vs Quote 2.0
Quote 2.0 Migration Process
Quote 1.0 to Quote 2.0 Migration FAQ
On this page
Integrations
Quote
Quote Layout
Quote Item Custom Fields
Calculations
Quote Custom Fields
Quote Actions
Document Generation
View all
Yes
No