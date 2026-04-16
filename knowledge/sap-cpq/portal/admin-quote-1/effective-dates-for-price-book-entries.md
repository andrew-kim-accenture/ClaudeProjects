# Effective Dates for Price Book Entries | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/ce79ddb35ec045e38e2be2259a9089a9.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations


	Setup Help

	
Pricebooks


	
Effective Dates for Price Book Entries
	
Pricing Dynamic Part Numbers and Attributes
	
Promotions
	
Price Code in Pricing Calculations
	
Markets
	
Market Visibility
	
Currencies
	
Discounts/Multipliers
	
Cart Fields Administration
	
Rounding Setup
	
Discount Priorities
	
Shipping
	
Total Amount Limit
	
State Sales Tax
	
Country/Region Sales Tax
	
Margin Health
	
Promotions
	
Recurring and Non-Recurring Prices
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Effective Dates for Price Book Entries

Application parameter, which can be found in Setup  General  Application Parameters  General Parameters, named ‘Show effective dates for price book entries’, is responsible for ability to record different prices for same combinations of part number + price code in price books but for different validation period. When this parameter is set to TRUE user can define validation period for particular price book entries. In Setup when accessing particular price books, two additional columns will be visible (‘Valid From’ and ‘Valid Until’) - Figure 1, when this parameter is set to FALSE these two columns won’t be visible - Figure 2, and system will behave as before (validation period for price book entries won’t be defined). Same will be if admin tries to add or edit some price book entry - Figure 3 and Figure 4.

Note

The Show effective dates for price book entries parameter limits adding duplicate pricebook values (entries with the same part number and the same price code) as explained in the Duplicate Pricebook Entries section.

Figure 1
Figure 2
Figure 3
Figure 4

On user side same behavior will be defined, when parameter is set to TRUE columns Valid From and Valid Until will be visible - Figure 5, in other case when parameter is set to FALSE they won’t - Figure 6. Same will be if user tries to add or edit some price book entry - Figure 7 and Figure 8.

Figure 5
Figure 6
Figure 7
Figure 8

Exporting price books will behave as before, when application parameter is set to FALSE columns Valid From and Valid Until won’t be exported - Figure 9, and when parameter is set to TRUE they will be shown - Figure 10.

Figure 9
Figure 10

Template for import will be the next - Figure 11. If application parameter is set to TRUE two new columns will be taken into consideration, otherwise they won’t. Columns Valid From and Valid Until must be in date format (‘mm/dd/yy’) or empty, or otherwise it won’t be imported in price book. Error will be shown.

Figure 11

For price book entries that were created before this application parameter was included in system, or columns are left empty during the import, these entries will have unlimited validation period, and columns for Valid From and Valid Until will be empty when application parameter is set to TRUE. This means if column Valid From is empty and column Valid Until has some value (e.g. 12/12/12), price book entry won’t have valid from restriction, and it will be valid until 12th of December 2012. If column Valid From has some value (e.g. 02/02/12) and doesn’t have value for Valid Until, price book entry will be valid from 2nd of February 2012, and won’t have valid until restriction. If both columns are left empty price book entry won’t have any restrictions and it will be valid always.

Note

Two validation periods must not overlap for the same part number (or part number and price code), otherwise correct system behavior can’t be guaranteed.

Yes
No