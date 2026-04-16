# Reconfigure | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/b8c7a8ed47e84766842e7ab92e4dc592.html?locale=en-US&state=PRODUCTION&version=2603
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
Reconfigure


Execute Action Reconfigure API – receives dirty quote field new values  from current tab and quote item field values from active editable group
      Check if any quote custom field is dirty and save
        Neither user or scripts changed quote custom field so nothing happens here
      Get fields from active editable group with old, new value and dirty flag where currency values are expressed in selected market currency (GetAjaxParam)
        Get prepared cart (prices in current market, rounded values…)
           Fix rounding error
              Calculate cart totals (runs total and product type mathematics for main editable group)
      Execute Reconfigure pre-actions in Workflow
      Execute Reconfigure action in workflow
        Call Calculate action with Auto-reconfigure set to true
            [for all fields in active editable group] Check if changed, validate, set new value (UploadValuesFromAjaxParam)
               Get prepared cart (prices in current market, rounded values…)
                  Fix rounding error
                     Calculate cart totals (runs total and product type mathematics)
            Calculate main editable group – calculates QICFs, invokes mathematics for Items, Product Types and Cart Totals
            Change status if needed
            [if anything on the cart changed]
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
                    [if quote changed (triggered because quote item field changed)] OnEveryTimeQuoteChanged
                    OnUserOnQuotationTab
                  Check discount rules
                  Check margin health
               [if not auto-reconfigure] Load cart actions (checks action conditions, such as APPROVALREQUIRED)
          [if auto-reconfigure] reconfigure all items
             [if selected standard shipping]
                Reset shipping cost total to 0
             Reset total weight to 0
             Get aggregates from db
             [for each root main item (with no parent item)] Reconfigure item
                Load current product configuration from database (prepare product for adding)
                  Load product configuration from database
                     Apply rules
                        OnProductRuleExecutionStart
                        OnProductRuleExecutionEnd
                   OnProductLoaded
                  [if system product] Load current item containers configuration
                     [for each container row] Load product configuration
                        Apply rules
                           OnProductRuleExecutionStart
                           OnProductRuleExecutionEnd
                      OnProductLoaded
                      Apply current container row attribute selection (unselect attributes and attribute values that do not exist anymore)
                         Apply rules
                           OnProductRuleExecutionStart
                           OnProductRuleExecutionEnd
                  Recalculate current main item attributes selection (unselect attributes and attribute values that do not exist anymore)
                     Apply rules
                       OnProductRuleExecutionStart
                       OnProductRuleExecutionEnd
                       [if system product] Container transfer execute (if parent product attribute changed and should be propagated to child item, it is propagated here and all container columns are recalculated anyway)
                          Apply rules main item
                             OnProductRuleExecutionStart
                             OnProductRuleExecutionEnd
                Reconfigure main item
                  Transfer quote item fields to item attributes [if item has any attribute matching “Transfer to item” quote custom field]
                  Apply ITEMQUANTITY attribute to item’s quantity
                  Set verified and updated root main item attribute selection to item
                  Reload item fields: IsComplete, BasePrice, ProductVersion, UPC, MPN, Inventory, LeadTime, FamilyCode, ProductName, ProductDescription, Cost, Weight, PartNumber, ProductType
                  Calculate key attributes
                  [if Cart.EditItemApplyDefaultDiscount(TRUE)]
                    Apply default discount and multiplier
                Create line items
                  [if system product (parent child, system list, collection)]
                    [For each container attribute that is a line item]
                      [for each container row]Create main item from container row item mappings
                      [if container row configuration complete or user type setting to allow incomplete is TRUE]
                        Reload basic item fields from container row item mappings
                        [if Cart.EditItemApplyDefaultDiscount(TRUE)]
                          Apply default discount and multiplier
                        Create line items to this main item
                        OnItemAdded/OnItemUpdated for child main item
                        [if ALLOW_REORDERING_ITEMS != ALLOW PRODUCT SORTING] sort line items
                        [for each child main item line item] OnItemAdded/OnItemUpdated
                        Calculate key attributes
                      [else (container row configuration incomplete and user type setting to allow incomplete is FALSE] remove item
                  [if not system product (simple, configurable)] (for all product attributes that are line item)
                    Create line item
                    [if line item for that attribute did not exist] OnItemAdded
                    [else updated/deleted] OnItemUpdated
                  Mark line items as Deleted if attribute does not exit anymore but line item does exist in the cart
                  Update calculated aggregates
                  [if standard shipping]
                    Calculate item shipping cost
                    Add item shipping cost to total shipping cost
                  Update item’s HasIncompleteChildren property
                Mark container child main items as deleted if existed before, but not added now
                [if standard shipping] calculate total shipping cost
                Rebuild product types on the cart
                  Check discount rules
                  Check margin health
                Calculate main editable group – calculates QICFs, invokes mathematics for Items, Product Types and Cart Totals
                [if ALLOW_REORDERING_ITEMS == DO NOT ALLOW PRODUCT SORTING] Sort main items
                SAVE QUOTE MODEL
                   SAVE QUOTE
                      Get prepared card
                         Fix rounding error
                            calculate cart totals for main editable group (mathematics for product type and cart totals)
                   Calculate aggregates
                   Calculate quote custom fields
                      OnBeforeCustomFieldCalculation
                      foreach quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION(TRUE) OnCustomFieldChanged
                      OnAfterCustomFieldCalculation
                   Save quote custom fields
                   [if quote changed (item added/removed, QICF, or QCF, or totals)] OnEveryTimeQuoteChanged
                   OnUserOnQuotationTab
                  Check discount rules
                  Check margin health
                Load cart actions (checks actions conditions such as APPROVALREQUIRED)
      Load cart
       Get items
        Get prepared cart (prices in selected market currency, rounded values...)
          Fix rounding error
            Calculate cart totals for main editable group (runs total and product type mathematics)
       BeforeQuoteRendering

Yes
No