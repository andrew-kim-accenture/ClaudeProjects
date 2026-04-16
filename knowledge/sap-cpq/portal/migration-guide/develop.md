# Develop | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/b3b95a4e7aa24de8a91fd83545bdac44.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Feature Specific Migration Instructions


	
Pricing/Calculations
	
Products
	
Quotes
	
Customers/Customer Roles
	
Users
	
CRM Integration
	
Providers
	
UI Design
	
Workflow/Approval
	
Develop
	
General
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
Migration Effort Estimate Legend
	
Quote 2.0 Migration Checklist
	
Support Procedure for Migration to Quote 2.0
	
Quote 1.0 to Quote 2.0 Migration FAQ
Develop

*Migration Effort Estimate Legend

Migration Overview

Setup Section Name

	

Availability in Quote 2.0

	

Status in Quote 2.0

	

Description

	

Migration Effort Estimate

	

Migration Instructions




Global Scripts

	

Available

	

Redesigned

	

The context and tags have changed. Check the documentation to confirm you are not using any deprecated tags in the scripts.

	

XL

	

Migration Instructions




Custom Actions

	

Available

	

Redesigned

	

The context and tags have changed. Check the documentation to confirm you are not using any deprecated tags in the scripts.

	

M

	

Migration Instructions




Custom Quote Calculations

	

Available

	

Moved

	

Combined with Cart Field Administration and Quote Layout into the new Quote 2.0 feature Fields, Calculations, Layout.

	

XL

	

Migration Instructions

Migrating

Your product scripts, global scripts, custom action scripts, and custom quote calculation scripts used in Quote 1.0 need to be reviewed and rewritten in the Quote 2.0 syntax. Scripting namespace with properties and methods are explained in the scripting documentation. Migration of custom quote calculations is described in Pricing/Calculations.

Global Scripts

Migration of product scripts is described in Products.

Functionally, creating and maintaining scripts in Quote 2.0 has not been changed, but the logic behind scripting has been changed. After you migrate to Quote 2.0, you need to do the following:

check for obsolete events. For reference, see the list of events that are triggered and executed in SAP CPQ Quote 1.0 in some typical scenario. For comparison, check the event pipeline for Quote 2.0.

revise the scripts and rewrite them, if needed, according to the Quote 2.0 scripting logic. To know whether a script should be changed after the migration, you should first understand how scripting in Quote 2.0 works.

Quote.Save() has been deprecated in Quote 2.0 with the change of Quote 2.0 events and how they write in the database. Additionally, Quote.RefreshActions() has also been deprecated. Consequently, you need to review your code migrated from Quote 1.0 to remove all instances ofQuote.Save() and Quote.RefreshActions().

Along with the changes to how Quote 2.0 writes to the database, SAP CPQ has reworked how the calculations run and Quote.Calculate() now functions very differently. In Quote 1.0, Quote.Calculate() runs the pricing scripts for every field. In Quote 2.0,context.Quote.Calculate() fires for a single field. You should not need to be running Quote.Calculate() anymore as the engine immediately writes values to the database and it is very likely that you can remove all instances of Quote.Calculate().

Quote.ExecuteAction(action) has also been deprecated in Quote 2.0 and it requires reimplementation of any script leveraging this by creating a module to generically handle all action calls. For example:

Quote 1.0


for action in Quote.Actions:
            if action.Name == "Request Approval":
              Quote.ExecuteAction(action.Id)

Quote 2.0


headers = buildApiHeaders()
url = ("https://{}".format(RequestContext.Url.Host)
       + "/api/v1/quotes/{}".format(quoteId)
       + "/actions/{}/invoke".format(actionId)
       )
postResponse = RestClient.Post(url, body, headers) 


Additionally, not all actions are supported, including reconfigure, save, reprice, and so on. Instead of the Change Status action, you can use Quote.ChangeStatus() instead in Quote 2.0 to change the quote status. To execute other actions, use the REST API (make a POST call to this endpoint: https://cpqbaseurl/api/v1/quotes/{quoteId}/quoteTables/{tableName}/actions/{actionId}/invoke). This will trigger all related pre and post actions. For more information, check the online REST API Swagger documentation.

IsMain line item property is not available in Quote 2.0 scripting. All scripts leveraging IsMainItem as a conditional need to be reworked to operate on the desired item. For example:

Quote 1.0


for item in Quote.Items:
          if item.IsMainItem:
            Trace.Write(“Do your work here.”)

Quote 2.0


for item in context.Quote.AffectedItems:
           if not item.IsLineItem:
             Trace.Write(“Do you work here.”)


New unique identifier for cart items was introduced which deprecated QuoteItemGuid. This change not only needed to be reflected in downstream systems, but also required code changes to leverage new unique Item.Id.

Quote 1.0


for item in Quote.Items:
            itemGuid = item.QuoteItemGuid

Quote 2.0


for item in context.Quote.GetAllItems():
           itemId = item.Id


Product.UpdateQuote() from Quote 1.0 was replaced with Quote.AddItem() in Quote 2.0:

Quote 1.0


prod = QuoteHelper.Get(167).GetItemByItemNumber(1).AsMainItem.Edit()
         prod.UpdateQuote()

Quote 2.0


quote = QuoteHelper.Get(167)
prod = quote.GetItemByItemNumber(1).AsMainItem.Edit()
qty = quote.GetItemByItemNumber(1).Quantity
quote.AddItem(prod, qty)


Blocking products from being added to the quote doesn’t work via Product.ok now. In Quote 2.0, the product must be blocked before it's added to quote.

Quote 1.0


Product.ok = False

Quote 2.0

To prevent a product from being added to the quote, make the product incomplete using rules, messages, and so on.

The following table shows some methods that have been obsoleted in Quote 2.0 and alternative solutions for Quote 2.0:

Scripting Object in Quote 1.0

	

Method in Quote 1.0

	

Quote 1.0 Reference Documentation

	

Alternative scripting object in Quote 2.0

	

Method in Quote 2.0

	

Quote 2.0 Reference Documentation




Quote

	


Quote
	

Scripting documentation

	

IQuote

	


context.Quote
	

Scripting documentation




Market

	


Quote.SelectedMarket
	

Scripting documentation

	

IMarketBase

	


context.Quote.SelectedMarket
	

Scripting documentation




Customer

	


Quote.BillToCustomer
Quote.EndUserCustomer
Quote.ShipToCustomer

	

Scripting documentation

	

IQuoteInvolvedParty

	


involvedParties = context.Quote.GetInvolvedParties().ToList()
for party in involvedParties:
    if party.PartnerFunctionKey == "SoldTo":

	

Scripting documentation




Quote Item

	


for mainItem in Quote.MainItems:
for item in Quote.GetItemsByProductTypeSystemId():
for mainItem in Quote.MainItems:
    for lineItem in mainItem.LineItems:

Quote.GetItemByQuoteItem(Int32)
Quote. GetItemByQuoteItem(String)
Quote. GetItemByUniqueIdentifier(String)

	

Scripting documentation

	

IQuoteItem

	


for item in context.Quote.GetAllItems():
for item in context.Quote. GetItemsByProductTypeId():
for item in context.Quote. GetItemAndHisAncestors():
context.Quote. GetItemByItemId(Int32)
context.Quote. GetItemByItemNumber(Int32)
for item in context.AffectedItems:
for item in context.Items:

	

Scripting documentation




Quote Custom Field

	


Quote.GetCustomField(“Field Name”)
	

Scripting documentation

	

IQuoteCustomField

	


context.Quote.GetCustomField(“Field Name”)
	

Scripting documentation




QuoteHelper

	


QuoteHelper
	

Scripting documentation

	

IQuoteHelper

	


QuoteHelper
	

Scripting documentation




Attached Document

	


Quote.GetAttachedDocument(Int32)
	

Scripting documentation

	

IQuoteAttachedDocument

	


Context.Quote.GetAttachedDocument(Int32)
	

Scripting documentation




Quote Item Custom Field

	


for item in Quote.Items:
    item["Field Name"].Value = "value"

	

Scripting documentation

	

IQuoteItemCustomField

	


for item in context.Quote.GetAllItems():
    item.Item["Field Name"] = "value"

	

Scripting documentation


Script Update Examples

Action

	

Quote 2.0 Example




Get Quote Status Name

	


context.Quote.StatusName



Update Quote Status

	


context.Quote.ChangeStatus("Sample Status")



Add Ship To Partner Function as an Involved Party on the quote

	


current_quote = context.Quote
involved_parties = current_quote.GetInvolvedParties()
current_quote.AddInvolvedParty("SHT", 3)




Set the Address1 field of the first Involved Party on the quote

	


quote = context.Quote
ips = list(quote.GetInvolvedParties())
ip = ips[0]
ip.Address1 = 'test333'




Add a product to the quote from a quote script or custom API

	


inlineProduct = ProductHelper.CreateProduct(“Configurable_Tablet_for_CPQ_cpq')
inlineProduct.Attributes.GetByName('Tablet Screen Size').SelectValue('12')
inlineProduct.Attributes.GetByName('Number of CPU Cores').SelectValue('8')
inlineProduct.Attributes.GetByName('Operation System').SelectValue('iOS')
#inlineProduct.Attributes.GetByName('Contract Type').AssignValue('New contract signed')
inlineProduct.AddToQuote()


Custom Actions

Each occurrence of the Quote object in the scripts needs to be modified to context.Quote. Any use of GetCustomField().Content needs to be updated to .Value instead. Check the following examples:

Quote 1.0:


Quote.GetCustomField(“Sample CF”).Content = “New string”
Quote2.0:


context.Quote.GetCustomField(“Sample CF”).Value = “New String”

WorkflowContext properties still exist in Quote 2.0 as in Quote1.0. However, they need to be updated so that they leverage the new context. Add context. in front of any line with WorkflowContext. This example uses Quote 2.0 syntax:



context.WorkflowContext.Message = "Checking if WorkflowContext functions the same"
context.WorkflowContext.BreakWorkflowExecution = True


The quote level messages functionality has been inherited from Quote 1.0 and additionally improved in the following ways in Quote 2.0:

Four types of messages are supported: Success, Error, Info and Warning.

Messages have a distinct look and feel based on the message type.

The isTemporary property defines whether the message is removed automatically from the screen after the first request or if the user is to remove it manually (temporary vs persisted messages, respectively).

The following is the interface for adding and deleting scripting messages:

AddMessage(string content, MessageType messageType, bool isTemporary)

DeleteMessage(int messageId)

Example



from Scripting.Quote import MessageType

context.Quote.AddMessage("Success", MessageType.Success, False)
context.Quote.AddMessage("Error", MessageType.Error, False)
context.Quote.AddMessage("Info", MessageType.Info, False)
context.Quote.AddMessage("Warning", MessageType.Warning, False)
context.Quote.AddMessage("Success", MessageType.Success, True)
context.Quote.AddMessage("Error", MessageType.Error, True)
context.Quote.AddMessage("Info", MessageType.Info, True)
context.Quote.AddMessage("Warning", MessageType.Warning, True)
#for msg in context.Quote.Messages:
# context.Quote.DeleteMessage(msg.Id)


On this page
Migration Overview
Migrating
Yes
No