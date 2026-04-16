# CTX Tags - Quote 1.0 vs Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/a6651b3005954f1f844469f040ad3f50.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Migration Guide to Quote 2.0 EngineVersion: 2603English
Provide feedback on our search

	
SAP CPQ Migration Guide to Quote 2.0 Engine
	
About Quote 2.0 - Benefits and Compatibility
	
Quote 2.0 Migration Process
	
Migration Effort Estimate


	
Quote 1.0 vs Quote 2.0 - Feature Differences


	
CTX Tags - Quote 1.0 vs Quote 2.0
	
API - Quote 1.0 vs Quote 2.0
	
Feature Specific Migration Instructions
	
Migration Effort Estimate Legend
	
Quote 2.0 Migration Checklist
	
Support Procedure for Migration to Quote 2.0
	
Quote 1.0 to Quote 2.0 Migration FAQ
CTX Tags - Quote 1.0 vs Quote 2.0

CTX tags are supported in both quote engines, but there are differences in the supported properties for the Quote object.

The table below shows Quote CTX tags that are different in the two engines.
Note

If a tag is not listed in this page, then it is the same as in Quote 1.0.

Legend




Tags available only in the Quote 1.0 engine are marked blue.




Tags available only in the Quote 2.0 engine are marked green.




Tags marked yellow exist in both quote engines but with a different syntax.

Miscellaneous CTX Tags

Quote 1.0

	

Quote 2.0




<*CTX( Quote.AdditionalDiscount() )*>

	

/




<*CTX( Quote.CartCompositeNumber )*>

	

<*CTX( Quote.QuoteNumber )*>




<*CTX( Quote.CartId )*>

	

<*CTX( Quote.Id )*>




<*CTX( Quote.CountOfMainItems )*>

	

/




<*CTX( Quote.CRMAccountRoleId )*>

	

/




<*CTX( Quote.ForwardCurrencyRate )*>

	

/




/

	

<*CTX( Quote.ExchangeRate )*>




/

	

<*CTX( Quote.ExternalQuoteId )*>




/

	

<*CTX( Quote.ExternalQuoteOrigin )*>




/

	

<*CTX( Quote.ExternalSystemId )*>




<*CTX( Quote.GlobalsCsv )*>

	

/




/

	

<*CTX( Quote.Id )*>




<*CTX( Quote.InProject )*>

	

/




<*CTX( Quote.IsQuoteDataValid )*>

	

/




	

/




<*CTX( Quote.LastGeneratedDocument )*<>*CTX( Quote.Link.Crypted )*>

	

/




<<*CTX( Quote.MarketFactor.MarketDecimal )*>

	

<*CTX( Quote.MarketFactor.Value )*>




<*CTX( Quote.MarketFactor.MarketDisplay )*>

	

<*CTX( Quote.MarketFactor.Display )*>




/

	

<*CTX( Quote.MarketFactor.DefaultDecimal )*>




/

	

<*CTX( Quote.MarketFactor.DefaultDisplay )*>




<*CTX( Quote.OrderId )*>

	

/




<*CTX( Quote.PaymentApproved )*>

	

/




<*CTX( Quote.PaymentMethod )*>

	

/




<*CTX( Quote.RevisionNumber )*>

	

<*CTX( Quote.Revision.RevisionNumber )*>




/

	

<*CTX( Quote.Sections )*>




/

	

<*CTX( Quote.InvolvedParties )*>




<*CTX( Quote.SelectedShipping.Editable )*>

	

/




<*CTX( Quote.SelectedShipping.Selected )*>

	

/




<*CTX( Quote.ShipId )*>

	

/




<*CTX( Quote.Status.Id )*>

	

<*CTX( Quote.StatusId )*>




<*CTX( Quote.Status.Name )*>

	

<*CTX( Quote.StatusName )*>




<*CTX( Quote.SubCartId )*>

	

/




<*CTX( Quote.SubOwnerId )*>

	

/




<*CTX( Quote.TaxExempt )*>

	

/




<*CTX( Quote.TrackingKey )*>

	

/

Current Item CTX Tags

Quote 1.0

	

Quote 2.0




<*CTX( Quote.CurrentItem.AttributeByExternalId)*>

	

/




<*CTX( Quote.CurrentItem.AttributeRank )*>

	

/




<*CTX( Quote.CurrentItem.AttributeSubRank)*>

	

/




<*CTX( Quote.CurrentItem.BaseItem)*>

	

/




<*CTX( Quote.CurrentItem.BaseItemGuid)*>

	

<*CTX( Quote.CurrentItem.BaseItemNumber)*>




<*CTX( Quote.CurrentItem.BaseMRCListPrice)*>

	

/




<*CTX( Quote.CurrentItem.BaseQuantity)*>

	

/




<*CTX( Quote.CurrentItem.CanOverrideMinMaxValues)*>

	

/




<*CTX( Quote.CurrentItem.CartItem)*>

	

/




<*CTX( Quote.CurrentItem.CartItemGuid)*>

	

/




<*CTX( Quote.CurrentItem.CategoryId)*>

	

/




<*CTX( Quote.CurrentItem.ChannelCommisionAmount)*>

	

/




<*CTX( Quote.CurrentItem.ChannelCommisionPercent)*>

	

/




<*CTX( Quote.CurrentItem.ChannelMarginPercent)*>

	

/




<*CTX( Quote.CurrentItem.ChannelMarkupPercent)*>

	

/




<*CTX( Quote.CurrentItem.AttributeByExternalId(ff) )*>

	

/




<*CTX( Quote.CurrentItem.CustomColumn1)*>

<*CTX( Quote.CurrentItem.CustomColumn2)*>

<*CTX( Quote.CurrentItem.CustomColumn3)*>

<*CTX( Quote.CurrentItem.CustomColumn4)*>

<*CTX( Quote.CurrentItem.CustomColumn5)*>

<*CTX( Quote.CurrentItem.CustomColumn6)*>

	

/




<*CTX( Quote.CurrentItem.CustomFieldComputedValue)*>

	

/




<*CTX( Quote.CurrentItem.DefaultMRCDiscountPercent)*>

	

<*CTX( Quote.CurrentItem.DefaultMrcDiscountPercent )*>




<*CTX( Quote.CurrentItem.DefaultMRCMultiplier)*>

	

/




<*CTX( Quote.CurrentItem.DefaultMultiplier)*>

	

/




<*CTX( Quote.CurrentItem.EffDate)*>

	

<*CTX( Quote.CurrentItem.EffectiveDate )*>




<*CTX( Quote.CurrentItem.EndUserExtendedAmount)*>

	

/




<*CTX( Quote.CurrentItem.EndUserNet)*>

	

/




<*CTX( Quote.CurrentItem.ExternalCartItem)*>

	

/




<*CTX( Quote.CurrentItem.ExternalId)*>

	

/




<*CTX( Quote.CurrentItem.FamilyCode)*>

	

/




<*CTX( Quote.CurrentItem.ForwardCurrencyRate)*>

	

/




<*CTX( Quote.CurrentItem.GroupId)*>

	

/




<*CTX( Quote.CurrentItem.Inconsistent)*>

	

/




<*CTX( Quote.CurrentItem.Inventory)*>

	

/




<*CTX( Quote.CurrentItem.IsAlternative)*>

	

/




<*CTX( Quote.CurrentItem.IsChildItem)*>

	

/




<*CTX( Quote.CurrentItem.IsMainItem)*>

	

/




<*CTX( Quote.CurrentItem.IsOptional)*>

	

/




<*CTX( Quote.CurrentItem.IsVariant)*>

	

/




<*CTX( Quote.CurrentItem.ItemDeliveryMethod)*>

	

/




<*CTX( Quote.CurrentItem.ItemDeliveryStatus)*>

	

/




<*CTX( Quote.CurrentItem.KeyAttribute)*>

	

/




<*CTX( Quote.CurrentItem.LeadTime)*>

	

/




<*CTX( Quote.CurrentItem.MainItem)*>

	

/




<*CTX( Quote.CurrentItem.ManufacturesGrossMargin)*>

	

/




<*CTX( Quote.CurrentItem.MarginHealthColor)*>

	

/




<*CTX( Quote.CurrentItem.MarginHealthImage)*>

	

/




<*CTX( Quote.CurrentItem.MasterParentItem)*>

	

/




<*CTX( Quote.CurrentItem.MaxMRCDiscountPercent)*>

	

<*CTX( Quote.CurrentItem.MaxMrcDiscountPercent )*>




<*CTX( Quote.CurrentItem.MaxMRCMultiplier)*>

	

/




<*CTX( Quote.CurrentItem.MaxMultiplier)*>

	

/




<*CTX( Quote.CurrentItem.MinMRCDiscountPercent)*>

	

<*CTX( Quote.CurrentItem.MinMrcDiscountPercent)*>




<*CTX( Quote.CurrentItem.MinMultiplier)*>

	

/




<*CTX( Quote.CurrentItem.MonthlyFeeAmount)*>

	

/




<*CTX( Quote.CurrentItem.MPN)*>

	

/




<*CTX( Quote.CurrentItem.MRCChannelMarginAmount)*>

<*CTX( Quote.CurrentItem.MRCChannelMarginPercent)*>

<*CTX( Quote.CurrentItem.MRCChannelMarkupAmount)*>

<*CTX( Quote.CurrentItem.MRCChannelMarkupPercent)*>

	

/




<*CTX( Quote.CurrentItem.MRCCost)*>

	

<*CTX( Quote.CurrentItem.MrcCost)*>




<*CTX( Quote.CurrentItem.MRCDiscountAmount)*>

	

<*CTX( Quote.CurrentItem.MrcDiscountAmount)*>




<*CTX( Quote.CurrentItem.MRCDiscountPercent)*>

	

<*CTX( Quote.CurrentItem.MrcDiscountPercent)*>




<*CTX( Quote.CurrentItem.MRCEndUserExtendedAmount)*>

	

/




<*CTX( Quote.CurrentItem.MRCEndUserNet)*>

	

/




<*CTX( Quote.CurrentItem.MRCExtendedAmount)*>

	

<*CTX( Quote.CurrentItem.MrcExtendedAmount)*>




<*CTX( Quote.CurrentItem.MRCExtendedCost)*>

	

<*CTX( Quote.CurrentItem.MrcExtendedCost)*>




<*CTX( Quote.CurrentItem.MRCExtendedListPrice)*>

	

<*CTX( Quote.CurrentItem.MrcExtendedListPrice)*>




<*CTX( Quote.CurrentItem.MRCGrossMarginPercent)*>

	

/




<*CTX( Quote.CurrentItem.MRCListPrice)*>

	

<*CTX( Quote.CurrentItem.MrcListPrice)*>




<*CTX( Quote.CurrentItem.MRCMarginHealthColor)*>

	

/




<*CTX( Quote.CurrentItem.MRCMarginHealthImage)*>

	

/




<*CTX( Quote.CurrentItem.MRCMultiplier)*>

	

/




<*CTX( Quote.CurrentItem.MRCMultiplierAmount)*>

	

/




<*CTX( Quote.CurrentItem.MRCNetPrice)*>

	

<*CTX( Quote.CurrentItem.MrcNetPrice)*>




<*CTX( Quote.CurrentItem.MRCRolledUpCost)*>

	

<*CTX( Quote.CurrentItem.RolledUpMrcCost)*>




<*CTX( Quote.CurrentItem.MRCRolledUpDiscountAmount)*>

	

<*CTX( Quote.CurrentItem.RolledUpMrcDiscountAmount)*>




<*CTX( Quote.CurrentItem.MRCRolledUpDiscountPercent)*>

	

<*CTX( Quote.CurrentItem.RolledUpMrcDiscountPercent)*>




<*CTX( Quote.CurrentItem.MRCRolledUpEndCustomerExtendedPrice)*>

	

/




<*CTX( Quote.CurrentItem.MRCRolledUpEndCustomerUnitPrice)*>

	

/




<*CTX( Quote.CurrentItem.MRCRolledUpExtendedAmount)*>

	

<*CTX( Quote.CurrentItem.RolledUpMrcExtendedAmount)*>




<*CTX( Quote.CurrentItem.MRCRolledUpExtendedCost)*>

	

<*CTX( Quote.CurrentItem.RolledUpMrcExtendedCost)*>




<*CTX( Quote.CurrentItem.MRCRolledUpExtendedListPrice)*>

	

<*CTX( Quote.CurrentItem.RolledUpMrcExtendedListPrice)*>




<*CTX( Quote.CurrentItem.MRCRolledUpGrossMargin)*>

	

/




<*CTX( Quote.CurrentItem.MRCRolledUpListPrice)*>

	

<*CTX( Quote.CurrentItem.RolledUpMrcListPrice)*>




<*CTX( Quote.CurrentItem.MRCRolledUpNetDifferenceFromBaseItem)*>

	

/




<*CTX( Quote.CurrentItem.MRCRolledUpNetPrice)*>

	

<*CTX( Quote.CurrentItem.RolledUpMrcNetPrice)*>




<*CTX( Quote.CurrentItem.MRCUnitDiscountAmount)*>

	

<*CTX( Quote.CurrentItem.MrcUnitDiscountAmount)*>




<*CTX( Quote.CurrentItem.MRCUnitMultiplierAmount)*>

	

/




<*CTX( Quote.CurrentItem.Multiplier)*>

	

/




<*CTX( Quote.CurrentItem.MultiplierAmount)*>

	

/




<*CTX( Quote.CurrentItem.NetAmountDifferenceFromBaseItem)*>

	

/




<*CTX( Quote.CurrentItem.ParentItem)*>

	

/




<*CTX( Quote.CurrentItem.ParentItemGuid)*>

	

/




<*CTX( Quote.CurrentItem.ParentRolledUpCartItem)*>

	

/




<*CTX( Quote.CurrentItem.PRODUCT_WEIGHT)*>

	

/




<*CTX( Quote.CurrentItem.ProductCost)*>

	

/




<*CTX( Quote.CurrentItem.ProductDisplayInfo)*>

	

/




<*CTX( Quote.CurrentItem.ProductModelPrice)*>

	

/




<*CTX( Quote.CurrentItem.ProductName)*>

	

/




<*CTX( Quote.CurrentItem.ProductNameInDefaultLanguage)*>

	

/




<*CTX( Quote.CurrentItem.ProductSystemId)*>

	

/




<*CTX( Quote.CurrentItem.ProductTypeAddToCRM)*>

<*CTX( Quote.CurrentItem.ProductTypeId)*>

<*CTX( Quote.CurrentItem.ProductTypeName)*> <*CTX( Quote.CurrentItem.ProductTypeName)*>

<*CTX( Quote.CurrentItem.ProductTypeNameInDefaultLanguage)*>

<*CTX( Quote.CurrentItem.ProductTypeRank)*>

<*CTX( Quote.CurrentItem.ProductTypeSystemId)*>

	

/




<*CTX( Quote.CurrentItem.ProductVersion)*>

	

/




<*CTX( Quote.CurrentItem.PromoDiscountAmount)*>

	

/




<*CTX( Quote.CurrentItem.PromoDiscountPercent)*>

	

/




<*CTX( Quote.CurrentItem.Rank)*>

	

/




<*CTX( Quote.CurrentItem.RolledUpCartItem)*>

<*CTX( Quote.CurrentItem.RolledUpEndCustomerExtendedPrice)*>

<*CTX( Quote.CurrentItem.RolledUpEndCustomerUnitPrice)*>

<*CTX( Quote.CurrentItem.RolledUpGrossMargin)*>

<*CTX( Quote.CurrentItem.RolledUpItemCustomField)*>

<*CTX( Quote.CurrentItem.RolledUpItemCustomFieldComputed)*>

<*CTX( Quote.CurrentItem.RolledUpNetDifferenceFromBaseItem)*>

	

/




<*CTX( Quote.CurrentItem.StdSelection)*>

	

/




<*CTX( Quote.CurrentItem.SystemID)*>

	

/




<*CTX( Quote.CurrentItem.TotalPriceWithLineItems)*> <*CTX( Quote.CurrentItem.TotalPriceWithLineItems)*>

	

/




<*CTX( Quote.CurrentItem.UnitMultiplierAmount)*>

	

/




<*CTX( Quote.CurrentItem.UPC)*>

	

/




<*CTX( Quote.CurrentItem.UpfrontAmount)*>

	

/




<*CTX( Quote.CurrentItem.UpfrontPercent)*>

	

/




<*CTX( Quote.CurrentItem.UserCommisionAmount)*>

	

/




<*CTX( Quote.CurrentItem.UserCommisionPercent)*>

	

/




<*CTX( Quote.CurrentItem.Weight)*>

	

/




/

	

<*CTX( Quote.CurrentItem.ContractEndDate)*>




/

	

<*CTX( Quote.CurrentItem.ContractLength)*>




/

	

<*CTX( Quote.CurrentItem.ContractStartDate)*>




/

	

<*CTX( Quote.CurrentItem.ExternalItemId)*>




/

	

<*CTX( Quote.CurrentItem.HasCompleteConfiguration)*>




/

	

<*CTX( Quote.CurrentItem.HasIncompleteChildren)*>




/

	

<*CTX( Quote.CurrentItem.IsCreatedFromProduct)*>




/

	

<*CTX( Quote.CurrentItem.IsLineItem)*>




/

	

<*CTX( Quote.CurrentItem.ItemNumber)*>




/

	

<*CTX( Quote.CurrentItem.MinimumTerm)*>




/

	

<*CTX( Quote.CurrentItem.MinimumTermEndDate)*>




/

	

<*CTX( Quote.CurrentItem.ProductInfo)*>




/

	

<*CTX( Quote.CurrentItem.RolledUpItemNumber)*>




/

	

<*CTX( Quote.CurrentItem.RootItemId)*>


 	

<CTX( Quote.CurrentItem.TaxAmount.Display )>


 	

<CTX( Quote.CurrentItem.TaxAmount.Value)>


 	

<CTX( Quote.CurrentItem.RecurringTaxAmount.Display )>


 	

<CTX( Quote.CurrentItem.RecurringTaxAmount.Value )>


 	

<CTX( Quote.CurrentItem.TaxPercent.Display )>


 	

<CTX( Quote.CurrentItem.TaxPercent.Value )>

Customer CTX Tags

Quote 1.0

	

Quote 2.0




<*CTX( Quote.Customer(Unknown).BlockedFromDeletion )*>

	

Not available in Quote 2.0 since the Customer feature has been replaced with Involved Parties.




<*CTX( Quote.Customer(x).CRMAccountId )*>




<*CTX( Quote.Customer(BillTo).CRMContactId )*>




<*CTX( Quote.Customer(BillTo).CustomerPassword )*>




<*CTX( Quote.Customer(BillTo).DirtyFlag )*>




<*CTX( Quote.Customer(x).ShopCartId )*>

Custom Field CTX Tags

Quote 1.0

	

Quote 2.0




<*CTX( Quote.CustomField(x).AttrValue )*>

	

<*CTX( Quote.CustomField(x).AttributeValue )*>




<*CTX( Quote.CustomField(x).AttrValueCode )*>

	

<*CTX( Quote.CustomField(x).AttributeValueCode )*>




/

	

<*CTX( Quote.CustomField(Adresa).AttributeValueML )*>

Market CTX Tags

Quote 1.0

	

Quote 2.0




<*CTX( Quote.SelectedMarket.CurrencyCode )*>

	

<*CTX( Market.CurrencyCode )*>




<*CTX( Quote.SelectedMarket.CurrencyDefault )*>

	

/




<*CTX( Quote.SelectedMarket.CurrencyQuote )*>

	

/




/

	

<*CTX( Quote.SelectedMarket.ExchangeRate )*>




<*CTX( Quote.SelectedMarket.MarketFactor.DefaultDecimal )*>

	

/




<*CTX( Quote.SelectedMarket.MarketFactor.DefaultDisplay )*>

	

/




<*CTX( Quote.SelectedMarket.MarketFactor.MarketDecimal )*>

	

<*CTX( Quote.SelectedMarket.MarketFactor.Value )*>




<*CTX( Quote.SelectedMarket.MarketFactor.Value )*>

	

/




<*CTX( Quote.SelectedMarket.Selected )*>

	

/

Total CTX Tags

Quote 1.0

	

Quote 2.0




<*CTX( Quote.Total.AdditionalMultiplier )*>

	

/




<*CTX( Quote.Total.AdditionalMultiplierAmount )*>

	

/




<*CTX( Quote.Total.AverageMRCProductDiscountPercent )*>

	

<*CTX( Quote.Total.AverageMrcProductDiscountPercent )*>




<*CTX( Quote.Total.AverageMRCProductMultiplier )*>

	

/




<*CTX( Quote.Total.AverageProductMultiplier )*>

	

/




<*CTX( Quote.Total.AveragePromoDiscountPercent )*>

	

/




<*CTX( Quote.Total.CartComment )*>

	

/




<*CTX( Quote.Total.ChannelCommisionAmount )*>

	

/




<*CTX( Quote.Total.ChannelCommisionPercent )*>

	

/




<*CTX( Quote.Total.ChannelCost )*>

	

/




<*CTX( Quote.Total.ChannelGrossMarginAmount )*>

	

/




<*CTX( Quote.Total.ChannelGrossMarginPercent )*>

	

/




<*CTX( Quote.Total.ChannelMarkupAmount )*>

	

/




<*CTX( Quote.Total.ChannelMarkupPercent )*>

	

/




<*CTX( Quote.Total.Cost.DefaultDecimal )*>

	

/




<*CTX( Quote.Total.Cost.DefaultDisplay )*>

	

/




<*CTX( Quote.Total.Cost.MarketDecimal )*>

	

<*CTX( Quote.Total.Cost.Value )*>




<*CTX( Quote.Total.Cost.MarketDisplay )*>

	

<*CTX( Quote.Total.Cost.Display )*>


 	

<*CTX( Quote.Total.CustomField(x) )*>




<*CTX( Quote.Total.EndUserSubTotalAmount )*>

	

/




<*CTX( Quote.Total.EndUserSubTotalAmount )*>

	

/




<*CTX( Quote.Total.GrossMarginAmount )*>

	

/




<*CTX( Quote.Total.GrossMarginPercent )*>

	

/




<*CTX( Quote.Total.ItemCustomField(x) )*>

	

/




<*CTX( Quote.Total.ItemCustomFieldComputed(x) )*>

	

/




<*CTX( Quote.Total.MarginHealthColor )*>

	

/




<*CTX( Quote.Total.MarginHealthImage )*>

	

/




<*CTX( Quote.Total.MonthlyFee )*>

	

/




<*CTX( Quote.Total.MRCEndUserSubTotalAmount )*>

	

/




<*CTX( Quote.Total.MRCMarginHealthColor )*>

	

/




<*CTX( Quote.Total.MRCMarginHealthImage )*>

	

/




<*CTX( Quote.Total.MRCSubTotalAmount )*>

	

/




<*CTX( Quote.Total.MRCTaxAmount )*>

	

/




<*CTX( Quote.Total.MRCTotalAmount )*>

	

<*CTX( Quote.Total.MrcAmount )*>




<*CTX( Quote.Total.MRCVatAmount )*>

	

/




<*CTX( Quote.Total.NumberOfPayments )*>

	

/




<*CTX( Quote.Total.OverallDiscountAmount )*>

	

/




<*CTX( Quote.Total.OverallDiscountPercent )*>

	

/




<*CTX( Quote.Total.OverallMRCDiscountAmount )*>

	

/




<*CTX( Quote.Total.OverallMRCDiscountPercent )*>

	

/




<*CTX( Quote.Total.ShippingCost )*>

	

/




<*CTX( Quote.Total.ShippingStaticPrice )*>

	

/




<*CTX( Quote.Total.SubTotalAmount )*>

	

/




<*CTX( Quote.Total.TaxAmount )*>

	

/




<*CTX( Quote.Total.TaxPercent )*>

	

/




<*CTX( Quote.Total.TotalAmount )*>

	

<*CTX( Quote.Total.Amount )*>




<*CTX( Quote.Total.TotalCustomColumn1 )*>

<*CTX( Quote.Total.TotalCustomColumn2 )*>

<*CTX( Quote.Total.TotalCustomColumn3 )*>

<*CTX( Quote.Total.TotalCustomColumn4 )*>

<*CTX( Quote.Total.TotalCustomColumn5 )*>

<*CTX( Quote.Total.TotalCustomColumn6 )*>

	

/




<*CTX( Quote.Total.TotalListPrice )*>

	

<*CTX( Quote.Total.ListPrice )*>




<*CTX( Quote.Total.TotalMonthlyFeeAmount )*>

	

/




<*CTX( Quote.Total.TotalMRCChannelCost )*>

	

/




<*CTX( Quote.Total.TotalMRCChannelGrossMarginAmount )*>

	

/




<*CTX( Quote.Total.TotalMRCChannelGrossMarginPercent )*>

	

/




<*CTX( Quote.Total.TotalMRCChannelMarkupAmount )*>

	

/




<*CTX( Quote.Total.TotalMRCChannelMarkupPercent )*>

	

/




<*CTX( Quote.Total.TotalMRCCost )*>

	

<*CTX( Quote.Total.MrcCost )*>




<*CTX( Quote.Total.TotalMRCGrossMarginAmount )*>

	

/




<*CTX( Quote.Total.TotalMRCGrossMarginPercent )*>

	

/




<*CTX( Quote.Total.TotalMRCListPrice )*>

	

<*CTX( Quote.Total.MrcListPrice )*>




<*CTX( Quote.Total.TotalMRCNetPrice )*>

	

<*CTX( Quote.Total.MrcNetPrice )*>




<*CTX( Quote.Total.TotalMRCProductDiscountAmount )*>

	

<*CTX( Quote.Total.MrcProductDiscountAmount )*>




<*CTX( Quote.Total.TotalMRCProductMultiplierAmount )*>

	

/




<*CTX( Quote.Total.TotalNetPrice )*>

	

<*CTX( Quote.Total.NetPrice )*>




<*CTX( Quote.Total.TotalOptionalItems )*>

	

/




<*CTX( Quote.Total.TotalProductDiscountAmount )*>

	

<*CTX( Quote.Total.ProductDiscountAmount )*>




<*CTX( Quote.Total.TotalProductModelPrice )*>

	

/




<*CTX( Quote.Total.TotalProductMultiplierAmount )*>

	

/




<*CTX( Quote.Total.TotalPromoDiscountAmount )*>

	

/




<*CTX( Quote.Total.TotalUpfrontAmount )*>

	

/




<*CTX( Quote.Total.TotalVariantItems )*>

	

/




<*CTX( Quote.Total.TotalWeight )*>

	

/




<*CTX( Quote.Total.UserCommisionAmount )*>

	

/




<*CTX( Quote.Total.UserCommisionPercent )*>

	

/




<*CTX( Quote.Total.VatAmount )*>

	

/




<*CTX( Quote.Total.VatPercent )*>

	

/


 	

<CTX( Quote.Total.TotalTaxAmount.Display )>


 	

<CTX( Quote.Total.TotalTaxAmount.Value )>


 	

<CTX( Quote.Total.TotalRecurringTaxAmount.Display )>


 	

<CTX( Quote.Total.TotalRecurringTaxAmount.Value )>

Related Information
API - Quote 1.0 vs Quote 2.0
Quote 2.0 Migration Process
Feature Specific Migration Instructions
Yes
No