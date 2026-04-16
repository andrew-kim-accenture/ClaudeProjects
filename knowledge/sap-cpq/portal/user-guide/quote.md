# Quote | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/41ff21f6ae374144936fc7187bbb904b.html?locale=en-US&state=PRODUCTION&version=2603
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
Quote

Quotes in SAP CPQ display information regarding products - prices, discounts, commission values and so on. Once a quote is created, it can be updated according to the negotiation flow between the salesman and the client.

Note

Keep in mind that some of these options can be unavailable depending on the way the administrator has set up the system.

A quote is composed of three sections: tabs, quote actions, and the main quote area.

Tabs are displayed at the top of the page and they allow you to add additional information for the quote, such as the customer information and custom information specific for given system. There are default tabs, but you can add a custom tab as well. For more information on tabs, see Quote Tabs and Fields.

Quote actions can be found above the main quote area. For more information on actions, see Quote and Item Actions.

The main quote area contains the products added to the quote. All panels in the main quote area can be expanded and collapsed. Each product is displayed with:

Item number

Quantity

Part number

Description

Discounts

Pricing

Product type

They can also include additional items underneath the main item called line items. Line items include the same information as the product itself. There are also item actions above the list of products added to the quote, such as Reorder and Replace, which display once the Manage Items button is clicked.

Comments can be added to the entire quote or to individual products added to it. There’s a field next to the product description for product comments, and a field in the center of the main quote area for quote comments. Comments written here can be passed along, when the order is placed or when a quote is generated.

Main quote area also contains the summary pricing and discount information. Under the quote comment box, there’s the summary pricing for each product type. This section can be shown or displayed by clicking the appropriate button. The total pricing for each column of pricing values is displayed below it.

Adding a Product to an Empty Quote

You have the option to create empty quotes and add products directly from inside those quotes. If you want to enable creating empty quotes, contact SAP CPQ support.

When you enter an empty quote, SAP CPQ displays the following two widgets:

Quote Items (expanded)

Favorites (not expanded)

As soon as you start typing letters in the Add Products box, SAP CPQ starts performing the search in the background. A list of products that satisfies the typed search text is displayed, and you can choose the desired product and add it to the quote by clicking on its name. After the product has been added to the quote, SAP CPQ will display Product added to the Quote.

If you enter something in a field that belongs to some editable group and then click on a field that belongs to another editable group, SAP CPQ executes appropriate quote calculations.

Whenever quote total is calculated (executing appropriate quote calculations), information that quote total is being calculated is displayed.

Item Search

The item search functionality in SAP CPQ allows users to efficiently locate products within a quote by using the magnifying glass icon in the items column. Users can search for products by entering a name,description, part number or product type. Upon selecting a product from the search results, users are redirected to the items page with the chosen product highlighted. Additionally, search results now display the path to the root item, giving users a clear view of the product hierarchy.In case if the path contains large number of characters it is truncated for clarity, but users can view the full path by hovering over it.



Quote and Item Actions

Quote actions are displayed above and inside the main quote area. These actions allow performing operations such as Place Order, Reprice, Save Quote, Submit for Approval, Generate Documents, and so on.
Pricing Details on Items

The Pricing Details feature allows you to view or edit pricing details for quote items on products synchronized from SAP Variant Configuration and Pricing.
Sales Units of Measure

Discounts and Multipliers

Products and line items in a quote can be discounted using multipliers or discounts. The type of available discount that can be used depends on how the company has set up its system.
Other Discounts

While creating a quote, you can enter other discounts in addition or instead of a default discount or multiplier.
Quote Markets

Markets allow pricing a quote in various currencies. Since currency can vary from one area to another, Market is used to allow more versatility in the currency factor. Different markets can be chosen for each quote.
Adding Products to Quote

To create a quote, you can find a product by navigating categories or through the quick search, then configure it (if necessary) and add it to a quote.
Documents

The Documents tab allows uploading of files to the quote. This feature is useful for inclusion of any supporting documents to the quote.
Customer Information

Customer information can be entered in the Customer Info tab. Depending on how your company has it set up, there are three roles in which customer information can be entered: Bill To, Ship To, and End Customer. Information is entered in the same manner for all three roles.
MRC Quote Calculations

The purpose of this feature is to develop quote calculations that will make certain fields editable in the quote.
Quote Tabs and Fields

In addition to the discounting and totaling features of the quote, additional information can be included in the quote tabs located at the top of the screen.
Alternative and Variant Configurations

This feature gives you the option of creating alternative and variant items to the base quote items.
Application Parameter for Preventing Users to Add Simple Products to a Quote

When the application parameter Prevent users from quoting part numbers that haven't got a price in pricebooks is turned on, users can only add simple products with part numbers that have a price in the price book to the quote.
Adding Products from Quote (Quick Add)

This functionality allows you to add new products (simple or configurable), or replace the existing ones directly from the quote.
Parallel Work on Quote 1.0 (User Side)

Multi-User Quote Collaboration

SAP CPQ allows multiple users to work on the same quote simultaneously. This ensures transparency, reduces configuration conflicts, and improves team efficiency. Collaboration indicators help you see who else is active on the quote and whether parallel changes might affect your work.
Yes
No