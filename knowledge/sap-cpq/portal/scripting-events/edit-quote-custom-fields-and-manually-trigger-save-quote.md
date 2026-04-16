# Edit Quote Custom Fields and Manually Trigger Save Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/a47aa03bee2e4e55be95eba657a856b3.html?locale=en-US&state=PRODUCTION&version=2603
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
Edit Quote Custom Fields and Manually Trigger Save Quote

User edits quote custom field which calculation type is “None” or “Once when quote is created”, and “Save quote on change” is uncheched (not default). Then user triggers “Save quote” standard action to save the new custom field value.



Execute Save action API– receives dirty quote item fields and quote fields
      Check if any quote custom field is dirty and save 
        [for every changed custom field on current tab] set new content
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
            Calculate cart totals for main editable group (runs total and product type mathematics)
      Execute Save pre-actions in workflow
      Execute Save action in workflow
        [if pricebook not selected]:
          Select first available from current market
        Call Calculate (Reprice action) action
          [for all fields in active editable group] Check if changed, validate, set new value (UploadValuesFromAjaxParam)
            Get prepared cart (prices in current market, rounded values…)
              Fix rounding error
                Calculate cart totals (runs total and product type mathematics)
          Calculate active editable group – calculate quote item custom field values, run mathematics for Items, Product type and Cart Totals
          Change status if needed
          [If anything on the cart changed – custom field in this case]
            SAVE QUOTE MODEL – do  calculate quote custom fields
               SAVE QUOTE
                  Get prepared card
                    Fix rounding error
                      calculate cart totals for main editable group (mathematics for product type and cart totals)
               Calculate aggregates
               Calculate quote custom fields
                  OnBeforeCustomFieldCalculation
                  for each quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION(TRUE) OnCustomFieldChanged
                  OnAfterCustomFieldCalculation
               Save quote custom fields
               [if quote changed (triggered because custom field changed)] OnEveryTimeQuoteChanged
               OnUserOnQuotationTab
              Check discount rules
              Check margin health
            [if not auto-reconfigure] Load cart actions (Checks action conditions such as APPROVALREQUIRED)
          [if auto-reconfigure] reconfigure all items
       Save quote tables to db
          [for every quote table if anything changed] Persist changes to db (should not happen as QT changes are uploaded immediately)
    Execute Save post-actions in workflow
    Send notifications
    Load cart
       Get items
          Get prepared cart
            Fix rounding error
              Calculate cart totals for main editable group (runs total and product type mathematics)
       BeforeQuoteRendering

Yes
No