# Edit Quote Custom Fields and ENTER (Reprice action) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/8e479281388c43f9a4c022cc7323c8e0.html?locale=en-US&state=PRODUCTION&version=2603
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
Edit Quote Custom Fields and ENTER (Reprice action)

If user changes a quote custom field which calculation type is “None” or “Once quote is created”, and its setting “Save quote on change” is checked (default), when cursor is moved away from the field, action Calculate (Reprice) is triggered.

If quote custom field has “Transfer to items” set to true, Reconfigure action will be executed as well after Calculate, but this is not considered here. If a change causes exceeded discount and exceeded discount is not allowed, Undo will be triggered, which is also out of scope of this scenario.



Execute action Calculate API– receives dirty quote item field and quote field values from current tab
      Check if any quote custom field is dirty and save
        [for every dirty custom field on current tab] set new content
          OnCustomFieldChanged
        [if any quote custom field modified]
          Calculate quote custom fields
            OnBeforeCustomFieldCalculation
            foreach quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION(TRUE): OnCustomFieldChanged
            OnAfterCustomFieldCalculation
          Save quote custom fields
          OnEveryTimeQuoteChanged
          OnUserOnQuotationTab
      Get fields from active editable group with old, new value and dirty flag where currency values are expressed in selected market currency (Get ajax param)
        Get prepared cart (prices in current market, rounded values…)
          Fix rounding error
            Calculate cart totals (runs total and product type mathematics)
      Execute Calculate pre-actions in workflow
      Execute Calculate (Reprice action) in workflow
        [for all fields in active editable group] Check if changed, validate value, set new value (UploadValuesFromAjaxParam)
          Get prepared cart (prices in current market, rounded values…)
            Fix rounding error
              calculate cart totals for main editable group (mathematics for product type and cart totals)
        Calculate active editable group – calculate QICF values, run mathematics for Items, Product type and Cart Totals
        Change status if needed
        [If anything on the cart changed – custom field in this case]
          SAVE QUOTE MODEL – do calculate quote custom fields
            SAVE QUOTE
              Get prepared cart (prices in current market, rounded values…)
                Fix rounding error
                  calculate cart totals for main editable group (mathematics for Product Type and Cart Totals)
            Calculate aggregates
            Calculate quote custom fields
              OnBeforeCustomFieldCalculation
              foreach quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION(TRUE) OnCustomFieldChanged
              OnAfterCustomFieldCalculation
            Save quote custom fields
            [if quote changed ((triggered because custom field changed)] OnEveryTimeQuoteChanged
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
            calculate cart totals for main editable group (mathematics for Product Type and Cart Totals)
      BeforeQuoteRendering

Yes
No