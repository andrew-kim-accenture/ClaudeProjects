# Add Configurable Product | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/69e5ce2a684d49d986da23459aec5a88.html?locale=en-US&state=PRODUCTION&version=2603
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
Add Configurable Product

User clicks Configure for a configurable product in the catalog in Quote 1.0:



Configure
      Load product configuration
        Apply rules
          OnProductRuleExecutionStar
          OnProductRuleExecutionEnd
        OnProductLoaded
      Execute AddItem action in workflow - executing AddItem Pre-actions
    User selects attribute values
      [for each attribute value] Apply rules
        OnProductRuleExecutionStart
        OnProductRuleExecutionEnd
    User clicks Add to Quote from the Configurator
      OnProductBeforeAddToQuote
      Create quote if it does not exist
        Create empty
          Calculate quote custom fields
            OnBeforeCustomFieldCalculation
            foreach quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION(TRUE): OnCustomFieldChanged
            OnAfterCustomFieldCalculation
        Set the default market and pricebook of the user
        SAVE QUOTE
          OnQuoteCreated
        OnCustomerMappings (crm)
        OnQuoteFieldsMappings (crm)
      Execute AddItem action in workflow -Post-actions
      AddItem
        Fill item standard fields( quantity, description, base price, product, attributes, unit of measure)
        Create line items
          [ for each line item] OnItemAdded
        OnItemAdded
        Calculate key attributes
      Add item finalize
        Calculate main editable group (calculate QICF values, runs mathematics for Items, Product types and Cart Totals)
        SAVE QUOTE
          Get prepared cart (prices in selected market, rounded values...)
            Fix rounding error
              calculate cart totals (runs mathematics for Product Types and Cart Totals)
        Calculate Aggregates
        Calculate quote custom fields
          OnBeforeCustomFieldCalculation
          foreach quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION(TRUE): OnCustomFieldChanged
          OnAfterCustomFieldCalculation
        Save quote custom fields
        [If quote custom fields changed] OnEveryTimeQuoteChanged
        OnUserOnQuotationTab
        OnCustomerMappings (crm)
        OnQuoteFieldsMappings (crm)
        Check discount rules
        Check margin health
        [if standard (not editable) shipping used] Calculate shipping cost
          calculate main editatable group (calculate QICF values, runs mathematics for Items, Product Type and Cart Totals)
          SAVE QUOTE MODEL - do not calculate quote custom fields
            SAVE QUOTE
              Get prepared cart (prices in selected market, rounded values...)
                Fix rounding error
                  calculate cart totals (runs mathematics for Product types and Cart totals)
            Calculate aggregates
            Save quote custom fields
            [if quote changed (items added/removed, customers, total)] -> OnEveryTimeQuoteChanged
            OnUserOnQuotationTab
        Load cart actions (checks action conditions such as APPROVALREQUIRED)
        OnProductAddedToQuote
    Execute AddItem action in workflow – Post actions
    Loading cart
        OnUserOnQuotationTab
        Get items
          Get prepared cart (prices in selected market, rounded values...)
            Fix rounding error
              calculate cart totals (mathematics for product type and cart totals)
        BeforeQuoteRendering

Yes
No