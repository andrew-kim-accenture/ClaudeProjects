# Scripting for Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/16971740041243dab4a634dc28a008b1.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop


	
Scripting for Quote 2.0
	
Create a Script
	
Global Script Events
	
Custom Actions
	
Custom Calculations
	
Script Workbench
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Scripting for Quote 2.0

The Quote 2.0 scripting is event-based which adds to the performance of the system when working with complex scripts.

After triggering an action in Quote 2.0, the system triggers an event that retrieves only the context of available objects that are relevant for that specific action. Every event has the quote object in context (context.Quote). Other available objects depend on the event that was raised. Consequently, you can handle only the part of the quote that is available in the context of that event. This boosts the performance of the entire system when executing complex scripts.

Note

In Quote 2.0, the OnQuoteSaved subscription event is triggered only when a quote is saved from the user interface using the Save Quote button. The event is not triggered when saving a quote through the Script Workbench. This is the expected system behavior.

The scripting for Quote 2.0 is different from the scripting for Quote 1.0, primarily because it's event-based and the logic is different. Consequently, if you wish to migrate from the old quote engine to the new one, you’ll have to adjust your scripts because most of them won't fit to Quote 2.0 logic.

Note

Methods and properties for Quote 2.0 are listed under Scripting.Quote in the scripting documentation.

Supported Variables

The global scripting scope is created for Quote 2.0 with these variables:

User

WebServiceHelper

Session

FederationUtility

ScriptExecutor

LogTrace

SqlHelper

XmlHelper

RestClient

UserPersonalizationHelper

FileHelper

Translation

Assert

This scope is independent from Quote 1.0. Global scope is accessible without a prefix. For example, User.FirstName / Trace.Write('test').

Event scopes should have a context prefix and contain variables that are specific for appropriate scopes. For example, context.Quote.DateModified

Quote variable is removed from configurator events (you can’t call quote context from the configurator). To read quote data from the configurator, you should use CTX tags. Additionally, you can’t write data in the quote from the configurator. You can retrieve the quote comment via context.Quote.Comment, but you can’t insert the comment using context.Quote.Comment = ‘Test Comment’.

Note

context.AffectedItems fetches all items that the user changed on quote. For example, if the user changes the discount for three out of 10 items on the quote, context.AffectedItems fetches those three items.

Unsupported Variables

The following variables aren’t currently supported for the Quote 2.0 scripting:

Scope

	

Variables




Global

	

TagParserProduct




TagParserQuote




CRM

	

MSCrmServiceContext




MSCrmService




MSCRMOpportunityId




MSCRMUserId




SalesforceProxy




SFEnvironment




NsEnvironment

Some variables that were in the global scope in Quote 1.0 are moved to event-specific scopes in Quote 2.0:

Quote

Product

CustomerHelp

SAP

TechnicalDocumentation

TABLE Tag and SqlHelper

You should avoid fetching any Quote 2.0 data directly from the database since the quote object may have different states while processing the user action. For example, fetching the number of items in the quote while adding a single item to the quote:



result = SqlHelper.GetFirst('select count(*) as Count from sys_QuoteItem where QuoteId = {}'.format(context.Quote.Id))
Trace.Write(result.Count) # 0 since quote has not been saved yet
Trace.Write(len(list(context.Quote.GetAllItems()))) # 1 since there is one item in memory that will be saved at the end of the processing pipeline.

Scripting Examples

In Quote Fields and Calculations you can create basic scripts that are triggered either after a value in a quote field is changed, after an item is added to a quote or when an item is updated.

The following custom calculation sets the default discount to 10% when items are added/updated:



for item in context.AffectedItems:
           item.Discount = 10

This script updates the quantity of the maintenance item so it matches the total number of items in the quote. This calculation should be triggered before extended list price is calculated.



maintenance = context.Quote.GetItemByItemNumber(1)
      for item in context.AffectedItems:
          maintenance.Quantity += 1

      #add maintenance item to affected items so that the rest of the calculations run for this item as well

      context.AffectedItems.AddItem(maintenance)


If you want to default the item discount based on the DiscountLevel attribute value in Quote 1.0, you should write:



sender.DiscountPercent = GetDiscountForLevel(Product.AttrVal('DiscountLevel'))



In Quote 2.0, you can write:



for item in context.Items:
   item.DiscountPercent = GetDiscountForLevel(context.Product.AttrVal('DiscountLevel'))

On this page
Supported Variables
Unsupported Variables
TABLE Tag and SqlHelper
Scripting Examples
Yes
No