# Quote Total standard calculations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/49104a03af3e4453ab1c01e9647dcd43.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Replace New Style classes with Old Style classes in IronPython
	
Use custom table data
	
Invoke a script directly from client using javascript
	
Call an external web service
	
Consume Python Global Scripts as REST Webservices
	
Rest Service Call
	
Send xml to an external system
	
Using Arg.Custom paramter
	
Configure container child product
	
Use ApplyProductChanges method
	
Quote


	
Write additional data to a quote xml
	
Quote Total standard calculations
	
Quote item copy event
	
Automatically add/update item with configuration in the quote
	
Check if the pricing condition is manually changed
	
Resetting Pricing Conditions
	
Setting Permissions for Quote Standard Fields
	
Product Configurator
	
Working with Streams
	
Other Examples
	
Using Trace and Log
	
Tips and Tricks
	
Calculate Product Type Custom Discount field
	
How to use Scripting Modules?
	
How to Hide Custom Field
	
How to integrate with Litmos using IronPython scripting?
	
Integrate with MS CRM
	
Product completed event
	
Product Type Multiplier to Parent Items Only
	
Set cart item to optional by default?
	
Set custom field to optional/required?
	
Set the Multiplier and Quantity of all child items to the Multiplier and Quantity of the parent item
	
Total Extended Amount and Total Cost of Optional Items
	
Use Product Type Item custom calculations?
	
Use Quote Total custom calculations?
	
Use SelectedAttributes of Quote item
	
Unicode Support in Scripting
	
Get Cookies for REST UI API Authentication
	
Use the <*ExecuteScript()*> Tag
	
Send Attribute Values via Scripting in Bulk to SAP Variant Configuration and Pricing
	
Reset Values via Scripting
	
Random Object
	
Event Pipeline in Quote 1.0
	
Event Pipeline in Quote 2.0
	
Script Performance
Quote Total standard calculations
Quote Total standard calculations

An administrator can write Quote Total standard calculations and modify them according to the business logic specifications.

Main entity for this calculation type is Total (see Scripting.IQuoteTotal for available members).

Beside Total, Quote entity can be used (see Scripting.IQuote for available members).



def CalculateSystemRolledUp(systemItem, item):
    for child in item.Children:
        CalculateSystemRolledUp(item, child)

    #This condition should be checked if Application parameter 
    #'Include child items set as 'Optional' in Rolled-Up price and cost calculations.' is set to FALSE
    #If it is set to TRUE, remove this checking
    if item.IsOptional:
        return
    systemItem.RolledUpListPrice += item.RolledUpListPrice
    systemItem.RolledUpExtendedListPrice += item.RolledUpExtendedListPrice
    systemItem.RolledUpNetPrice += item.RolledUpNetPrice
    systemItem.RolledUpExtendedAmount += item.RolledUpExtendedAmount
    systemItem.RolledUpEndCustomerUnitPrice += item.RolledUpEndCustomerUnitPrice
    systemItem.RolledUpEndCustomerExtendedPrice += item.RolledUpEndCustomerExtendedPrice
    systemItem.RolledUpCost += item.RolledUpCost
    systemItem.RolledUpExtendedCost += item.RolledUpExtendedCost
    systemItem.RolledUpDiscountAmount += item.RolledUpDiscountAmount

    #If using MRC (Recurring pricing), include following MRC calculation in script:
    #----------------------------------------------------------
    systemItem.MrcRolledUpListPrice += item.MrcRolledUpListPrice
    systemItem.MrcRolledUpExtendedListPrice += item.MrcRolledUpExtendedListPrice
    systemItem.MrcRolledUpNetPrice += item.MrcRolledUpNetPrice
    systemItem.MrcRolledUpExtendedAmount += item.MrcRolledUpExtendedAmount
    systemItem.MrcRolledUpEndCustomerUnitPrice += item.MrcRolledUpEndCustomerUnitPrice
    systemItem.MrcRolledUpEndCustomerExtendedPrice += item.MrcRolledUpEndCustomerExtendedPrice
    systemItem.MrcRolledUpCost += item.MrcRolledUpCost
    systemItem.MrcRolledUpExtendedCost += item.MrcRolledUpExtendedCost
    systemItem.MrcRolledUpDiscountAmount += item.MrcRolledUpDiscountAmount
    #----------------------------------------------------------

    if systemItem.RolledUpExtendedAmount != 0:
        systemItem.RolledUpMargin = (systemItem.RolledUpExtendedAmount - systemItem.RolledUpExtendedCost) / \
        abs(float(systemItem.RolledUpExtendedAmount)) * 100
    else: 
        systemItem.RolledUpMargin = 0

    if systemItem.RolledUpExtendedListPrice != 0:
        systemItem.RolledUpDiscountPercent = systemItem.RolledUpDiscountAmount / systemItem.RolledUpExtendedListPrice * 100
    else: 
        systemItem.RolledUpDiscountPercent = 0

    #If using MRC (Recurring pricing), include following MRC calculation in script:
    #----------------------------------------------------------
    if systemItem.MrcRolledUpExtendedAmount != 0:
        systemItem.MrcRolledUpMargin = (systemItem.MrcRolledUpExtendedAmount - systemItem.MrcRolledUpExtendedCost) / \
        abs(float(systemItem.MrcRolledUpExtendedAmount)) * 100
    else:
        systemItem.MrcRolledUpMargin = 0

    if systemItem.MrcRolledUpExtendedListPrice != 0:
        systemItem.MrcRolledUpDiscountPercent = systemItem.MrcRolledUpDiscountAmount / \
        systemItem.MrcRolledUpExtendedListPrice * 100
    else:
        systemItem.MrcRolledUpDiscountPercent = 0
    #----------------------------------------------------------

totalNetPrice = 0
totalListPrice = 0
totalCost = 0
totalDiscAmt = 0
totalMultAmt = 0
totalProductModelPrice = 0
totalWeight = 0
totalCustom1 = 0
totalCustom2 = 0
totalCustom3 = 0
totalCustom4 = 0
totalCustom5 = 0
totalCustom6 = 0
totalMRCNetPrice = 0
totalMRCListPrice = 0
totalMRCCost = 0
totalMRCDiscAmt = 0
totalMRCMultAmt = 0
totalEndUser = 0
totalMRCEndUser = 0

#Missing part for reseting quote item custom fields
#This will be available in the following releases

if Quote.SelectedShipping is None:
    Quote.Total.ShippingCost = 0

if Quote.IsShippingLoadedForAllItems and (Quote.SelectedShipping is not None) and \
(Quote.SelectedShipping.Editable is False):
    Quote.Total.ShippingCost = Quote.Total.ShippingStaticPrice

items = []
for item in Quote.Items:
    items.append(item)
items.reverse()

for item in items:
    #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
    #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
    #and (item.ItemType != 1 anditem.ItemType != 2)

    #If Application parameter 'Show optional items' is set to FALSE condition is:
    #if (item.ItemType != 1 and item.ItemType != 2)

    #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
    #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
    if (item.ItemType != 1 and item.ItemType != 2):
        totalProductModelPrice += item.ProductModelPrice * item.Quantity
        totalListPrice += item.ExtendedListPrice
        totalNetPrice += item.ExtendedAmount
        totalCost += item.ExtendedCost
        totalDiscAmt += item.DiscountAmount
        totalMultAmt += item.MultiplierAmount
        if item.IsMainItem:
            totalWeight += item.Weight * item.Quantity
        if Quote.IsShippingLoadedForAllItems and item.IsMainItem and (Quote.SelectedShipping is not None) and \
        (Quote.SelectedShipping.Editable is False):
            Quote.Total.ShippingCost += item.AsMainItem.ShippingCost * item.AsMainItem.Quantity

        totalCustom1 += item.CustomColumn1
        totalCustom2 += item.CustomColumn2
        totalCustom3 += item.CustomColumn3
        totalCustom4 += item.CustomColumn4
        totalCustom5 += item.CustomColumn5
        totalCustom6 += item.CustomColumn6

        totalMRCNetPrice += item.MrcExtendedAmount
        totalMRCListPrice += item.MrcExtendedListPrice
        totalMRCCost += item.MrcExtendedCost
        totalMRCDiscAmt += item.MrcDiscountAmount
        totalMRCMultAmt += item.MrcMultiplierAmount
        totalEndUser += item.EndUserExtendedAmount
        totalMRCEndUser += item.MrcEndUserExtendedAmount

        #Missing part for updating quote item custom fields
        #This will be available in the following releases

Total.TotalWeight = totalWeight
Quote.Total.TotalListPrice = totalListPrice
Quote.Total.TotalProductModelPrice = totalProductModelPrice
Quote.Total.TotalPromoDiscountAmount = Quote.Total.TotalProductModelPrice - Quote.Total.TotalListPrice
if Quote.Total.TotalProductModelPrice != 0:
    Quote.Total.AveragePromoDiscountPercent = 100 * (Quote.Total.TotalPromoDiscountAmount / Quote.Total.TotalProductModelPrice)
else:
    Quote.Total.AveragePromoDiscountPercent = 0
Quote.Total.TotalNetPrice = totalNetPrice
Quote.Total.TotalProductDiscountAmount = totalDiscAmt
Quote.Total.TotalProductMultiplierAmount = totalMultAmt
Quote.Total.Cost = totalCost
Quote.Total.AverageProductDiscountPercent = 0
Quote.Total.AverageProductMultiplier = 0

if totalListPrice - totalMultAmt != 0:
    Quote.Total.AverageProductDiscountPercent = 100 * totalDiscAmt / (totalListPrice - totalMultAmt)
else:
    Quote.Total.AverageProductDiscountPercent = 0

if totalListPrice != 0:
    Quote.Total.AverageProductMultiplier = (totalListPrice - totalMultAmt) / totalListPrice
else:
    Quote.Total.AverageProductMultiplier = 0

if Quote.Total.AdditionalMultiplier != 0:
    Quote.Total.AdditionalMultiplierAmount = totalNetPrice * (1 - Quote.Total.AdditionalMultiplier)
    totalNetPrice -= Quote.Total.AdditionalMultiplierAmount
    totalEndUser -= Quote.Total.AdditionalMultiplierAmount
else:
    Quote.Total.AdditionalMultiplierAmount = 0

for ad in Quote.AdditionalDiscounts:
    totalNetPrice -= ad.DiscountAmount
    totalEndUser -= ad.DiscountAmount

Quote.Total.SubtotalAmount = totalNetPrice
Quote.Total.OverallDiscountAmount = Quote.Total.TotalListPrice - Quote.Total.SubtotalAmount

if Quote.Total.TotalListPrice != 0:
    Quote.Total.OverallDiscountPercent = 100 * Quote.Total.OverallDiscountAmount / Quote.Total.TotalListPrice
else:
    Quote.Total.OverallDiscountPercent = 0

Quote.Total.TotalMrcListPrice = totalMRCListPrice
Quote.Total.TotalMrcNetPrice = totalMRCNetPrice
Quote.Total.TotalMrcProductDiscountAmount = totalMRCDiscAmt
Quote.Total.TotalMrcProductMultiplierAmount = totalMRCMultAmt
Quote.Total.TotalMrcCost = totalMRCCost
Quote.Total.AverageMrcProductDiscountPercent = 0
Quote.Total.AverageMrcProductMultiplier = 0

if (totalMRCListPrice - totalMRCMultAmt != 0):
    Quote.Total.AverageMrcProductDiscountPercent = 100 * totalMRCDiscAmt / (totalMRCListPrice - totalMRCMultAmt)
else:
    Quote.Total.AverageMrcProductDiscountPercent = 0

if totalMRCListPrice != 0:
    Quote.Total.AverageMrcProductMultiplier = (totalMRCListPrice - totalMRCMultAmt) / totalMRCListPrice
else:
    Quote.Total.AverageMrcProductMultiplier = 0

Quote.Total.MrcSubtotalAmount = totalMRCNetPrice
Quote.Total.OverallMrcDiscountAmount = Quote.Total.TotalMrcListPrice - Quote.Total.MrcSubtotalAmount

if Quote.Total.TotalMrcListPrice != 0:
    Quote.Total.OverallMrcDiscountPercent = 100 * Quote.Total.OverallMrcDiscountAmount / Quote.Total.TotalMrcListPrice
else:
    Quote.Total.OverallMrcDiscountPercent = 0

#EndUser MarkUp part
Quote.Total.ChannelCost = Quote.Total.SubtotalAmount
Quote.Total.TotalMrcChannelCost = Quote.Total.MrcSubtotalAmount
sumExtednedAmount = 0.0
sumChannelAmount = 0.0
sumMRCChannelAmount = 0.0

for item in items:
    #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
    #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
    #and (item.ItemType != 1 anditem.ItemType != 2)

    #If Application parameter 'Show optional items' is set to FALSE condition is:
    #if (item.ItemType != 1 and item.ItemType != 2)

    #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
    #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
    if (item.ItemType != 1 and item.ItemType != 2):
        sumExtednedAmount += item.ExtendedAmount
        sumChannelAmount += item.ChannelMarkupAmount
        sumMRCChannelAmount += item.MrcChannelMarkupAmount

if sumExtednedAmount != 0:
    Quote.Total.ChannelMarkupPercent = (sumChannelAmount / sumExtednedAmount) * 100
else:
    Quote.Total.ChannelMarkupPercent = 0

Quote.Total.ChannelMarkupAmount = sumChannelAmount
Quote.Total.EndUserSubtotalAmount = totalEndUser
Quote.Total.TotalMrcChannelMarkupAmount = sumMRCChannelAmount
Quote.Total.MrcEndUserSubtotalAmount = totalMRCEndUser

#Margin part
Quote.Total.MarginPercent = 0
if Quote.Total.SubtotalAmount != 0:
    Quote.Total.MarginPercent = 100 * (Quote.Total.SubtotalAmount - Quote.Total.Cost) / abs(float(Quote.Total.SubtotalAmount))
Quote.Total.MarginAmount = Quote.Total.SubtotalAmount - Quote.Total.Cost
Quote.Total.TotalMrcMarginPercent = 0
if Quote.Total.MrcSubtotalAmount != 0:
    Quote.Total.TotalMrcMarginPercent = 100 * (Quote.Total.MrcSubtotalAmount - Quote.Total.TotalMrcCost) / \
    abs(float(Quote.Total.MrcSubtotalAmount))
Quote.Total.TotalMrcMarginAmount = Quote.Total.MrcSubtotalAmount - Quote.Total.TotalMrcCost

#Total Amount part
result = Quote.Total.EndUserSubtotalAmount

if ((Quote.Total.IsFieldEditable("VatPercent") is False) and (Quote.Total.IsFieldEditable("VatAmount") is False)):
    vatPercent = 0.0
    if Quote.ShipToCustomer is not None and len(Quote.ShipToCustomer.CountryAbbreviation) > 0:
        vatPercentData = SqlHelper.GetFirst("select tax_percent from country_tax where country_abrev3='" + \
        Quote.ShipToCustomer.CountryAbbreviation + "'")
        vatPercent = float(str(vatPercentData.tax_percent))
    Total.VatPercent = vatPercent

Quote.Total.VatAmount = Quote.Total.VatPercent * Quote.Total.SubtotalAmount / 100
Quote.Total.MrcVatAmount = Quote.Total.VatPercent * Quote.Total.MrcSubtotalAmount / 100

if ((Quote.Total.IsFieldEditable("TaxPercent") is False) and (Quote.Total.IsFieldEditable("TaxAmount") is False)):
    taxPercent = 0.0
    if Quote.ShipToCustomer is not None and len(Quote.ShipToCustomer.StateAbbreviation) > 0:
        taxPercentData = SqlHelper.GetFirst("select SALES_TAX_RATE from STATE_TAX where STATE_SHORT_NAME='" + \
        Quote.ShipToCustomer.StateAbbreviation + "'")
        taxPercent = float(str(taxPercentData.SALES_TAX_RATE))
    Total.TaxPercent = taxPercent

Quote.Total.TaxAmount = Quote.Total.TaxPercent * Quote.Total.SubtotalAmount / 100
Quote.Total.MrcTaxAmount = Quote.Total.TaxPercent * Quote.Total.MrcSubtotalAmount / 100

#If Application parameter 'Apply Taxes on Shipping' is TRUE, include following code:
#------------------------------------------------------------
Quote.Total.VatAmount += Quote.Total.VatPercent * Quote.Total.ShippingCost / 100
Quote.Total.TaxAmount += Quote.Total.TaxPercent * Quote.Total.ShippingCost / 100
#------------------------------------------------------------

result += Quote.Total.ShippingCost

if Quote.IncludeTaxInTotalPrice:
    result += Quote.Total.TaxAmount
    result += Quote.Total.VatAmount

Quote.Total.TotalAmount = result
Quote.Total.MrcTotalAmount = Quote.Total.MrcSubtotalAmount + Quote.Total.MrcVatAmount + Quote.Total.MrcTaxAmount

#EndUser Margin part
Quote.Total.ChannelMarginPercent = 0
if Quote.Total.EndUserSubtotalAmount != 0:
    Quote.Total.ChannelMarginPercent = 100 * (Quote.Total.EndUserSubtotalAmount - Quote.Total.ChannelCost) / \
    abs(float(Quote.Total.EndUserSubtotalAmount))
Quote.Total.ChannelMarginAmount = Quote.Total.ChannelMarkupAmount

Quote.Total.TotalMrcChannelMarginPercent = 0
if Quote.Total.MrcEndUserSubtotalAmount != 0:
    Quote.Total.TotalMrcChannelMarginPercent = 100 * (Quote.Total.MrcEndUserSubtotalAmount - Quote.Total.TotalMrcChannelCost) / \
    abs(float(Quote.Total.MrcEndUserSubtotalAmount))
Quote.Total.TotalMrcChannelMarginAmount = Quote.Total.TotalMrcChannelMarkupAmount

#Calculate RolledUp values
miItems = []
for item in Quote.MainItems:
    miItems.append(item)
miItems.reverse()

for mi in miItems:
    mi.RolledUpListPrice = mi.ListPrice
    mi.RolledUpExtendedListPrice = mi.ExtendedListPrice
    mi.RolledUpNetPrice = mi.NetPrice
    mi.RolledUpExtendedAmount = mi.ExtendedAmount
    mi.RolledUpEndCustomerUnitPrice = mi.EndUserNet
    mi.RolledUpEndCustomerExtendedPrice = mi.EndUserExtendedAmount
    mi.RolledUpCost = mi.Cost
    mi.RolledUpExtendedCost = mi.ExtendedCost
    mi.RolledUpDiscountAmount = mi.DiscountAmount

    #If using MRC (Recurring pricing), include following MRC calculation in script:
    #----------------------------------------------------------
    mi.MrcRolledUpListPrice = mi.MrcListPrice
    mi.MrcRolledUpExtendedListPrice = mi.MrcExtendedListPrice
    mi.MrcRolledUpNetPrice = mi.MrcNetPrice
    mi.MrcRolledUpExtendedAmount = mi.MrcExtendedAmount
    mi.MrcRolledUpEndCustomerUnitPrice = mi.MrcEndUserNet
    mi.MrcRolledUpEndCustomerExtendedPrice = mi.MrcEndUserExtendedAmount
    mi.MrcRolledUpCost = mi.MrcCost
    mi.MrcRolledUpExtendedCost = mi.MrcExtendedCost
    mi.MrcRolledUpDiscountAmount = mi.MrcDiscountAmount
    #----------------------------------------------------------

    for li in mi.LineItems:
        #This condition should be checked if Application parameter 
        #'Include child items set as 'Optional' in Rolled-Up price and cost calculations.' is set to FALSE
        #If it is set to TRUE, remove this checking
        if li.IsOptional:
            continue
        mi.RolledUpListPrice += li.ListPrice
        mi.RolledUpExtendedListPrice += li.ExtendedListPrice
        mi.RolledUpNetPrice += li.NetPrice
        mi.RolledUpExtendedAmount += li.ExtendedAmount
        mi.RolledUpEndCustomerUnitPrice += li.EndUserNet
        mi.RolledUpEndCustomerExtendedPrice += li.EndUserExtendedAmount
        mi.RolledUpCost += li.Cost
        mi.RolledUpExtendedCost += li.ExtendedCost
        mi.RolledUpDiscountAmount += li.DiscountAmount

        #If using MRC (Recurring pricing), include following MRC calculation in script:
        #----------------------------------------------------------
        mi.MrcRolledUpListPrice += li.MrcListPrice
        mi.MrcRolledUpExtendedListPrice += li.MrcExtendedListPrice
        mi.MrcRolledUpNetPrice += li.MrcNetPrice
        mi.MrcRolledUpExtendedAmount += li.MrcExtendedAmount
        mi.MrcRolledUpEndCustomerUnitPrice += li.MrcEndUserNet
        mi.MrcRolledUpEndCustomerExtendedPrice += li.MrcEndUserExtendedAmount
        mi.MrcRolledUpCost += li.MrcCost
        mi.MrcRolledUpExtendedCost += li.MrcExtendedCost
        mi.MrcRolledUpDiscountAmount += li.MrcDiscountAmount
        #----------------------------------------------------------

    if mi.RolledUpExtendedAmount != 0:
        mi.RolledUpMargin = (mi.RolledUpExtendedAmount - mi.RolledUpExtendedCost) / \
        abs(float(mi.RolledUpExtendedAmount)) * 100
    else:
        mi.RolledUpMargin = 0

    if mi.RolledUpExtendedListPrice != 0:
        mi.RolledUpDiscountPercent = mi.RolledUpDiscountAmount / mi.RolledUpExtendedListPrice * 100
    else:
        mi.RolledUpDiscountPercent = 0

    #If using MRC (Recurring pricing), include following MRC calculation in script:
    #----------------------------------------------------------
    if mi.MrcRolledUpExtendedAmount != 0:
        mi.MrcRolledUpMargin = (mi.MrcRolledUpExtendedAmount - mi.MrcRolledUpExtendedCost) / \
        abs(float(mi.MrcRolledUpExtendedAmount)) * 100
    else:
        mi.MrcRolledUpMargin = 0

    if mi.MrcRolledUpExtendedListPrice != 0:
        mi.MrcRolledUpDiscountPercent = mi.MrcRolledUpDiscountAmount / mi.MrcRolledUpExtendedListPrice * 100
    else:
        mi.MrcRolledUpDiscountPercent = 0
    #----------------------------------------------------------

#system main items
sysItems = []
for mi in Quote.RootSystemMainItems:
    sysItems.append(mi)
sysItems.reverse()

for systemItem in sysItems:
    for childItem in systemItem.Children:
        CalculateSystemRolledUp(systemItem, childItem)

#Custom Columns calculation
Quote.Total.TotalCustomColumn1 = totalCustom1
Quote.Total.TotalCustomColumn2 = totalCustom2
Quote.Total.TotalCustomColumn3 = totalCustom3
Quote.Total.TotalCustomColumn4 = totalCustom4
Quote.Total.TotalCustomColumn5 = totalCustom5
Quote.Total.TotalCustomColumn6 = totalCustom6

Total Vat Amount to Vat Percent

Standard calculation for calculating vat percent that will generate entered vat amount.



if Quote.Total.IsFieldModified("VatAmount"):
    #If Application parameter 'Apply Taxes on Shipping' is TRUE, include following code:
    #------------------------------------------------------------
    if (Quote.Total.EndUserSubtotalAmount + Quote.Total.ShippingCost) != 0:
        Quote.Total.VatPercent = Quote.Total.VatAmount * 100 / (Quote.Total.EndUserSubtotalAmount + Quote.Total.ShippingCost)
    #------------------------------------------------------------
    #If Application parameter 'Apply Taxes on Shipping' is FALSE, include following code:
    if (Quote.Total.EndUserSubtotalAmount != 0):
        Quote.Total.VatPercent = Quote.Total.VatAmount * 100 / Quote.Total.EndUserSubtotalAmount

Total Tax Amount to Tax Percent

Standard calculation for calculating tax percent that will generate entered tax amount.



if Quote.Total.IsFieldModified("TaxAmount"):
    #If Application parameter 'Apply Taxes on Shipping' is TRUE, include following code:
    #------------------------------------------------------------
    if (Quote.Total.EndUserSubtotalAmount + Quote.Total.ShippingCost) != 0:
        Quote.Total.TaxPercent = Quote.Total.TaxAmount * 100 / (Quote.Total.EndUserSubtotalAmount + Quote.Total.ShippingCost)
    #------------------------------------------------------------
    #If Application parameter 'Apply Taxes on Shipping' is FALSE, include following code:
    if (Quote.Total.EndUserSubtotalAmount != 0):
        Quote.Total.TaxPercent = Quote.Total.TaxAmount * 100 / Quote.Total.EndUserSubtotalAmount

Total Net Price to Discount

Standard calculation for calculating discount percent that will generate entered Total Net Price and applying that discount percent to all items.

This calculation ignores item's min/max discount value and overrides it. Use Item All calculation afterwards in order to affect other Item fields.



if Quote.Total.IsFieldModified("TotalNetPrice"):
    sum = 0

    items = []
    for item in Quote.Items:
        items.append(item)
    items.reverse()

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            sum += item.ListPrice * item.Quantity * item.Multiplier

    newDiscount = 0
    if sum != 0:
       newDiscount = (1 - Quote.Total.TotalNetPrice / sum) * 100

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False)) 
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            #If Application parameter 'Set discount to 0 if list price is 0' is set to 'TRUE' use code:
            #------------------------------------------------------------------
            if item.ListPrice = 0:
                item.DiscountPercent = 0
            else:
                item.DiscountPercent = newDiscount
            #------------------------------------------------------------------
            #If Application parameter 'Set discount to 0 if list price is 0' is set to 'FALSE' use code:
            item.DiscountPercent = newDiscount

Total Net Price to Discount Relative

Standard calculation for calculating discount percent that will generate entered Total Net Price and applies that discount percent to all items. This calculation adjusts item's discount percent according to its allowed max/min discount percent values. Use Item All calculation afterwards in order to affect other Item fields.



if Quote.Total.IsFieldModified("TotalNetPrice"):
    maxDis = 0
    minDis = 0
    sum = 0

    items = []
    for item in Quote.Items:
        items.append(item)
    items.reverse()

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            sum += item.ListPrice * item.Quantity * item.Multiplier
            maxDis += item.ListPrice * item.Quantity * item.Multiplier * item.MaxDiscountPercent / 100
            minDis += item.ListPrice * item.Quantity * item.Multiplier * item.MinDiscountPercent / 100

    if (maxDis - minDis) != 0:
        for item in items:
            #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
            #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
            #and (item.ItemType != 1 anditem.ItemType != 2)

            #If Application parameter 'Show optional items' is set to FALSE condition is:
            #if (item.ItemType != 1 and item.ItemType != 2)

            #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
            #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
            if (item.ItemType != 1 and item.ItemType != 2):
                #If Application parameter 'Set discount to 0 if list price is 0' is set to 'TRUE' use code:
                #------------------------------------------------------------------
                if item.ListPrice = 0:
                    item.DiscountPercent = 0
                else:
                    item.DiscountPercent = item.MinDiscountPercent + (item.MaxDiscountPercent - item.MinDiscountPercent) * \
                    (sum - Quote.Total.TotalNetPrice - minDis) / (maxDis - minDis)
                #------------------------------------------------------------------
                #If Application parameter 'Set discount to 0 if list price is 0' is set to 'FALSE' use code:
                    item.DiscountPercent = item.MinDiscountPercent + (item.MaxDiscountPercent - item.MinDiscountPercent) * \
                    (sum - Quote.Total.TotalNetPrice - minDis) / (maxDis - minDis)
    else:
        newDiscount = 0
        if sum != 0:
            newDiscount = (1 - Quote.Total.TotalNetPrice / sum) * 100
            for item in items:
                #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
                #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
                #and (item.ItemType != 1 anditem.ItemType != 2)

                #If Application parameter 'Show optional items' is set to FALSE condition is:
                #if (item.ItemType != 1 and item.ItemType != 2)

                #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
                #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
                if (item.ItemType != 1 and item.ItemType != 2):
                    #If Application parameter 'Set discount to 0 if list price is 0' is set to 'TRUE' use code:
                    #------------------------------------------------------------------
                    if item.ListPrice = 0:
                        item.DiscountPercent = 0
                    else:
                        item.DiscountPercent = newDiscount
                    #------------------------------------------------------------------
                    #If Application parameter 'Set discount to 0 if list price is 0' is set to 'FALSE' use code:
                        item.DiscountPercent = newDiscount

Total Net Price to Discount Relative

Standard calculation for calculating multiplier that will generate entered Total Net Price and applies that multiplier to all items. This calculation ignores item's max/min multiplier value and overrides it. Use Item All calculation afterwards in order to affect other Item fields.



if Quote.Total.IsFieldModified("TotalNetPrice"):
    sum = 0

    items = []
    for item in Quote.Items:
        items.append(item)
    items.reverse()

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            sum += item.ListPrice * item.Quantity * (100 - item.DiscountPercent) / 100

    newMultiplier = 1
    if sum != 0:
        newMultiplier = Quote.Total.TotalNetPrice / sum
    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            item.Multiplier = newMultiplier

Total Net Price to Multiplier Relative

Standard calculation for calculating multiplier that will generate entered Total Net Price and applies that multiplier to all items. This calculation adjusts item's multiplier according to its allowed max/min multiplier values.

Use Item All calculation afterwards in order to affect other Item fields.



if Quote.Total.IsFieldModified("TotalNetPrice"):
    maxMulAmount = 0
    minMulAmount = 0
    sum = 0

    items = []
    for item in Quote.Items:
        items.append(item)
    items.reverse()

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            sum += item.ListPrice * item.Quantity * (100 - item.DiscountPercent) / 100
            maxMulAmount += item.ListPrice * item.Quantity * (100 - item.DiscountPercent) * (1 - item.MinMultiplier) / 100
            minMulAmount += item.ListPrice * item.Quantity * (100 - item.DiscountPercent) * (1 - item.MaxMultiplier) / 100

    if (maxMulAmount - minMulAmount) != 0:
        for item in items:
            #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
            #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
            #and (item.ItemType != 1 anditem.ItemType != 2)

            #If Application parameter 'Show optional items' is set to FALSE condition is:
            #if (item.ItemType != 1 and item.ItemType != 2)

            #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
            #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
            if (item.ItemType != 1 and item.ItemType != 2):
                item.Multiplier = item.MaxMultiplier - (item.MaxMultiplier - item.MinMultiplier) * \
                ((sum - Quote.Total.TotalNetPrice - minMulAmount) / (maxMulAmount - minMulAmount))
    else:
        newMultiplier = 1
        if sum != 0:
            newMultiplier = Quote.Total.TotalNetPrice / sum
        for item in items:
            #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
            #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
            #and (item.ItemType != 1 anditem.ItemType != 2)

            #If Application parameter 'Show optional items' is set to FALSE condition is:
            #if (item.ItemType != 1 and item.ItemType != 2)

            #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
            #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
            if (item.ItemType != 1 and item.ItemType != 2):
                item.Multiplier = newMultiplier

Total Product Average Discount Percent to Items

Standard calculation for applying Total Average Discount Percent of all items. Use Item All calculation afterwards in order to affect other Item fields.



if Quote.Total.IsFieldModified("AverageProductDiscountPercent"):
    sum = 0
    totalExtendedPrice = 0

    items = []
    for item in Quote.Items:
        items.append(item)
    items.reverse()

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            sum += item.ListPrice * item.Quantity * item.Multiplier
            totalExtendedPrice += item.ListPrice * item.Quantity

    newDiscount = 0
    if sum != 0:
        newDiscount = (totalExtendedPrice / sum) * Quote.Total.AverageProductDiscountPercent
    else:
        newDiscount = 0

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            #If Application parameter 'Set discount to 0 if list price is 0' is set to 'TRUE' use code:
            #------------------------------------------------------------------
            if item.ListPrice = 0:
                item.DiscountPercent = 0
            else:
                item.DiscountPercent = newDiscountPercent
            #------------------------------------------------------------------
            #If Application parameter 'Set discount to 0 if list price is 0' is set to 'FALSE' use code:
            item.DiscountPercent = newDiscountPercent

Total Product Average Multiplier to Items

Standard calculation for applying Total Product Average Multiplier ot all items.

Use Item All calculation afterwards in order to affect other Item fields.



if Quote.Total.IsFieldModified("AverageProductMultiplier"):

    items = []
    for item in Quote.Items:
        items.append(item)
    items.reverse()

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            item.Multiplier = Quote.Total.AverageProductMultiplier

Total Product Discount Amount to Items

Standard calculation for calculating discount percent that will generate entered Total Product Discount Amount and applies that discount percent to all items. This calculation ignores item's max/min discount value and overrides it. Use Item All calculation afterwards in order to affect other Item fields.



if Quote.Total.IsFieldModified("TotalProductDiscountAmount"):
    sum = 0
    items = []
    for item in Quote.Items:
        items.append(item)
    items.reverse()

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            sum += item.ListPrice * item.Quantity * item.Multiplier

    newDiscount = 0
    if sum != 0:
        newDiscount = (Quote.Total.TotalProductDiscountAmount / sum) * 100

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            #If Application parameter 'Set discount to 0 if list price is 0' is set to 'TRUE' use code:
            #------------------------------------------------------------------
            if item.ListPrice = 0:
                item.DiscountPercent = 0
            else:
                item.DiscountPercent = newDiscount
            #------------------------------------------------------------------
            #If Application parameter 'Set discount to 0 if list price is 0' is set to 'FALSE' use code:
            item.DiscountPercent = newDiscount

Total Product Discount Amount to Items Relative

Standard calculation for calculating discount percent that will generate entered Total Product Discount Amount and applies that discount percent to all items. This calculation adjusts item's discount percent according to its allowed max/min discount values. Use Item All calculation afterwards in order to affect other Item fields.



if Quote.Total.IsFieldModified("TotalProductDiscountAmount"):
    sum = 0
    maxDis = 0
    minDis = 0

    items = []
    for item in Quote.Items:
        items.append(item)
    items.reverse()

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            sum += item.ListPrice * item.Quantity * item.Multiplier
            maxDis += item.ListPrice * item.Quantity * item.Multiplier * item.MaxDiscountPercent / 100
            minDis += item.ListPrice * item.Quantity * item.Multiplier * item.MinDiscountPercent / 100

    if (maxDis - minDis) != 0:
        for item in items:
            #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
            #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
            #and (item.ItemType != 1 anditem.ItemType != 2)

            #If Application parameter 'Show optional items' is set to FALSE condition is:
            #if (item.ItemType != 1 and item.ItemType != 2)

            #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
            #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
            if (item.ItemType != 1 and item.ItemType != 2):
                #If Application parameter 'Set discount to 0 if list price is 0' is set to 'TRUE' use code:
                #------------------------------------------------------------------
                if item.ListPrice = 0:
                    item.DiscountPercent = 0
                else:
                    item.DiscountPercent = item.MinDiscountPercent + (item.MaxDiscountPercent - item.MinDiscountPercent) * \
                    ((sum - Quote.Total.TotalProductDiscountAmount - minDis) / (maxDis - minDis))
                #------------------------------------------------------------------
                #If Application parameter 'Set discount to 0 if list price is 0' is set to 'FALSE' use code:
                item.DiscountPercent = item.MinDiscountPercent + (item.MaxDiscountPercent - item.MinDiscountPercent) * \
                ((sum - Quote.Total.TotalProductDiscountAmount - minDis) / (maxDis - minDis))
    else:
        newDiscount = 0
        if sum != 0:
            newDiscount = (Quote.Total.TotalProductDiscountAmount / sum) * 100
            for item in items:
                #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
                #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
                #and (item.ItemType != 1 anditem.ItemType != 2)

                #If Application parameter 'Show optional items' is set to FALSE condition is:
                #if (item.ItemType != 1 and item.ItemType != 2)

                #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
                #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
                if (item.ItemType != 1 and item.ItemType != 2):
                    #If Application parameter 'Set discount to 0 if list price is 0' is set to 'TRUE' use code:
                    #------------------------------------------------------------------
                    if item.ListPrice = 0:
                        item.DiscountPercent = 0
                    else:
                        item.DiscountPercent = newDiscount
                    #------------------------------------------------------------------
                    #If Application parameter 'Set discount to 0 if list price is 0' is set to 'FALSE' use code:
                    item.DiscountPercent = newDiscount

Total Product Multiplier Amount to Items

Standard calculation for calculating multiplier that will generate entered Total Product Mulitiplier Amount and applies that multiplier to all items. This calculation ignores item's max/min multiplier value and overrides it. Use Item All calculation afterwards in order to affect other Item fields.



if Quote.Total.IsFieldModified("TotalProductMultiplierAmount"):
    sum = 0

    items = []
    for item in Quote.Items:
        items.append(item)
    items.reverse()

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            sum += item.ListPrice * item.Quantity

    newMultiplier = 1
    if sum != 0:
        newMultiplier = (Quote.Total.TotalListPrice - Quote.Total.TotalProductMultiplierAmount) / sum
    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            item.Multiplier = newMultiplier

Total Product Multiplier Amount to Items Relative

Standard calculation for calculating multiplier that will generate entered Total Product Multiplier Amount and applies that multiplier to all items. This calculation adjusts item's multiplier according to its allowed max/min multiplier values. Use Item All calculation afterwards in order to affect other Item fields.



if Quote.Total.IsFieldModified("TotalProductMultiplierAmount"):
    maxMulAmount = 0
    minMulAmount = 0
    sum = 0

    items = []
    for item in Quote.Items:
        items.append(item)
    items.reverse()

    for item in items:
        #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
        #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
        #and (item.ItemType != 1 anditem.ItemType != 2)

        #If Application parameter 'Show optional items' is set to FALSE condition is:
        #if (item.ItemType != 1 and item.ItemType != 2)

        #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
        #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
        if (item.ItemType != 1 and item.ItemType != 2):
            sum += item.ListPrice * item.Quantity
            maxMulAmount += item.ListPrice * item.Quantity * (1 - item.MinMultiplier)
            minMulAmount += item.ListPrice * item.Quantity * (1 - item.MaxMultiplier)

    if (maxMulAmount - minMulAmount) != 0:
        for item in items:
            #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
            #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
            #and (item.ItemType != 1 anditem.ItemType != 2)

            #If Application parameter 'Show optional items' is set to FALSE condition is:
            #if (item.ItemType != 1 and item.ItemType != 2)

            #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
            #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
            if (item.ItemType != 1 and item.ItemType != 2):
                item.Multiplier = item.MaxMultiplier - (item.MaxMultiplier - item.MinMultiplier) * \
                ((Quote.Total.TotalProductMultiplierAmount - minMulAmount) / (maxMulAmount - minMulAmount))
    else:
        newMultiplier = 1
        if sum != 0:
            newMultiplier = (sum - Quote.Total.TotalProductMultiplierAmount) / sum
        for item in items:
            #If Application parameter 'Show optional items' is set to 'Only main items' condition is:
            #if ((item.IsOptional is False) or (item.IsLineItem and item.AsLineItem.MainItem.IsOptional is False))
            #and (item.ItemType != 1 anditem.ItemType != 2)

            #If Application parameter 'Show optional items' is set to FALSE condition is:
            #if (item.ItemType != 1 and item.ItemType != 2)

            #If Application parameter 'Show optional items' is not set to either 'Only main items' or FALSE condition is:
            #if (item.IsOptional is False) and item.ItemType != 1 and item.ItemType != 2
            if (item.ItemType != 1 and item.ItemType != 2):
                item.Multiplier = newMultiplier

On this page
Quote Total standard calculations
Total Vat Amount to Vat Percent
Total Tax Amount to Tax Percent
Total Net Price to Discount
Total Net Price to Discount Relative
Total Net Price to Discount Relative
Total Net Price to Multiplier Relative
Total Product Average Discount Percent to Items
View all
Yes
No