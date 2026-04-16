# CTX Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/6beaac0fa3f04278b9aafba31d7415be.html?locale=en-US&state=PRODUCTION&version=2603
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


	
CTX Date Format Strings
	
CTX Objects and Lifetime
	
Enhanced Language Tags
	
SOD Details
	
SAP Billing and Revenue Innovation Management CTX Tags
	
Product Tags
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Formula Validator
CTX Tags

CTX tags are used for retrieving certain values from various parts of SAP CPQ.

CTX tag should be formed in a standard way:

<*CTX(parameter)*>

The parameter is a specification of what value should be returned. It is a dot separated list of objects, sub objects and property names. Each object may have sub objects and properties. Properties are terminals – this means that CTX tag parameter may end with it.

Note

CTX tags can't be processed successfully if parentheses are used in the names of elements referenced in CTX formulas (such as attributes, attribute values, or products).

Note

Clients are able to use the CTX tag, Quote.TemplateName, to retrieve the name of the template being used to generate the document for their document templates.

As CTX will retrieve the value from the session and we aim to eliminate this process, SAP CPQ is now providing clients with the option to utilize a new tag <<Q_TEMPLATENAME>>, which is accessible for use on both quote engines.

In short this is the CTX parameter object structure:

Quote

Total

CurrentItem

KeyAttribute

ProductType

Revision

Owner

UserType

Company

Territory

ManagingParent

OrderingParent

ApprovalParent

SelectedMarket

SelectedShipping

SOD

Account

Opportunity

Visitor

UserType

Company

Territory

ManagingParent

OrderingParent

ApproveParent

Date

Container

MyContainer

Product

PartNumber

SystemId

QuoteId

QuoteItemId

Pricebook

Name

DistributionChannel

Code

ConfigurationContext

InvolvedParty

Customer

ExtensionField

CurrencyCode

EffectiveDate

MarketCode

PricebookCode

SalesArea

Each of these objects has corresponding properties. Quote sub objects have cart cells as sub objects, for example Quote.Total.CartComment. Cart cell objects that are decimals, like prices, have fixed four sub tags:

DefaultDisplay – returns decimal in default currency formatted as displayed on cart

DefaultDecimal – returns decimal in default currency in numeric en-US format without 1000 separators and with two decimals

MarketDecimal – returns decimal in cart currency formatted as displayed on cart

MarketDisplay – returns decimal in cart currency in numeric en-US format without 1000 separators and with two decimals

For example, display is on three decimals, cart is in Euro currency, default is US Dollar:

<*CTX(Quote.Total.TotalAmount.DefaultDisplay)*> 2,345.678

<*CTX(Quote.Total.TotalAmount.DefaultDecimal)*> 2345.68

<*CTX(Quote.Total.TotalAmount.MarketDisplay)*> 1,503.639

<*CTX(Quote.Total.TotalAmount.MarketDecimal)*> 1503.64

Several tags, like:

Quote.ProductType()

Quote.CustomField()

Have a parameter in the brackets. With this parameter you may specify which instance of the object should be returned.

Quote CTX Tags

Quote.ProductType(Software).ListSubTotal.MarketDecimal will return total list price of the “Software” product type.

Quote.CustomField(Terms) will return the value of the “Terms” quote custom field (sc param).

Note

The <*CTX( Quote.CurrentItem )*> tag is supported only within a quote context. Avoid using the <*CTX( Quote.CurrentItem )*> tag in the Configurator, as it leads to undefined behavior, regardless of the quote engine.

Quote.CurrentItem.CartItemGuid will return unique identifier for an item in the cart.

Quote.CurrentItem.IsProductSimple will return the information for online item (recommendation is to use this tag only for Root/Main item) if the item is simple or configurable product for Quote 1.

Quote.CurrentItem.ProductInfo.IsProductSimple will return the information for online item ( recommendation is to use this tag only for Root/Main item) if the item is simple or configurable product for Quote 2.

Quote.DocumentFormat will return the file format (PDF, DOCX) of generated document.

Involved Parties CTX Tags

To get data from involved parties, you can build CTX tags using CurrentInvolvedParty and PartnerFunctionKey. However, the tags with CurrentInvolvedParty are used only for document generation while PartnerFunctionKey are used for formulas only.

For example, Quote.Involved Parties.PartnerFunctionKey(SP).Address1 returns all primary addresses of all Sold-to parties on the quote.

Date CTX Tag

The Date tag returns current date/time.

Date/Time fields have optional Format child tag. It expects format string in argument that affects the way value is shown.

For example, for January 19th 2009:

Date.Format(yyyy.MM.dd) appears as "2009.01.19"

Quote.DateCreated.Format(MM-dd-yy) apeears as "01-19-09"

The CTX Date tag works only with the US date format, which is why .InUSDateFormat must be specified.

Container CTX Tag

The Container tag should be used in a product to access its container attributes.

Use <*CTX(Container(Users).Rows.GetCount)*> in a product that has “Users” attribute container to get number of rows in that container, or

Use <*CTX(Container(Users).Property(X).Set(<*Value(memory)*>)*> in a product that has “Users” attribute container to set its property “X” to a value of “Memory” attribute of that same product.

MyContainer CTX Tag

The MyContainer tag should be used in an attribute container to access its own members, or in the product that will be used as a container row to access parent container.

Your other option is to use it to define basic product info in the product by accessing the container in which the product is located.

The parent container can be accessed from the child product, but only the basic info. By basic info we mean the following: description, part number, etc. The product attribute or container of a child product cannot evaluate the MyContainer tag in order to pull values from the parent container info.

Use <*CTX(MyContainer.CurrentRow.Column(A).Get)*> in a column B calculation formula to set B column to the same value as A column, or

Use <*CTX(MyContainer.Property(X).Get)*> in a column B calculation formula to set B column to the same value as property X

Note

Use the MyContainer tag only when you have a product in the container, otherwise you might end up with unexpected behavior.

Product CTX Tags
You can define the pricing attribute under General Attribute Mappings using the following formula. This formula checks whether Product.QuoteItemId exists, meaning whether the item has already been added to the quote or not:


[IF](<*CTX ( Product.QuoteItemId )*> > 0){<*CTX ( Quote.CurrentItem.EffectiveDate.Format(yyyy-MM-dd) )*>}{<*CTX ( Quote.EffectiveDate.Format(yyyy-MM-dd) )*>}[ENDIF]
                                      

ConfigurationContext CTX Tags

The child tags of ConfigurationContext CTX tag provide more comprehensive configuration context information, including market code, pricebook code, effective date, currency, sales area data, and so on.

Note

Business partners and Sales Area concepts are only available in Quote 2.0. Therefore, on the Quote 2.0 engine, the ConfigurationContext.InvolvedParties CTX tag is used instead of ConfigurationContext.Customers CTX tag. As for the Sales Area, you can choose whether to activate the feature or not.

When the Sales Area is deactivated in Quote 2.0, the following child tags are available:


<*CTX( ConfigurationContext.InvolvedParty({Partner Function}).ExternalId )*>
<*CTX( ConfigurationContext.ExtensionField({Custom Field Name}) )*>
<*CTX( ConfigurationContext.CurrencyCode )*>
<*CTX( ConfigurationContext.EffectiveDate.Format(yyyy-MM-dd) )*>
<*CTX( ConfigurationContext.MarketCode )*>
<*CTX( ConfigurationContext.PricebookCode )*>


When the Sales Area is enabled in Quote 2.0, you can use the following child tags instead:


<*CTX( ConfigurationContext.InvolvedParty({Partner Function}).ExternalId )*>
<*CTX( ConfigurationContext.ExtensionField({Custom Field Name}) )*>
<*CTX( ConfigurationContext.CurrencyCode )*>
<*CTX( ConfigurationContext.EffectiveDate.Format(yyyy-MM-dd) )*>
<*CTX( ConfigurationContext.SalesArea.DistributionChannelCode )*>
<*CTX( ConfigurationContext.SalesArea.DivisionCode )*>
<*CTX( ConfigurationContext.SalesArea.OrganizationCode )*>


SOD CTX Tags
SOD objects exists only if the SAP CPQ tenant is set to use them. They are exclusive – a tenant can integrate with only one of them at once. If integration is not set usage of these tags will make syntax error in the formula – using these tags is invalid if integration is not set.
Example 1

A free form attribute in configuration to have a value of some SOD Opportunity field. Make a rule with the following action: <*ASSIGNFF(SomeAttribute:<*CTX(SOD.Opportunity.Description)*>)*>.

Example 2

The action depends on an SOD Account field In the workflow condition. For the action put the following formula: <*CTX(SOD.Account.Description)*>.

On this page
Quote CTX Tags
Involved Parties CTX Tags
Date CTX Tag
Container CTX Tag
MyContainer CTX Tag
Product CTX Tags
ConfigurationContext CTX Tags
SOD CTX Tags
Yes
No