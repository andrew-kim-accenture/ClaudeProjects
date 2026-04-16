# Other Quote Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/7f95632dd1fb492b947091ce137e0d5d.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags


	
Conditional Statements
	
Tags and Expressions
	
CTX Tags
	
Product Tags
	
Quote Tags


	
Other Quote Tags
	
User and Customer Information
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Formula Validator
Other Quote Tags
Tag	Description	Type Returned	Example


<*CARTAMOUNT*>

	

Gives total amount of the cart.

	

Number

	

See below…




<*USERAMOUNT*>

	

Gives max approval amount for the currently logged in user.

	

Number

	

[GT](<*CARTAMOUNT*>, <*USERAMOUNT*>) – returns whether the total amount of the cart is greater than the approval amount set for the current user.




<*USERID*>

	

Gives the currently logged in user’s ID. Functions the same as <*CU_INFO(ID)*>.

	

Number

	

See below…




<*CARTOWNER*>

	

Gives the user Id for cart’s owner. Functions the same as <*CO_INFO(ID)*>).

	

Number

	

[EQ](<*USERID*>, <*CARTOWNER*>) – returns true if the currently logged in user’s Id and the cart owner’s Id are equal. This can be used behind an action for a cart or visibility rules.




<*SAMETERRITORY*>

	

Gives whether the currently logged in user and the cart owner are in the same territory. Checks against the territory Id. Functions the same as [EQ]( <*CU_INFO(TERRITORY_ID)*>, <*CO_INFO(TERRITORY_ID)*>)

	

True/False

	

<*SAMETERRITORY*> - can be used for visibility rules or behind an action for a cart.




<*TERRITORY*>

	

Gives the cart owner’s territory name. Functions the same as <*CO_INFO( TERRITORY_NAME)*>.

	

String

	

[EQ](<*TERRITORY*>, <*CU_INFO(TERRITORY_NAME)*>) – returns true if currently logged in user belongs to the same territory as the cart owner’s.




<*SAMEGROUP*>

	

Gives whether the currently logged in user and the cart owner are in the same group. Functions the same as [EQ](<*CU_INFO(USER_TYPE_NAME)*>,<*CO_INFO(USER_TYPE_NAME)*>).

	

True/False

	

<*SAMEGROUP*> - can be used for visibility rules or behind an action for a cart.




<*GROUP*>

	

Gives the cart’s owner group name. Functions the same as <*CO_INFO(USER_TYPE_NAME)*>.

	

String

	

[EQ](<*GROUP*>, <*CU_INFO(USER_TYPE_NAME)*>) – returns true if currently logged in user belongs to the same group as the cart owner’s.




<*ISRESPAPPROV*>

	 	

True/False

	 


<*CHILDREN*>

	

Is currently logged in user ordering parent for cart’s owner?

	

True/False

	 


<*CHILD*>

	

Is currently logged in user direct ordering parent for cart’s owner?

	

True/False

	 


<*FIRSTAPPROVEC*>

	

Is currently logged in user approve parent for cart’s owner?

	

True/False

	 


<*ALLAPPROVEC*>

	

Is currently logged in user direct approve parent for cart’s owner?

	

True/False

	

True/False




<*SAMEZIPCODE*>

	

Are the ZIP codes of currently logged in user and cart’s owner the same? (Cart Visibility) and Is the ZIP codes of currently logged in user and customer the same? (Customer Visibility).

	

True/False

	 


<*ZIPCODE*>

	

Returns user ZIP code.

	

Number

	 


<*SAMESHIPZIPCODE*>

	

Is ZIP code of currently logged in user the same as ZIP code of the city where quote is delivered?

	

True/False

	 


<*SHIPZIPCODE*>

	

Returns ZIP code of Ship to address.

	

Number

	 


<*SAMECUSTOMERZIPCODE*>

	

Is ZIP code of currently logged in user the same as customer’s ZIP code?

	

True/False

	 


<*CUSTOMERZIPCODE*>

	

Returns customer ZIP code.

	

Number

	 


<*CUSTOMERCOUNTRY*>

	

Returns customer’s country/region.

	

String

	 


<*CUSTOMERCOMPANY*>

	

Returns customer’s company

	

String

	 


<*APPROVALREQUIRED*>

	

This tag is often used as Condition for showing up Submit for approval button. Condition is true (1) if there is needed to execute Approval process for the loaded quote. For example, if administrator doesn’t want to execute Generate Quote action if is necessary to execute Approval Process before then the condition for Generate Quote action will be [NOT]<*APPROVALREQUIRED*> .

	

True/False

	 


<*ISAPPROVED*>

	

In Quote 1.0, this tag is used for checking if a quote is approved (active revision of quote passed through the approval process and now is approved) or not.

In Quote 2.0, this tag is used for checking if a quote is approved (active revision of quote passed through the approval process and now is approved) or not

	

True/False

	 


<*ISREJECTED*>

	

In Quote 1.0, this tag is used for checking if a quote is rejected (active revision of quote passed through approval process and now is rejected) or not.

In Quote 2.0, this tag is used for checking if a quote is rejected (active revision of quote passed through approval process and now is rejected) or not.

	

True/False

	 


<*ISWAITING*>

	

In Quote 1.0, this tag is used for checking if the active revision of the quote is in approval process but is neither approved nor rejected.

In Quote 2.0, this tag is used for checking if the active revision of the quote is in approval process but is neither approved nor rejected

	

True/False

	 


<*CUSTOMERTERRITORY*>

	

Customer’s territory.

	

String

	 


<*GETATTNUMVAL*>

	

Returns numeric value of attribute.

	

Number

	 


<*SAMEUSERCOMPANY*>

	

If the current user works for the same company as the user who created a cart (quote) this expression will evaluate to 1, otherwise it is 0.

	

True/False

	 


<*USERCOMPANY*>

	

Returns name of user company.

	

String

	 


<*AUX(AUXTABLE, …)*>

	

See below, after description of XWS tags.

	 	 


<*QUOTEPROPERTY(QuoteCustomFieldName)*>

	

Returns the value of the quote custom field from database.

	

String

	

<* QUOTEPROPERTY (Expiration Date) *>




<*CSIGN*>

	

Returns current currency sign as defined in database.

	 	 


<*MFACTOR*>

	

Returns market factor.

	 	 


<*MCODE*>

	

Returns market code - if needed to access additional price books via AUX tags.

	 	 


<*CRATE*>

	

Returns current currency rate (related to default currency as administered).

	 	 


<*USER_CO_CRM_ACCOUNT_ID*>

	

Returns CRM ID for a company that a user belongs to. This tag is used in a field for default discount, in side of a AUX tag to find a default discount for a company that user belongs to.

	

CRM Account Number

	

Example of a formula in discounting rules for default discount: AUX(some table, discount column, crm id column,<*USER_CO_CRM_ACCOUNT_ID*> – used in a discounting rule for a default discount.




<*TotalItemsAmount*>

	

Returns Total Items Amount before shipping or commission costs.

	 	 


<*TotalItemsCost*>

	

Returns Total Items Cost before shipping or commission costs.

	 	 


<*TotalGrossMargin*>

	

Returns Total Gross Margin before shipping or commission costs.

	 	 


<*FREIGHTAMOUNT*>

	

Returns freight amount.

	 	

[if]([GT](<*FREIGHTAMOUNT*>,0)){1}{0}[endif]

Yes
No