# Multi-User Quote Collaboration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/e4e8e50e835f412296469e360d6f318d.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey
	
Load Existing Quotes
	
Quote


	
Quote and Item Actions
	
Pricing Details on Items
	
Sales Units of Measure
	
Discounts and Multipliers
	
Other Discounts
	
Quote Markets
	
Adding Products to Quote
	
Documents
	
Customer Information
	
MRC Quote Calculations
	
Quote Tabs and Fields
	
Alternative and Variant Configurations
	
Application Parameter for Preventing Users to Add Simple Products to a Quote
	
Adding Products from Quote (Quick Add)
	
Parallel Work on Quote 1.0 (User Side)
	
Multi-User Quote Collaboration
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
Multi-User Quote Collaboration

SAP CPQ allows multiple users to work on the same quote simultaneously. This ensures transparency, reduces configuration conflicts, and improves team efficiency. Collaboration indicators help you see who else is active on the quote and whether parallel changes might affect your work.

Note

To enable multi-user collaboration features, submit a request to SAP Support. Activation steps may vary depending on system configuration and template customization. If your implementation uses the Responsive Design custom templates for Sections/Tabs and Sections/ItemsTable, ensure that you update them so that collaboration indicators and change-impact warnings appear correctly.

To display users who are editing the quote at the quote header level, add this code to your customized Sections/Tabs template:
Sample Code


@if (CartController.EnableConcurrentUsageOfQuote)
  {
      <!-- ko if: tabsData.usersOnQuoteProxy -->
     <users-in-group params="usersInGroup: tabsData.usersOnQuoteProxy"></users-in-group>
      <!-- /ko -->
  }



To display users who are editing individual items, update your customized Sections/ItemsTable template, specifically the <div class="users-editing-items"> section, with the code above.

Multi-User Scenarios

Multi-user collaboration consists of several behaviors that support real‑time transparency and conflict prevention. The core scenarios currently include:

Collaboration Indicators (User Bubbles)

Change Impact Notifications

Collaboration Indicators (User Bubbles)

SAP CPQ displays real-time collaboration notifications whenever multiple users view or work on the same quote. These indicators help you understand who is active and what part of the quote they are interacting with.

What Each User Bubble Displays

Each user bubble displays:

First and last name

Email address

Timestamp of last activity

Where Collaboration Indicators Appear

Collaboration activity is shown at two levels:

1. Quote Header Level (Overall Activity)

Shows all users who currently have the quote open.

2. Product Section Level (Item-Level Activity)

Shows which users are currently configuring a product.

This provides visibility into who is working on each item inside the quote.

Change Impact Notifications

SAP CPQ can warn you when changes made by other users might affect the quote you're currently editing. Change impact notifications increase your awareness when others make updates to the same quote.

These notifications:

Alert you about changes made by other users, helping increase awareness of potential impacts.

Provide warnings when another user’s update may affect the fields they are working on.

Help prevent unintentional data loss or configuration inconsistencies.

Support smoother teamwork during parallel quote editing.

On this page
Multi-User Scenarios
Collaboration Indicators (User Bubbles)
Change Impact Notifications
Yes
No