# Add Simple Product | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/0f3d94c4b24f42ef94220b48efdd4b26.html?locale=en-US&state=PRODUCTION&version=2603
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
Add Simple Product

User is in the catalog in Quote 1.0 and initiates adding simple product to the quote:



AddToQuote
      Load product configuration
        Apply rules
          OnProductRuleExecutionStart
          OnProductRuleExecutionEnd
        OnProductLoaded
      Create quote if it does not exist
        Create empty
          Calculate quote custom fields
            OnBeforeCustomFieldCalculation
            foreach quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION: OnCustomFieldChanged
            OnAfterCustomFieldCalculation
        Set the default market and pricebook of the user
        SAVE QUOTE
          OnQuoteCreated
        OnCustomerMappings (crm)
        OnQuoteFieldsMappings (crm)
      Execute AddItem action in workflow - executing AddItem pre-actions
      AddItem
        Fill item standard fields( quantity, description, base price, product, attributes, unit of measure...)
        Create line items
           [ for each line item] OnItemAdded
        OnItemAdded
        Calculate key attributes
      SAVE QUOTE
          [if not first item] Get prepared cart (prices in selected market, rounded values...)
            Fix rounding error
              calculate cart totals (runs mathematics for Product Type and Cart Totals)
      OnProductAddedToQuote


User opens the current quote:



[if this cart loaded for the first time] OnUserOnQuotationTab
    Add item finalize
      Calculate main editable group (calculate QICF values, runs mathematics for Items, Product types and Cart Totals)
      SAVE QUOTE
        Get prepared cart (prices in current market, rounded values…)
          Fix rounding error
            calculate cart totals (runs mathematics for Product Types and Cart Totals)
      Calculate Aggregates
      Calculate quote custom fields
        OnBeforeCustomFieldCalculation
        foreach quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION: OnCustomFieldChanged
        OnAfterCustomFieldCalculation
      Save quote custom fields
      [If quote custom fields changed] OnEveryTimeQuoteChanged
      OnUserOnQuotationTab
      OnCustomerMappings (crm)
      OnQuoteFieldsMappings (crm)
      Check discount rules
      Check margin health
      [if standard (not editable) shipping used] Calculate shipping cost
        calculate main editatable group (calculate QICF values, runs mathematics for Items, Product Types and Cart Totals)
        SAVE QUOTE MODEL - do not calculate quote custom fields
          SAVE QUOTE
            Get prepared cart (prices in current market, rounded values…)
              Fix rounding error
                calculate cart totals (runs mathematics for ProductType and CartTotals)
          Calculate aggregates
          Save quote custom fields
          [if quote changed (items added/removed, customers, totals)] -> OnEveryTimeQuoteChanged
          OnUserOnQuotationTab
       Load cart actions (checks action conditions such as APPROVALREQUIRED)
       OnProductAddedToQuote
    Execute AddItem action in workflow - executing AddItem Post actions and sending notifications
    Load cart
      Get items
        Get prepared cart (prices in current market, rounded values…)
          Fix rounding error
            calculate cart totals (runs mathematics for Product Types and Cart Totals)
      BeforeQuoteRendering

Yes
No