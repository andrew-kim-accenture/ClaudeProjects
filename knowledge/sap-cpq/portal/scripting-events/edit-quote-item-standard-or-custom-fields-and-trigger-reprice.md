# Edit Quote Item Standard or Custom Fields and Trigger Reprice | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/c22f003dc50b4106889b6785ec7db573.html?locale=en-US&state=PRODUCTION&version=2603
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
Edit Quote Item Standard or Custom Fields and Trigger Reprice

User changes standard or custom field of an item. Editable group where the field belongs to is already active.

Calculate is triggered either by changing decimal or date value and pressing enter or by changing a field of another type and afterwards activating another editable group.



Calculate API– receives dirty quote item fields and quote fields
      Check if any quote custom field is dirty and save
        Neither user or scripts changed quote custom field so nothing happens here
      Get fields from active editable group with old, new value and dirty flag where currency values are expressed in selected market currency (GetAjaxParam)
        Get prepared cart (prices in current market, rounded values…)
          Fix rounding error
            Calculate cart totals for main editable group (runs total and product type mathematics)
      Execute Calculate pre-actions in workflow
      Execute Calculate (Reprice action) in workflow
        [for all fields in active editable group] Check if changed, validate, set new value (UploadValuesFromAjaxParam)
          Get prepared cart (prices in current market, rounded values…)
            Fix rounding error
              Calculate cart totals for main editable group (runs total and product type mathematics)
        Calculate active editable group – calculate QICF values, run mathematics for Items, Product type and Cart Totals
        Change status if needed
        [If anything on the cart changed – custom field in this case]
          SAVE QUOTE MODEL – do  calculate quote custom fields
             SAVE QUOTE
                Get prepared cart (prices in current market, rounded values…)
                  Fix rounding error
                    calculate cart totals for main editable group (mathematics for Product Type and Cart Totals)
             Calculate aggregate
             Calculate quote custom fields
                OnBeforeCustomFieldCalculation
                for each quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION(TRUE) OnCustomFieldChanged
                OnAfterCustomFieldCalculation
             Save quote custom fields
             [if quote changed (triggered because quote item field changed)] OnEveryTimeQuoteChanged
             OnUserOnQuotationTab
           Check discount rules
           Check margin health
         [if not auto-reconfigure] Load cart actions (checks action conditions such as APPROVALREQUIRED)
        [if auto-reconfigure] reconfigure all items
     Execute Calculate post-actions in workflow
     Send notifications
     Load cart
        Get items
          Get prepared cart (prices in current market, rounded values…)
            Fix rounding error
             Calculate cart totals for main editable group (runs total and product type mathematics)
        BeforeQuoteRendering

Yes
No