# Load Existing Quotes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/0da64076c025417e8f71267b6aab803a.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Recently Visited Objects
	
Custom Load Quote XSLT Transformation - Managing Quote Link
	
Custom Load Quote XSLT Transformation - Managing Revision Column
	
Quote Management
	
Quote
	
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
Load Existing Quotes

Once a quote has been created, you can view and perform actions in it on the Quote List page.

You can access the Quote List page by clicking the Load Existing Project/Quotation button on the Home page. The page contains quotes segmented into three tabs, which can be accessed via a dropdown in the upper-left corner of the page. The tabs are: My Quotes, Waiting for Approval, and Other Quotes.

My Quotes contains all quotes you’ve created or the quotes that were reassigned to the logged user.

If the logged user is also the approval parent for other users, then quotes that have been submitted to the user for approval are displayed in Waiting for Approval.

Quotes displayed in Other Quotes are other users’ quotes that can be seen.

There’s a Quote Number column in all tabs, which contains unique numbers of all listed quotes. If you click on one of those numbers, you’re redirected to the quote. If you don’t have editing permissions, however, after you click on a quote number, a message displays and lets you know that you can’t edit the quote.

When using Responsive Design, you can set the default tab by changing it to the one you wish to make default and clicking the Save Filters button. This tab is displayed each time you log in. The system remembers the tab that has been visited during each logon session. So, if you go to a different tab other than your default one, visit another page, and return to the load quote page, this tab is displayed. Once you log out or close browser window, current session is erased and default tab is displayed.

Note

You can’t edit different quotes in separate browser tabs at the same time. Only one quote can be currently active in the browser, and that is always the last opened quote. The previously opened quote changes into the currently active quote as soon as the page is refreshed, and edits made on that quote can’t be saved.

When in quote, for the columns Part Number and Product Name, entry is displayed as link if there’s an Edit Item action available for this entry. When you click on this link, the Edit Item action is executed (SAP CPQ behaves in the same way as if Edit action has been executed). You’re redirected to product configuration page (applies to all product types: configurable, system, collection, or parent/child system).

Filtering Quotes

The Create Filter and Load Filter option on Quote page enables you to organize and manage quotes by creating custom filters for quick access. You can filter or search quotes by clicking the Create Filter option under the filter icon on the Quote page. This action brings up the filter panel where you can filter quotes by Status, Date Created, or other fields, such as Quote Number, Total Amount, Discount amount, and so on or add custom fields to create personalized filters. When applying filters/search to quotes, it's important to note that these filters/search will affect all tabs, ensuring a consistent and streamlined view across your entire dataset. Additionally, you can save filters and assign them specific names to quickly access frequently used filter configuration.

Follow the date format as defined on the User Page when entering dates for Date Created and Expiration Date. An error is displayed if an incorrect format is entered.

Load Filter
The Load Filter function stores a history of saved filters, allowing you to easily access and apply previously used filters. You can edit, delete, and reapply saved filters within the Load Filter section, providing flexibility and customization options for managing filters.
Note

Load filter option on the Quote page is only available for Quote 2.0 engine.

To create a default filter, click Save Filter. The most recently saved filter will be automatically applied to the list of quotes each time you log in.

Note

By default, Quick Search on the Quote List page displays suggestions for Quote 1.0 only. If you want this functionality for Quote 2.0, contact SAP Support.



Recently Visited Objects

SAP CPQ displays the list of recently visited items in the widget on the left side of the screen. In this widget, users can see products, categories, quotes they have recently visited and documents they have recently created.
Custom Load Quote XSLT Transformation - Managing Quote Link

If you’re using the custom load quote XSLT transformation, you need to replace certain parts of custom transformation in order to enable the functionality for managing the Quote link through administration.
Custom Load Quote XSLT Transformation - Managing Revision Column

If you’re using the custom load quote XSLT transformation, you need to replace certain parts of custom transformation in order to enable the functionality for managing the Revision column through administration.
Quote Management

Quote management from the Quote List page can be performed in three main ways: performing actions, changing the status, and making revisions. Quote management can also be performed from the Revisions screen.
Related Information
Column Headings
On this page
Filtering Quotes
Related Information
Yes
No