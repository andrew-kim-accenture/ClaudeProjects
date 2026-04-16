# CTX Syntax Builder | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/adea1bd0df4e48dbbed811a22b67e672.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Formula Validator


	
CTX Syntax Builder
	
Table and List Tags
CTX Syntax Builder

CTX syntax builder is a page on which you can generate your CTX expressions. It’s accessed from the Formula Builder when CTX is selected from the list of available variables.

It only allows you to select tags and objects that make a valid formula. CTX objects are selected from dropdown lists, until you select all required elements. As you select objects, the CTX formula is dynamically rebuilt to display your CTX formula.

As you select CTX objects from the dropdown lists, there’s a possibility that you encounter objects, which require an argument to be entered. You can easily spot these types of objects as another dropdown list (or free input text field) displays to the right of the one you've selected.

Some objects don't have predefined argument values available. For these objects, a free input textbox is shown instead of a dropdown list. You need to enter the argument in that textbox. You can switch the argument type between textbox and dropdown list at any given time, by clicking the button next to the dropdown list/textbox. If there are no predefined arguments, when you switch to a dropdown list from a textbox, it can contain no values to select from. When you’re typing an argument into the textbox, you need to click the Refresh button in order to see the resulting formula with the new argument. This scenario doesn't occur with the dropdown arguments – the formula refreshes as soon as you select it.

When you've finished building your formula, click Insert to have it transferred to the syntax checker (that invoked CTX syntax builder). Make sure that you've made selections in every offered dropdown list. If you leave any dropdown in –select– state, your formula is incomplete. If you try to insert such a formula, an error message displays, and CTX syntax builder window can't be closed, leaving you the opportunity to fix your selection. This way, there’s small possibility that you manage to build a CTX formula that isn’t valid.

Yes
No