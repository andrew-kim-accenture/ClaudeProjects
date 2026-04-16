# Iron Python Events | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/2c2afa74b1444c16a5b914d5c60ab9cc.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Scripting Events, Properties and Event PipelineVersion: 2603English
Provide feedback on our search

	
Introduction
	
SAP CPQ script plugin
	
Alternatives to CLR Module Import
	
Common properties
	
Iron Python Events
	
How-to Examples
	
Event Pipeline in Quote 1.0
	
Event Pipeline in Quote 2.0
	
Script Performance
Iron Python Events

All Iron Python events are listed in this page.

Event OnCustomFieldChanged
Execution point

Executes when value of quote custom field is changed, before calculating quote custom fields and prices/costs.

Context
Has two arguments:

sender - Variable of type Scripting.IQuoteCustomField representing the quote custom field that fired the event

arg - argument of type Scripting.ICustomFieldChangedArgument providing additional data about the event, containing old value (before modification), and new value of the custom field

Important note

There is an application parameter that controls how this event is triggered. Its name is Fire event - Quote custom field change - only on changes performed by user.

If set to true, then event will be triggered only in case when user manually updates custom field value.

If set to false, then event will be triggered in both cases - when user updates value manually and when value is updated through scripting.

This application parameter can be found under Setup  General  Application parameters  Shopping Cart and Quotes.

Event OnItemAdded
Execution point

Executes when quote item is added (Add to Quote button clicked) - before calculating and saving quote.

Context
Has context of quote.

sender - Particular quote item that is being added.

Event OnItemUpdated
Execution point

Executes when quote item is added (Update Quote button clicked) - before calculating and saving quote.

Context
Has context of quote.

sender - Particular quote item that is being updated.

Event OnItemCopied
Execution point

Executes when quote item is copied - before calculating and saving quote

Context
Has context of quote with two arguments:

OriginalItems - original quote item collection that will be copied

CopiedItems - copied quote item collection

Note

In case of copying System(List) of Configurable Products, quote item collections, OriginalItems and CopiedItems will contain all items that belong to System(List) of Configurable Products.

In other cases quote item collections OriginalItems and CopiedItems will contain only one item (original and copied item, respectively)

Event OnQuoteXmlSerializationStart
Execution point

Executes on Quote page, after executing any quote action (e.g. Edit, Calculate, Save Quote, changing quote tab, etc.), before XML serialization of Quote data.

Context

Has context of quote and two arguments:

sender - Particular quote

XmlWriter - A variable used to write additional data to the quote

Event OnQuoteXmlSerializationEnd
Execution point

Executes on Quote page, after executing any quote action (e.g. Edit, Calculate, Save Quote, changing quote tab, etc.), after XML serialization of Quote data.

Context

Has context of quote and two arguments:

sender - Particular quote

XmlWriter - A variable used to write additional data to the quote

Event OnApprovalsPageLayoutRendered
Execution point

Executes on Approvals page after approval data serialization.

Context

Has context of quote and two arguments:

sender - Particular quote

XmlWriter - A variable used to write additional data to the quote

Events On...XmlSerializationStart and On...XmlSerializationEnd
Execution point
These events execute on Quote page. The list of all events from this group and their execution order follows:


OnQuoteXmlSerializationStart
    OnMainItemXmlSerializationStart
            OnLineItemXmlSerializationStart
            OnLineItemXmlSerializationEnd
            OnKeyAttributeXmlSerializationStart
            OnKeyAttributeXmlSerializationEnd
    OnMainItemXmlSerializationEnd
    OnProductTypeXmlSerializationStart
    OnProductTypeXmlSerializationEnd
    OnCustomerXmlSerializationStart
    OnCustomerXmlSerializationEnd
OnQuoteXmlSerializationEnd
Context
Has context of quote and two arguments:

sender - Depending on what particular event you are interested in, this argument represents the current entity that the event is attached to. For more details on visit Write additional data to a quote xml.

XmlWriter - variable of type MSDN XmlWriter, used to write additional data to the current entity

Event OnEveryTimeQuoteChanged
Execution point

Executes whenever any part of quote is modified manually, automatically, via API or through scripting (e.g. custom field value, market, shipping, price, cost, description, comments, reconfigure action, customer modified, items added to the quote), and after calculating quote custom fields, aggregates and globals.

Context

Has context of quote

Event OnQuoteCreated
Execution point

Executes on Quote page as part of Save Quote - on initial call of this action, after calculating quote custom fields, aggregates and globals, and before OnItemAdded (quote items are not yet created).

Context

Has context of quote

Event OnQuoteEdited
Execution point

Executes at the very end of executing Edit Quote action right after calculating quote custom fields, aggregates and globals

Context

Has context of quote

Event OnQuoteTabChanged
Execution point

Executes when a quote tab is changed.

Context
Has context of quote and the following arguments:
EventArgs

TabId - the Id of the tab

PreviousTabId - the Id of the previous tab

Event OnItemDeleted
Execution point

Executes at the very end of Delete Item action, before calculating quote custom fields, shipping, aggregates and globals, saving cart.

Context
Has context of quote and argument:

sender - Particular item that is being deleted

Event OnUserOnQuotationTab
Execution point

Executes when user is on specific quotation tab, after calculating quote custom fields, aggregates and globals and right after event OnEveryTimeQuoteChanged. Basically, it behaves similar to OnEveryTimeQuoteChanged event, but only on specific tab.

Context

Has context of quote.

Event OnCustomerMappings
Execution point

Executes as part of arriving from CRM system (e.g. Salesforce).

Context

Has context of quote.

Important note

If application parameter Update customer bill-to and ship-to from new opportunity during the re-linking of copy of an existing quote to the new opportunity is set to TRUE, then event is triggered during Create/Update Opportunity action after CRM Item Mapping and Quote Fields Mapping.

Event OnCustomerMappings
Execution point

Executes as part of arriving from CRM system (e.g. Salesforce).

Context

Has context of quote.

Important note

If application parameter Update customer bill-to and ship-to from new opportunity during the re-linking of copy of an existing quote to the new opportunit is set to TRUE, then event is triggered during Create/Update Opportunity action after CRM Item Mapping and Quote Fields Mapping.

Event OnQuoteFieldsMappings
Execution point

Executes right after customer mappings as part of arriving from CRM system (e.g. Salesforce), before standard mappings. Executes during editing the quote or during adding adding item to quote, depending on which action is triggered, right after saving the quote and calculating quote custom fields, globals and aggregates.

Context

Has context of quote.

Event OnProductLoaded
Execution point

Executes after product configuration is initially loaded, upon the first product rule execution. In addition, when an existing cart item is edited, a product is loaded from the base. Once the product is loaded, the rules are fired and the OnProductLoaded event is triggered. The cart item configuration is set afterwards.

Context

Has context of Product that is loaded.

Event OnProductRuleExecutionStart
Execution point
Executes before standard rules are evaluated. The order of execution is as follows:


OnProductRuleExecutionStart
    Standard Rules (formulas)
OnProductRuleExecutionEnd
Context

Has context of Product that is loaded.

Event OnProductRuleExecutionEnd
Execution point
Executes after standard rules are evaluated. The order of execution is as follows:


OnProductRuleExecutionStart
    Standard Rules (formulas)
OnProductRuleExecutionEnd
Context

Has context of Product that is loaded.

Event OnProductTabChanged
Execution point

Executes during product load after attributes and related products are loaded, before rules are applied and shipping loaded.

Context
Has context of Product that is being loaded and has one argument:

arg - Contains name of previous tab (from which user navigated to current tab), and current tab name

Event OnProductCompleted
Execution point

Executes when the last required attribute is selected, after rules are applied (after OnProductRuleExecutionEnd event).

Context

Has context of Product that is being configured.

Note

If product doesn't have any required attributes, this event is triggered only once - before OnProductLoaded.

Event OnProductAddedToQuote
Execution point

Executes after product is added to the quote or the existing quote item is updated/modified, after calculating quote custom fields, globals, aggregates and saving the quote - also, after events OnItemAdded / OnItemUpdated.

Context
Has context of the root Product. This event triggers only for root product, not for child products. It has arguments:

sender - Variable of type Scripting.IQuoteItem representing the quote item (product) that was added and that fired the event

arg - Variable of type Scripting.IProductAddEditArgument. Contains information on added or updated quote items and indicator if the configuration is new or the existing one

Event OnLandingFromCrm
Execution point

Executes upon user who has just arrived from CRM is logged into CPQ - after OnUserLogin event

Context
Has argument:

Request - contains all URL parameters passed from SF

Event OnCustomerBillToChanged
Execution point

Executes when Bill To role is modified - when customer is added/changed/deleted. Executes before calculating quote custom fields

Context

Has context of quote

Event OnCustomerShipToChanged
Execution point

Executes when Ship To role is modified - when customer is added/changed/deleted. Executes before calculating quote custom fields

Context

Has context of quote

Event OnCustomerEndUserChanged
Execution point

Executes when End User role is modified - when customer is added/changed/deleted. Executes before calculating quote custom fields

Context

Has context of quote

Event OnUserLogin
Execution point

Executes when user logs into CPQ system - after loading user permissions, markets and layout, right before applying dictionary

Context
Has context of HTTP request's parameters:

Request - Request variable with HTTP request's parameters

Event OnProductXmlSerializationStart
Execution point

Executes during Catalog page rendering

Context
Has context of product that is being serialized. Has two arguments:

sender - product that is being serialized

XmlWriter - variable used to write data

Event OnProductXmlSerializationEnd
Execution point

Executes during Catalog page rendering

Context
Has context of product that is being serialized. Has two arguments:

sender - product that is being serialized

XmlWriter - variable used to write data

Event OnCrmItemMapping
Execution point

Executes during Create/Update Opportunity action, after standard CRM Item mapping, before Customer Role and Quote fields mapping

Context

Has context of quote

Event OnProductBeforeAddToQuote
Execution point

Executes on Add to Quote while context is still configurator, before system validates configuration, before OnItemAdded/Updated - before calculate and save quote. Event executes only for root product, not for child products

Context
Has context of root product that is being serialized. Has two arguments

sender - product that is being added

eventArg - variable of type ProductBeforeAddToQuoteEventArgument

Event OnBeforeCustomFieldCalculation
Execution point

Executes at the very beginning of Custom Field Calculation action

Context

Has context of quote

Event OnAfterCustomFieldCalculation
Execution point

Executes after Custom Field Calculation action is completed

Context

Has context of quote

Event OnAssetCreated
Execution point

Executes when new asset is created

Context
Has context of quote with two arguments:

Item - quote item that the asset is created from

Asset - created asset

The next four events are specific to Container attribute. Events trigger only on user interaction. That being said, if the container is manipulated through another script (e.g. Adding a new row through another Iron Python script) events will not trigger.
Event onRowAdded
Execution point

Executes when row is added to the container

Context
Has context of product that current container attribute belongs to. One argument with two properties available:
EventArgs

Container - current container

NewRow - the row that was added

Event onRowCopied
Execution point

Executes when the existing container row is copied

Context
Has context of product that current container attribute belongs to. One argument with three properties is available:
EventArgs

Container - current container

SourceRow - the row that the new row was copied from

NewRow - the new row that is a copy of the old one

Event onRowDeleted
Execution point

Executes when row is deleted from the container

Context
Has context of product that current container attribute belongs to. One argument with two properties is available:
EventArgs

Container - current container

DeletedRow - the row that was deleted

Event onCellChanged
Execution point

Executes when cell is modified

Context
Has context of product that current container attribute belongs to. One argument with two properties is available:
EventArgs

Container - current container

ChangedCell - the cell that was changed

Note
ChangedCell has its own properties with self-descritive names:

RowIndex

ColumnId

ColumnName

OldValue

NewValue

OldValueCode

NewValueCode

Event onMarketChanged
Execution point

Executes when market is changed.

Context

Has context of quote with one argument, ID of previous market.

Event onPricebookChanged
Execution point

Executes when pricebook is changed.

Context

Has context of quote with one argument, ID of previous Pricebook.

Event onEffectiveDateChanged
Execution point

Executes when effective date is changed.

Context

Has context of quote.

Additional Properties Available in Scripting

Custom action implementation:

WorkflowContext type of IWorkflowContext keeping workflow parameters.

Custom calculation can have one of following arguments:

Item of type Scripting.IQuoteItem representing the quote item.

ProductType of type Scripting.IProductTypeItem representing the product type item.

Total of type Scripting.IQuoteTotal representing the quote total.

Script invoked by javascipt, see Invoke a script directly from client using javascript.

Param a JSON object sent from the client.

On this page
Event OnCustomFieldChanged
Event OnItemAdded
Event OnItemUpdated
Event OnItemCopied
Event OnQuoteXmlSerializationStart
Event OnQuoteXmlSerializationEnd
Event OnApprovalsPageLayoutRendered
Events On...XmlSerializationStart and On...XmlSerializationEnd
View all
Yes
No