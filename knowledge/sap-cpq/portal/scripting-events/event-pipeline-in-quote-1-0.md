# Event Pipeline in Quote 1.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/b80a8e4f16b14abea77462fbaa8c20f8.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Add Simple Product
	
Add Configurable Product
	
Add Parent-Child Product
	
Edit Quote Item Standard or Custom Fields and Trigger Reprice
	
Edit Quote Custom Fields and ENTER (Reprice action)
	
Edit Quote Custom Fields and Manually Trigger Save Quote
	
Copy
	
Reconfigure
	
Add New Quote Table Row
	
Delete Quote Table Row
	
Change Quote Table Cell
	
Event Pipeline in Quote 2.0
	
Script Performance
Event Pipeline in Quote 1.0

The Event Pipeline documentation contains a list of events that are triggered and executed in SAP CPQ Quote 1.0 in some typical scenarios (for example, when adding a simple product). Administrators who create scripts in SAP CPQ, can view when SAVE is triggered in the system by default so they do not have to add it in their scripts.

The table below displays the basic application parameters that are triggered in the typical scenarios.

Application Parameter

	

Label

	

Default Value




FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION

	

Fire event “Quote custom field change” only on changes performed by user

	

TRUE




KEEP_GUIDS_ON_CART_COPY

	

When quote is copied, new quote items will keep same identifiers(guid) as original quote

	

FALSE




CopyHistoryOnQuoteCopy

	

Copy history on quote copy

	

TRUE




CopyOpportunityIdOnCopyQuote

	

Copy Opportunity Info on Copy Quote

	

FALSE




Cart.EditItemApplyDefaultDiscount

	

When updating quote item, reapply default discount/multiplier

	

TRUE




ALLOW_REORDERING_ITEMS

	

Allow Reordering Items in a Cart:

	

ALLOW PRODUCT SORTING




ROUNDING_FIX_OPTION

	

Cart currency rounding error fix option:

	

Fix Items (1)




RECALCULATE_CART_IN_SELECTED_CURRENCY

	

Recalculate Cart in Selected Currency

	

FALSE

Additional Notes

Why calculation of cart totals and product types (rolledup) gets called when saving quote?

Save quote calls ResetPreparedCart. Then SaveQuote calls PreparedCart to get MarketTotalAmount and save it to db. Preparing cart calls fix rounding error which invokes CartTotal and ProductType mathematics if ROUNDING_FIX_OPTION parameter is equal to Fix Items(1) or Fix Summeries(2). If RECALCULATE_CART_IN_SELECTED_CURRENCY parameter is on, all mathematics will be invoked in addition.

What happens when Quote.Save is called from scripting?

SAVE QUOTE MODEL - do calculate quote custom fields flow is invoked. (see here)

When are quote item custom fields calculated (calculation formula evaluated…)?

During item mathematics execution, after standard fields calculation.



Add Simple Product

User is in the catalog in Quote 1.0 and initiates adding simple product to the quote:
Add Configurable Product

User clicks Configure for a configurable product in the catalog in Quote 1.0:
Add Parent-Child Product

User adds a parent-child product from the catalog in Quote 1.0. None of the parent product attributes should be propagated on child products (container rows). Parent product's container attribute has setting Triggers Execution of Rules set to TRUE (default).
Edit Quote Item Standard or Custom Fields and Trigger Reprice

User changes standard or custom field of an item. Editable group where the field belongs to is already active.
Edit Quote Custom Fields and ENTER (Reprice action)

If user changes a quote custom field which calculation type is “None” or “Once quote is created”, and its setting “Save quote on change” is checked (default), when cursor is moved away from the field, action Calculate (Reprice) is triggered.
Edit Quote Custom Fields and Manually Trigger Save Quote

User edits quote custom field which calculation type is “None” or “Once when quote is created”, and “Save quote on change” is uncheched (not default). Then user triggers “Save quote” standard action to save the new custom field value.
Copy

Reconfigure

Add New Quote Table Row

Delete Quote Table Row

Change Quote Table Cell

Yes
No