# Quote Troubleshooting | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/65a903d1e8074cce9d61f726a9e55930.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ TroubleshootingVersion: 2603English
Provide feedback on our search

	
SAP CPQ Troubleshooting
	
Integrations Troubleshooting
	
Configurator Troubleshooting
	
Document Generation Troubleshooting
	
Catalog Troubleshooting
	
Quote Troubleshooting
	
User Interface Troubleshooting
	
Setup Troubleshooting
	
Login Troubleshooting
	
Scripting Troubleshooting
	
Performance Troubleshooting
Quote Troubleshooting

This section provides more information about common issues that may occur on quotes, and ways to fix them.

1. Changing the custom field is expected to trigger the Save action, but that doesn’t happen.

Make sure the application parameter found in Application Parameters  Shopping Carts and Quotes  Automatically save quote on custom field change is enabled. This parameter is used to trigger the Save action when a custom field is changed. However, in Responsive Design, it is also necessary to make sure the Save quote on change checkbox is checked in Setup  Custom Fields  Edit.

3. How to make a visible custom field not editable?

In order to be editable, a custom field needs to be made editable in the Setup and the visibility conditions need to be set to true. However, to make a custom field visible and not editable, an additional step is needed. Namely, after the visibility is set to true, we need to add an additional line in scripting to set the editable status to false as well:



if Quote.GetCustomField("TEST").Content is None or Quote.GetCustomField("TEST").Content == '': 
    Quote.GetCustomField("TEST 2").Visible = False 
else: 
    Quote.GetCustomField("TEST 2").Visible = True
    Quote.GetCustomField("TEST 2").Editable = False

4. A part number can’t be found in a quote, but it can be found in another quote with the same status and quote owner. What is causing the problem?

The problem is caused by the different markets and pricebooks that correspond to these two quotes. The part number has no price defined in any pricebook for the market corresponding to the first quote. The product can’t be seen in the first quote because two fields are checked for pricebooks in Setup  Pricing Calculations  Pricebooks: Hide simple products without prices when using pricebook lookups and Prevent users from quoting part numbers that haven't got a price in pricebooks.

5. A quote custom field value is calculated with the Eval tag and the result is an empty value.

If a quote custom field value is calculated via the Eval tag, it should display a number. Having an empty value as a result means that the Eval function wasn’t performed successfully. If that quote custom field formula depends on other custom field values, the formulas of those fields should be checked, too. Those formulas may contain trailing spaces that cause the evaluated value to become a string instead of a number, and as a result, the Eval tag doesn’t return any value.

6. Quote item description doesn't have the expected value. What should be done to correct this?

If the quote item is the main item (product), the product definition page should be reviewed. Namely, Product Description under the Product Data section, Long Product Description under the Additional Product Data section and Dynamic Description under the Advanced Formulas section are the standard fields that are used to populate the product description field and may contain dynamic formulas that should be reviewed and modified.

Quote item description could be set via scripting. Therefore, product scripts, global scripts, product attribute triggers, custom quote calculations and custom actions should be checked.

Quote layout could be customized and the product description may be another quote item custom field that is used to present item description, so the used template should be checked.

7. Values not evaluated when MarketDisplay is used in calculations. How can this be fixed?

Values may not be evaluated when MarketDisplay is used for calculations. Instead, MarketDecimal should be used. Here is an example of a tag that doesn’t work:



$<<C_TAG(<* Round (<* Eval(<*CTX( Quote.CurrentItem.ExtendedAmount.MarketDisplay )*>/<*CTX( Quote.CurrentItem.Quantity.MarketDisplay)*> )*>,2)*>)>> 


When the given tag is used, values may not be evaluated because MarketDisplay is used for calculations instead of MarketDecimal. MarketDisplay and DefaultDisplay should never be used for calculations because they’re converting field values into the current user's format. On the other hand, MarketDecimal returns the non-formatted value, so the result of calculation can be displayed in the current user's format. With that in mind, the formula above should be replaced with the following:



Unit NRC:
$<<C_TAG(<*CTX( Number(<* Round (<* Eval(<*CTX( Quote.CurrentItem.ExtendedAmount.MarketDecimal )*>/<*CTX( Quote.CurrentItem.Quantity.MarketDecimal )*> )*>,2)*>).Format)*>)>> 

8. Why does the total amount appear to be an incorrect number?

If the total sum appears incorrect, total amount values can be found after multipliers and additional discount.

9. Why is the updated value of a Quote Item Custom Field not saved (in Quote 1.0)?

When a user tries to update a quote item custom field, if that field doesn’t belong to the default editable group, the new value won't be saved and it will be reset to the old value. The field can be moved to the editable group in Setup  Pricing and Calculations  Cart Fields Administration (for the appropriate user type and quote status).

10. The Upgrade to new version action is executed, but nothing happens.

This may happen if the new product version has attributes that are marked as Required (so the configuration is initially incomplete as a result of that) and the Allow adding incomplete items checkbox is unchecked for the user type. In that case, the application attempts to upgrade the item to the new version, but, as it’s incomplete, it isn’t added to quote and so the action isn’t performed successfully.

11. Why is a quote still in the Waiting for Approval status even after it was approved?

When two approval rules are triggered for one quote, even if the quote is approved in regard to one of these rules, it still is in the status Awaiting for Approval if there’s AND logic between the two rules. Furthermore, when the quote is rejected according to either one of these approval rules, the status changes to Rejected.

12. Extended Amount isn’t properly calculated. What may be the cause?

If Quote.Item.ExtendedAmount has been set up through scripting, Quote.Item.ExtendedAmountInMarket may not be calculated as Quote.Item.ExtendedAmount * Market.MarketFactor * Market.CurrencyRate, as expected. This depends on the value selected in the Fix Quote Amount After Currency Conversion parameter (Setup  Pricing/Calculations  Rounding Setup).

This parameter checks if there’s a difference between the total net price and the summed (and rounded) extended amount. For example, if the total net price is 100 and the price of each item is 33.33 (99.99 in total for three items), there will be a difference of 0.01 between the total net price and the extended amount. If there’s a difference, that amount is added to either the item with the highest extended amount or to the total net price, depending on the selected parameter value:

If Fix Items is selected, the item with the highest Quote.Item.ExtendedAmount is recalculated by adding the delta, which is calculated as Quote.Total.TotalNetPriceInMarket - sum of the extended amount for all items.

If this option is selected and you haven’t refreshed the total net price of the quote after changing the extended amount, the Quote.Item.ExtendedAmount will be different from Quote.Item.ExtendedAmountInMarket.

If Fix Totals is selected, Quote.Item.ExtendedAmountInMarket is calculated using this formula: Quote.Item.ExtendedAmount * Market.MarketFactor * Market.CurrencyRate.

13. The error message No action available displays when trying to change a custom field or the quantity field on the quote. Why?

Make sure that the Reprice action is enabled for that user type and that quote status in the Workflow.

14. When importing quote tables via Microsoft Excel, why the value of the column of type Money is sometimes different from what I defined in the uploaded document?

The solution to this issue is to set the decimal places for the column to three or more in Setup.

If the column is set to two decimal places and the default market is set to any market other than USD, the system recalculates the value, rounds it to 2 decimals and stores it like that in the database (all money values in SAP CPQ are stored in USD dollars in the database). Afterwards, if you change the default market, the value in the database is recalculated again from USD dollars to the newly selected default market. After multiple recalculations and the value being rounded to two decimals, the value in the quote table is sometimes different from the value in the Microsoft Excel uploaded document.

15. Quote values are not correct in Quote 2.0 after updating calculations. What may be the cause?

Quote 2.0 calculations work with deltas, unlike Quote 1.0 calculations. If administrators are updating calculations while users are working on a quote, the values may be incorrect. To prevent such issues, users should create a new quote and work on it.

16. I have selected a date in the calendar in a quote table, but the system changes the selection to the previous date (for example, March 2 gets reset to March 1). What is causing this behavior?

The date in the calendar in quote tables changes to the previous date if the default time zone is the time zone with a negative offset (a time zone that is behind UTC) and the application parameter Disable timezone conversion for date field is set to FALSE. If you change the parameter value to TRUE, the date selected in the quote table will no longer be changed. Both the parameter and the default time zone are managed in Setup  General  Application Parameters  General Parameters.

Yes
No