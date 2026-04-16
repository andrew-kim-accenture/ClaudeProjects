# Copy | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/f2fb4339752f4373b7814768a207d176.html?locale=en-US&state=PRODUCTION&version=2603
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
Copy


Execute Action Copy API – receives dirty quote field new values  from current tab and quote item field values
      Check if any quote custom field is dirty and save
         Neither user or scripts changed quote custom field so nothing happens here
      Get fields from active editable group with old, new value and dirty flag where currency values are expressed in selected market currency (GetAjaxParam)
         Get prepared cart (prices in current market, rounded values…)
            Fix rounding error
               Calculate cart totals (runs total and product type mathematics)
      Execute Copy pre-actions in workflow
      Execute Workflow action Copy
         newCartId = get next cart id for current user
         Prepare cart copy
            Make copy by cloning current cart object
            [if not new revision] set cart composite number
            Replace CARTID global with new cart id
         Insert cart header data to database (cartid, ownerid...)
         [if not new revision and not KEEP_GUIDS_ON_CART_COPY(FALSE)]
            assign new cart item guids to copied items
            replace cart item guids reference in item container configuration
         Copy quote tables
         Update  autocomplete from quote table attributes and custom fields to reference quote table row ids for new cart
         Copy product configuration (Product wizard cfg) for all items  (parent child, system list and collection of products)
         SAVE QUOTE
         Calculate and save quote custom fields
              Calculate quote custom fields
                OnBeforeCustomFieldCalculation
                for each quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION(TRUE) OnCustomFieldChanged
                OnAfterCustomFieldCalculation
              Save quote custom fields
              [if any custom field changed] OnEveryTimeQuoteChanged
              OnUserOnQuotationTab
         Copy rest of quote data directly to database
           [if new revision] cart comments and cart item comments
           Cart item attachments
           [if not new revision] cart custom documents
           [If new revision or CopyHistoryOnQuoteCopy(TRUE)]
              Cart approval history
              Cart history
           Order status
           Approval status
           Cart attachments
           [if CopyOpportunityIdOnCopyQuote(FALSE) ] opportunity
         [If auto-reconfigure]
           Reconfigure
         [if copy called from quote] edit quote
           Calculate and save quote custom fields
              Calculate quote custom fields
                OnBeforeCustomFieldCalculation
                foreach quote custom field that changed and if not FIRE_SCPARAM_CHANGE_ONLY_ON_USER_ACTION(TRUE) OnCustomFieldChanged
                OnAfterCustomFieldCalculation
              Save quote custom fields
              [if any custom field changed] OnEveryTimeQuoteChanged
              OnUserOnQuotationTab
           Load cart actions (checks action conditions such as APPROVALREQUIRED)
           OnQuoteEdited
      Execute Copy post-actions in workflow
      Send notifications
      Load cart
         Prepare tabs
           OnUserOnQuotationTab
         Get items
           Get prepared cart
             Fix rounding error
               Calculate main editable group Cart Totals and Product Type
         BeforeQuoteRendering

Yes
No