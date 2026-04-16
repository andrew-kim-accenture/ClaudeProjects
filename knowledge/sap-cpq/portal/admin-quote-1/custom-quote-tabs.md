# Custom Quote Tabs | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/52789eeddb0b42e1b2ef01e8967685ba.html#procedure
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
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
Custom Quote Tabs

SAP CPQ provides several default quote tabs that you can use to enter billing and shipping information, upload files, manage teams, and more.

Context

In addition to these standard tabs, administrators can create custom quote tabs to display additional information or custom UI content within a quote. Custom tabs can use existing CPQ implementation pages or display custom-built content using an IFrame.

Procedure
To create a quote tab, go to Setup  Quotes  Custom Quote Tabs.
Click Add New.

A new page is displayed.

Enter a name of the tab in Tab name.

Tab system ID is automatically created based on the tab name you entered.

In the Type dropdown list select one of these options:

Implementation File: when selected, it renders an existing SAP CPQ page in the quote tab. On selection, the available implementation pages display in the Implementation file dropdown list. If you wish to add only custom fields to the custom quote tab, leave the Implementation File field empty. The blank custom quote tab will still be visible and it can be added to quote. You can add custom fields at any time.

You can't use the same implementation file to create multiple quote custom tabs.
Note

If you've created multiple quote custom tabs with the same implementation file before the 2208 release, the settings will stay unchanged after the release. However, you won’t be able to edit the tabs with the same implementation file unless you first select different files.

/quotation/OrderConfirmation.aspx: Displays the Order Confirmation page that normally appears when a quote is converted to an order. This is useful when you want users to preview confirmation details within the quote.

/quotation/Opportunity.aspx: Shows opportunity-related fields, such as probability, close date, and stage (CRM-style information). Use this page when the quote is tied to opportunity management.

/quotation/CustomPage.aspx: Displays a blank custom page designed specifically for adding custom fields in a structured layout.

This is the preferred choice when you want:

A completely custom layout

A tab containing only custom fields

A lightweight page without cart or product logic.

Note

This page displays only custom fields and custom content. It doesn't show quote items, pricing, or cart information.

/quotation/Cart.aspx: This is the main cart page of the quote and includes:

Line items

Pricing

Actions such as updating quantities, discounts, and configuration links

Select this file when the custom tab needs to show product-level information similar to the main quote screen.

/quotation/Attachments.aspx: Displays the Attachments tab for file uploads and document linking.

Use this option if you need an additional or custom-labeled attachment location.

/quotation/Teams.aspx: Displays the team assignment, team roles, and user responsibility fields.

/quotation/InvolvedParties.aspx: Displays the involved parties, such as partners, contributors, customers, and roles.

/Cart/DealView.aspx: Displays the Deal View page, which is commonly used in large deal or approval workflows.

Note

To enable /quotation/CustomPage.aspx: Set the HIDEOBSOLETEFEATURES to false.

For Quote 2.0, only admins can change above parameters.

IFrame: when selected, you can develop custom logic on your own, or connect your tab to a custom page you have developed.

Enter the rank in the Rank field.
Click Save.

The page where all the custom tabs are listed is displayed.

When a quote tab is created, it will be visible on the quote. You can manage the visibility of the quote tabs on the Quote Tab Permissions page.

On this page
Context
Procedure
Yes
No