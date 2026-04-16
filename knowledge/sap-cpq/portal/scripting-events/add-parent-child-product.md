# Add Parent-Child Product | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/bf85bad666bf44669ace75ae512e765f.html?locale=en-US&state=PRODUCTION&version=2603
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
Add Parent-Child Product

User adds a parent-child product from the catalog in Quote 1.0. None of the parent product attributes should be propagated on child products (container rows). Parent product's container attribute has setting Triggers Execution of Rules set to TRUE (default).



Configure
      Load product configuration
        Apply rules
          Apply rules – parent product
            OnProductRuleExecutionStart
            OnProductRuleExecutionEnd
            Container transfer execute (if parent product attribute changed and should be propagated to child item, it is propagated here and all container columns are recalculated anyway)
              [if any container changed(TRUE here) Apply rules - parent product]
                OnProductRuleExecutionStart
                OnProductRuleExecutionEnd
        OnProductLoaded
      Execute AddItem action in workflow -executing AddItem Pre-actions
    User selects parent product attribute values
      [ for each attribute value] Apply rules - parent product
        OnProductRuleExecutionStart
        OnProductRuleExecutionEnd
    User adds container row
      Load product configuration for container ref product
        Apply rules for container ref product
          OnProductRuleExecutionStart
          OnProductRuleExecutionEnd
        OnProductLoaded
      AddContainerRow
        Create row
        Transfer changed parent attributes that should be transferred to container columns
        Calculate container to item mappings (container properties used when creating a new cart item) 
        [if container attribute Triggers Execution of Rules(TRUE)] Apply rules for parent product
          Apply rules – parent product
            OnProductRuleExecutionStart
            OnProductRuleExecutionEnd
            Container transfer execute (if parent product attribute changed and should be propagated to child item, it is propagated here and all container columns are recalculated anyway)
              [if any container changed(TRUE here) Apply rules - parent product]
                OnProductRuleExecutionStart
                OnProductRuleExecutionEnd
        [if container attribute Triggers Execution of Rules(TRUE)]  Apply rules for parent product
            OnProductRuleExecutionStart
            OnProductRuleExecutionEnd
          OnContainerRowAdded
    User selects child product attribute values
      [ for each attribute value] Apply rules - child product
        OnProductRuleExecutionStart
        OnProductRuleExecutionEnd
    User saves container row’s configuration
      Exit nested product
        Transfer changed parent attributes that should be transferred to container columns
        Calculate container to item mappings (container properties used when creating a new cart item)
        [if Triggers Execution of Rules(TRUE)] Apply rules – parent product
          OnProductRuleExecutionStart
          OnProductRuleExecutionEnd
    User clicks Add to Quote
      OnProductBeforeAddToQuote
      [if quote does not exist]
        Create empty
          Calculate quote custom fields
            OnBeforeCustomFieldCalculation
            for each quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION(TRUE): OnCustomFieldChanged
            OnAfterCustomFieldCalculation
        Set the default market and pricebook of the user
        SAVE QUOTE
          OnQuoteCreated
        OnCustomerMappings (crm)
        OnQuoteFieldsMappings (crm)
      Execute AddItem action in workflow -executing AddItem Post actions
      AddItem
        Fill item standard fields( quantity, description, base price, product, attributes, unit of measure)
        Create line items
          [for each container row] Create main item from mappings
            Create item
            Execute main item mappings
              Fill item standard fields( quantity, description, base price, product, attributes, unit of measure)
              Create line items
              OnItemAdded (main item - child product)
              [ for each line item] OnItemAdded
        OnItemAdded (main item - parent product)
        Calculate key attributes
      Add item finalize
        Calculate main editable group (calculate QICF values, runs mathematics for Items, Product Types and Cart Totals)
        SAVE QUOTE
          Get prepared cart (prices in selected market, rounded values...)
            Fix rounding error
              calculate cart totals (mathematics for Product Types and Cart Totals)
        Calculate Aggregates
        Calculate quote custom fields
          OnBeforeCustomFieldCalculation
          for each quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION(TRUE): OnCustomFieldChanged
          OnAfterCustomFieldCalculation
        Save quote custom fields
        [If quote custom fields changed] OnEveryTimeQuoteChanged
        OnUserOnQuotationTab
        OnCustomerMappings (crm)
        OnQuoteFieldsMappings (crm)
        Check discount rules
        Check margin health
        [if standard (not editable) shipping used] Calculate shipping cost
          calculate main editatable group (calculate QICF values, runs Items, Product Types and Cart Totals mathematics)
          SAVE QUOTE MODEL - do not calculate quote custom fields
            SAVE QUOTE
              Get prepared cart (prices in selected market, rounded values...)
                Fix rounding error
                  calls calculate Cart Totals and Product Types
            Calculate aggregates
            Save quote custom fields
            [if quote changed (items added/removed, customers, total)] -> OnEveryTimeQuoteChanged
            OnUserOnQuotationTab
         Load cart actions (checks action conditions such as APPROVALREQUIRED)
         OnProductAddedToQuote
    Execute AddItem action in workflow – Post actions
    Loading quote
      OnUserOnQuotationTab
      Get items
        Get prepared cart  (prices in selected market, rounded values...)
          Fix rounding error 
            calculate cart totals (mathematics for Product Types and Cart Totals)
      BeforeQuoteRendering

Yes
No