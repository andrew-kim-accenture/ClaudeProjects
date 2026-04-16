# SAP Billing and Revenue Innovation Management CTX Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/7fdb1fc062a9401ba00a2e8fb88b5e6d.html?locale=en-US&state=PRODUCTION&version=2603
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
SAP Billing and Revenue Innovation Management CTX Tags

The following CTX tags are available in SAP CPQ when it's integrated with SAP Billing and Revenue Innovation Management:

Contract Changes CTX Tags

<*CTX(Quote.CurrentItem.ChangeProcessGroupCode)*>

<*CTX(Quote.CurrentItem.SubscriptionContractNumber)*>

<*CTX(Quote.CurrentItem.SubscriptionContractItemNumber)*>

<*CTX(Quote.CurrentItem.CancellationReasonId)*>

<*CTX(Quote.CurrentItem.CancellationReason)*>

<*CTX(Quote.CurrentItem.CancellationRequestDate)*>

<*CTX( Quote.CurrentItem.ContractExtension.ValueCode )*>

<*CTX( Quote.CurrentItem.ContractExtension.Unit )*>

<*CTX( Quote.CurrentItem.ContractExtension.Unit.Translated )*>

<*CTX( Quote.CurrentItem.ContractExtension.Value )*>

<*CTX( Quote.CurrentItem.ContractExtension.Value.Translated )*>

<*CTX( Quote. CurrentItem.ContractChangeActivationDate )*>

Autorenewals CTX Tags

<*CTX(Quote.CurrentItem.ContractAutoRenewalIndicator)*>

<*CTX( Quote.CurrentItem.ContractExtension.ValueCode )*>

<*CTX( Quote.CurrentItem.ContractExtension.Unit )*>

<*CTX( Quote.CurrentItem.ContractExtension.Unit.Translated )*>

<*CTX( Quote.CurrentItem.ContractExtension.Value )*>

<*CTX( Quote.CurrentItem.ContractExtension.Value.Translated )*>

Totals CTX Tags

<*CTX( Quote.Total.EstimatedContractTotalValue.Display )*>- gets the value of the estimated total contract value field from the quote in the user’s selected format.

<*CTX( Quote.Total.EstimatedContractTotalValue.Value )*>- gets the value of the estimated total contract value field from the quote.

On this page
Contract Changes CTX Tags
Autorenewals CTX Tags
Totals CTX Tags
Yes
No