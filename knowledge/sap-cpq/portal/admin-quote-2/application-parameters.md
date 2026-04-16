# Application Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e30365a9e7154449923ac1c885dbbf63.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Application Parameters
	
Deploy / Send Changes
	
Report Module
	
Countries/Regions, States and Territories
	
Dictionaries
	
Manage Generated Documents
	
File Management
	
Email Settings
	
Time Zones
	
Custom Tabs
	
Recurring Background Jobs Executed on Tenants
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Application Parameters

The Application Parameters section provides settings that affect how some operations in the system function. These settings allow companies to configure system operations to their needs.

To access these parameters, go to Setup  General  Application Parameters. Application Parameters are separated into tabs.

Changes made to application parameters are logged in the User Actions tab of the Audit Trail.

General Parameters

Name

	

Description




Default Country/Region

	

Defines the country used in the system.




Set boundary for two-digit year resolving

	

Enter the parameter value in the form of a two-digit number, so that the system assumes the first two digits of a year entered in the two-digit format to be 19 (if the two-digit year is larger than the parameter value) or 20 (if the two-digit year is smaller than the parameter value). If no values are entered for this parameter, the boundary for resolving two-digit years is 99 by default. For example, if the value set for this parameter is 20, and a two-digit year in the system is 29, the year is resolved as 1929. However, if the two-digit year entered in the system is 10 with the same setting for this parameter, it is resolved as 2010.




Disable timezone conversion for date field

	

Prevents date-only fields from displaying different values to users from different timezones.




Initially show only active products in administration's product list

	

Includes only active products when set to TRUE.




When users enter several words in search box, SAP CPQ will find products based on each entered word (instead of searching based on entire phrase)

	

Regulates how SAP CPQ filters products.




Do not email login details to users created by admin

	

Defines whether a new User created by the SAP CPQ admin receives an email notification with login details.




Default login remember preference

	

Defines which User login details are remembered.




In Reverse Search, Sort Attribute Values By

	

Enables the sorting of attribute values in reverse search by rank (Attribute Value Sort Rank), Id (Product Attribute Value Id), or by the catalog code length/catalog code content (As In V5).




Show Reverse Search

	

Controls whether the Description/Part Number search functionality is displayed. When set to TRUE, the functionality is displayed.




Unique Product Codes

	

Determines whether product codes are unique. When this parameter is set to TRUE, the product part number is treated as serial number, which means that you can't have multiple items on one or more quotes with the same part number (the product part number should be unique). If this parameter is enabled, the part numbers for your products shouldn't be static, but must instead be resolved from formulas.




Unit of Measurement

	

Indicates the unit used to measure weight in the system. The choices are GRAMS, LBS and KGS.




Try Formatting CSV Product Export Files

	

Determines whether SAP CPQ arranges the Product Export File content into columns.




Export All Custom Table Data as Strings by Default

	

Determines whether SAP CPQ exports all custom table data and formats the table content. When set to TRUE, all data is treated as a string. For example, enabling this parameter resolves the problem of leading zeroes being removed from spreadsheet files.




Available actions for Inactive Revisions

	

Determines whether actions are available either for active or inactive revision. When Based on status of ACTIVE revision, actions are available only for active revisions. When Based on status of EACH revision, actions are available for inactive revisions as well.




Users who are able to change Effective date when selecting products are

	

Determines which Users are able to change the start and end dates when selecting products.




Use recurring price and cost

	

Determines whether recurring price and cost fields are displayed. When this application parameter is enabled, recurring prices are shown for all products in the Catalog, in product details and in product compare. This change is not dependent on integrations with other systems.




Use recurring periods

	

If set to TRUE, when custom pricing is the selected pricing mechanism for a product, it is possible to select a Recurring Price Period in the Pricing tab in product administration.




Users can only select project for the quote, not create new project

	

Determines whether Users can only select existing projects or create new ones. When set to TRUE, Users can only select existing projects, but not define new projects. When set to FALSE, Users can create new projects.




Users are able to create product favorites

	

Determines whether Users can create product favorites. If the parameter is set to TRUE, Users are able to create product favorites. Supported in both Quote engines.




Show lead/prompting arrows (catalog, configurator, shopping cart, document generation)

	

Indicates whether breadcrumbs that track the User’s trail pop up in the Catalog, Configurator, Cart and document generation. Users can click each item on the breadcrumbs trail to jump back and forth.




Show effective dates for price book entries

	

When set to TRUE, the columns Valid From and Valid Until are displayed in the pricebook table entries. This parameter is by default set to FALSE which means that administrators can’t enter multiple pricebook entries with the same part number and price code. If set to TRUE, multiple pricebook entries with the same part number and the same price code can be entered, in which case different effective dates for the entries should be defined.

Since duplicate values in a pricebook may cause issues with pricing, before changing this parameter to TRUE, administrators should review their pricebooks and remove duplicate entries.




Calculate price only based on part number and ignore price code

	

When set to FALSE, the prices are calculated based on both the part number and the price code of a pricebook entry. However, if set to TRUE, the system disregards the price code and calculates prices only based on the part number of the entry.




Audit Trail for Pricebooks

	

If set to Audit Disabled, changes performed on pricebooks will not be logged in Audit Trail  Pricebooks. On tenants with exceedingly large pricebooks, performance may be slow when updating pricebooks due to the size of the pricebook or the update. Disabling this parameter can improve the performance in this scenario. The parameter is set to Audit Enabled by default.




URL for PULL web service when retrieving assets

	

Enables admins to enter a URL that enables Users to retrieve assets or XML files required for configuring products.




Show progress information to users when adding items to quote

	

Defines whether Users receive a report on their progress when they add items to Quote.




Show progress information to users when sending data to CRM

	

Defines whether Users receive a report on their progress when they send data to CRM.




Show progress information to users when arriving from CRM

	

Defines whether Users receive a report on their progress when they arrive from CRM.




Display List Of Recent Items To Users

	

Defines whether Users can view a list of their recent items. The list appears on the left-hand side.




Display products in Recent Items

	

Defines whether recently used products are included in the List of Recent Items.




Display categories in Recent Items

	

Defines whether recently used categories are included in the List of Recent Items.




Display generated documents in Recent Items

	

Defines whether recently generated documents are included in the List of Recent Items.




Display quotes in Recent Items

	

Defines whether recently created/used quotes are included in the List of Recent Items.




Display table for simple product rules

	

Defines whether SAP CPQ displays a table for setting attribute dependency rules in simple product administration.




Show Allow Option for Simple product rules

	

Defines whether Users have the option to allow a previously disallowed attribute dependency rule.




Copy Opportunity Id On New Revision

	

Defines whether SAP CPQ copies the Opportunity Id on each new revision of the Quote. When set to FALSE, SAP CPQ creates a new Quote without the Opportunity Id.




Always reset filters on LoadQuote

	

Defines whether existing quote search filters are reset on each new session. When set to FALSE, SAP CPQ does not save quote search filters for the next session.




Unique Company Code

	

Defines whether Users can only add companies with a unique company code. When set to FALSE, added companies do not need to have a unique company code.




Hide Obsolete Features

	

This parameter hides the following features:

Top Menu

Custom Category UI

Product Configuration Templates

Product Details Templates

Products to Product Details Templates Mappings

Styles and Images section in Branding

The application parameter Allow Selection of Products that will be added to Quote

Remain in Catalog after adding product to the quote




Number of autocomplete results for attribute

	

Defines how many suggestions are displayed to users when they enter a value for autocomplete attributes.

The default number is 10. You can enter a number within the range 10-100.




Check permissions for pre/post actions

	

If set to Yes, the system checks user's permissions for pre and post actions and executes them accordingly.

If set to No, all pre and post actions are executed without checking the user's permissions.




Preselect the first attribute value on a product

	

If the parameter is set to TRUE, and a product is modified via the SimpleProductAdministration SOAP API, the first value of each product attribute is preselected in the Configurator.




Use attribute value code instead of value in quote serialization XML

	

If the paramter is set to TRUE, during quote serialization, the content node in the XML file is populated with the attribute value code, instead of the attribute value.




Prompt user to upgrade product aliases to new versions on opening the quote

	

If set to TRUE, and the option Prompt Users For Update to New Product Versions is enabled in the Workflow for a specific action, when the user executes that action and new product versions are available for the items in that quote, they will be prompted to upgrade both regular items and items created from product aliases to new versions. Alternatively, if set to TRUE and the option Automatically Update Items to New Product Version is enabled in the Workflow, both regular items and items created from product aliases will be automatically upgraded to new versions. However, if set to FALSE, in both of these scenarios, only the the items that aren't created for product aliases will be affected by the options set in the Workflow.




Always Load Selected Values From Custom Table

	

When editing an existing configuration with the Autocomplete Attribute, the attribute will always fetch the actual values from the custom table. In some cases, this can cause a system performance issue. You can perform the fallback to the previous behavior by turning Off this application parameter.




Session Expiration Time

	

Defines the duration of a user session before it expires (in minutes). The default value is set to 0, which means that there is no limit on the duration of a user session. If you want to limit the duration of a user session, the minimum duration that you can set is 20 min.

Users

Name

	

Description




Check For 5-digit Zip Code Number For Customers (USA format)

	

Determines whether Users need to enter a 5-digit zip code number in the Bill To Details table on the Customer Info page in order to save the page. When set to NO, SAP CPQ allows Users to enter another digit format and save the page.




When determining permission groups based on market, use Quote selected market if available

	

Defines whether SAP CPQ uses the Quote-selected market. If the Quote-selected market is not available, SAP CPQ uses the default market the User chose on the User Page. When set to FALSE, SAP CPQ pulls the User’s default market.




Use Global User Id as Federation Identifier

	

Lets administrators determine how users are mapped when they log in via federation:

FALSE – Federation ID field is displayed in user administration and the value of that field, or the username, are used to map users.

TRUE - Global User Id field is displayed instead of Federation ID in user administration and that ID is used to map users.

Product Catalog

Name

	

Description




Allow Comparing In Catalog

	

Enables Users to compare products in the Catalog.




Allow Paging In Catalog

	

Defines whether products are divided into page sections with a minimum of 5 products per page and a maximum of 100 per page. When set to FALSE, all products within a category are grouped on one page.




Allow view details for simple products in catalogue

	

Enables administrators to specify the way product details are shown in the Catalog.




Attribute comparation display option

	

Enables administrators to permit Users to compare various attributes and Attribute Values in products.




Catalog Loading Simple Products

	

Optimizes the loading time of simple products. When set to FAST, the loading time is the shortest. If a formula is used in product price or product description, it is not parsed. Provided that no base price is defined, Users see the formula expression and 0 (zero), respectively. The following example illustrates this point.




Catalog Loading Configurable Products

	

Optimizes the loading time of configurable products. When set to any value other than FAST, a product price and the Add to quote checkbox are shown in the Catalog. This way it is possible to add several configurable products at once in the Quote. When set to FAST, the configuration state is unknown and assumed to be incomplete, so no prices are shown. In addition, when Guided Selling Product Search results are shown, if Guided Selling Product configuration applied to a catalogue product makes it complete, price and Add to quote will appear. Price parsing and calculations for the Guided Selling Product results are controlled by the Catalog Loading Attribute Based Search.




Use Default Product Image

	

Determines whether a default image is shown for products. The default image is assigned to products that do not have an image.




Default Product Image Name

	

Specifies the name of the file used as the default product image. This image file must exist in SAP CPQ’s images folder.




Display Products Above Subcategories

	

Takes Users directly to the Products page and skips subcategories.




Show Quantity in Catalog

	

Enables Users to set quantity in the Catalog. When set to TRUE, products have an input field for quantity. When Users select the Add to Quote check box, the quantity is 1 by default. By entering quantity in the Catalog, the Add to Quote box is automatically selected.




Show customize button for simple products

	

Removes blank space in simple products. If there are no configurable products, the Customize button is hidden.




Hide categories within the catalog when tree navigation is available

	

Defines whether the Catalog is visible on the User side. When set to FALSE, the Catalog is visible.




When users press 'Add Item' in quote, it will take them to the top catalog category

	

Defines whether Users are transferred to the root catalog category when they click Add Item in the Quote. When set to FALSE, Users are redirected to the last category that was visited in the Catalog.




Always reset filters in catalog

	

Defines whether SAP CPQ sets filters (description search, part number search) defined during the previous session. When set to FALSE, SAP CPQ sets description search by default.




Remain in Catalog after adding product to the quote

	

Determines whether Users remain in Catalog after adding a product to Quote. When set to FALSE, Users are directed to the Quote.

Note

Please note that this parameter is obsolete and not visible. To restore its visibility, you need to disable the Hide obsolete features setting.




Show product image within the Quote summary in Catalog

	

Defines whether the image of the product added to Quote pops up in Summary.




Show icon within the Quote summary in Catalog to clarify whether product is already in the Quote

	

Defines whether SAP CPQ displays a small orange-colored cart icon in the Summary window when a product is already in the Quote. Note that this parameter is valid only when the Remain in Catalog after adding product to the quote parameter is set to TRUE.




Disable category rank sort for categories having more than

	

allows administrators to disable the rank sort in categories, depending on the number of products they contain. When set to 1000, categories containing more than 1000 products do not display the rank sort.




Default Sorting in Catalog

	

You can choose criteria other than Name for default sorting in the Catalog such as Part Number, Price, Product Type Name and Rank by changing the value of this parameter.

Configurator

Name

	

Description




Configurator Columns

	

Enables administrators to enter the number of columns the Configurator needs to contain.




Do Not Recycle Sequence

	

Determines whether a sequence starts over once the last number is generated. When set to TRUE, an error displays when the product code is generated.




Image Attributes Show Labels

	

Defines whether SAP CPQ displays an image attribute label in the Configurator.




Max Column Count for Image Attributes

	

Enables administrators to enter the maximum number of columns that are taken up by image attributes. The value is 3 by default. If administrators leave the field blank or enter 0 and 1, the default value of 3 columns is applied.




Missing Attribute Image

	

Refers to the attributes set up to be displayed as images. The missing attribute image is displayed if the image for that attribute is unavailable. This image file must exist in SAP CPQ’s images folder.




Responder (right) Area Width

	

Enables administrators to determine the area width of the responder.




Show quantity in responder

	

Determines whether the quantity of each product is shown in the responder.




Show product configuration template

	

Defines whether SAP CPQ displays the product configuration template in the Configurator.




Show Attribute Prices within Configurator

	

Determines whether attribute prices are displayed to Users during configuration. Prices are displayed in brackets next to each attribute value. When set to Simple, each attribute value has a price displayed next to it. When set to Relative, prices of the sibling attribute values are shown relative to the price of the selected value.




Configurator Lock Period

	

Contains the number of minutes during which the item actions Delete, Edit, Copy, Refresh and Upgrade to New Product Version are locked for user B while the user A is already working on the quote. This parameter is relevant only for the parallel work on quotes in the Quote 2.0 engine.




Visual Style (Responder)

	

Determines the default responder styles that Users see. Administrators can override these selections by choosing a new style in the User Groups administrative section.




Show dissallowed attributes in Configurator

	

Defines whether SAP CPQ displays disallowed attributes in the Configurator.




Allow attribute value to be listed as line item even if its extended price is zero (default behavior)

	

Enables Users to list attribute values as line items, even if their extended price is zero.




Show processing icon in configuration, quote and catalog

	

Defines whether a processing icon appears in configuration, Quote and Catalog to indicate that SAP CPQ is executing the selected action.




Execute rules in child products (found in attribute container) when adding parent product to the quote

	

Defines whether SAP CPQ executes rules in child products when Users add parent products to the Quote




Show Next and Previous buttons in product configuration

	

Defines whether SAP CPQSAP CPQ displays Next and Previous buttons in product configuration.




Show Next button in Product when only one tab is displayed

	

Defines whether SAP CPQ displays a Next button in product configuration when only one tab is displayed.




Execute triggers when uploading attribute file attachment with the same name

	

Defines whether SAP CPQ executes a trigger event when uploading a new attribute file attachment with the same name as the previous attachment.




Display child item total price in parent item price breakdown

	

This parameter is by default set to TRUE. When a parent-child configuration is opened and the user clicks on a parent item in the Configuration Tree, the price displayed for the child item in the Configuration Summary will be the total price of the child item including the price of its child items, instead of only the total price of the child item. Additionally, if the parameter is enabled, a new CTX tag <* TotalPriceWithChildItems *> becomes available, used for retrieving the total price of the product together with the total price of each of that product’s child items. This parameter affects both one-time and recurring prices in the Catalog.




Allow attribute propagation when attribute is disallowed

	

If set to Yes, attribute values are propagated from parent to child even if the attribute is disallowed.




Display Product in Configuration Tree using:

	

You can choose whether product names or product part numbers are displayed in the Configuration Tree.

Shopping Cart and Quotes

Name

	

Description




When updating quote item, reapply default discount

	

Defines whether SAP CPQ reapplies the default discount each time a Quote is updated. When set to FALSE, Users can change the multiplier in the Quote and save the change. Note that you need to set the appropriate Visual Style for the multiplier to appear in the Quote.




Allow Reordering Items in a Cart

	

Allows Users to reorder items in the Cart. When ALLOW PRODUCT SORTING is set, Users can reorder main and line items. When ONLY ALLOW MAIN ITEM SORTING is set, Users can only reorder the main items.




Auto reconfigure cart

	

Defines whether the Cart is reconfigured. When set to YES, the Cart is reconfigured when the Ship To info is changed.




Calculate Auto-Reconfigure only items with modified ItemQuantity attribute

	

Defines whether SAP CPQ automatically reconfigures only those items whose item quantity Attribute Value is changed.




Owner of a Copied Quote will be

	

Enables administrators to define the owner of the copied Quote – the Owner of the Original Quote or the User that Made a Copy.




My Quotes Tab Name

	

Contains the tab name that replaces the My Quotes name set by default.




Other Quotes Tab Name

	

Contains the desired tab name that replaces the Other Quotes name set by default.




Quantity Sign

	

Enables administrators to select if the value entered in the Quantity field is ONLY NON-NEGATIVE, ONLY POSITIVE or POSITIVE AND NEGATIVE.




Waiting For Approval Tab Name

	

Enables administrators to enter another name for the Waiting for Approval tab.




When Creating Quotes through API, shipping method is required

	

Defines whether Users creating Quotes through API have to include a shipping method.




When Creating Quotes through API, customer roles are required

	

Defines whether Users creating Quotes through API have to include customer roles.




When Creating Quotes through API, do NOT require customer's StateAbbrev

	

Defines whether Users creating Quotes via API have to include customers’ state abbreviation. When set to NO, Users have to enter the state abbreviation input node.




When Creating Quotes through API, do NOT require customer's First Name

	

Defines whether Users creating Quotes via API have to include customers’ first name. When set to NO, Users have to enter the first name input node.




When Creating Quotes through API, do NOT require customer's Last Name

	

Defines whether Users creating Quotes via API have to include customers’ last name. When set to NO, Users have to enter the last name input node.




When Creating Quotes through API, do NOT require customer's Email

	

Defines whether Users creating Quotes via API have to include customers’ email. When set to NO, Users have to enter the email input node.




Roll-Up Cart Items

	

Enables an additional numbering scheme for items which support roll-up.




Include child items set as 'Optional' in Rolled-Up price and cost calculations

	

Determines whether SAP CPQ includes optional child items in rolled-up price and cost calculations.




Copy Opportunity Info on Copy Quote

	

Defines whether SAP CPQ also copies the Opportunity info when copying the Quote.




Time-out limit for users working on a quote in parallel (in minutes)

	

When a user opens a quote in parallel with another user, after the time period defined in this parameter passes, the system no longer considers that the user is working on the quote and the user’s name won’t be displayed in the parallel work alert on the quote. This parameter is applicable only when there are multiple users working on the same quote in parallel.




Alert users about simultaneous work on the same quote

	

Defines if users opening a quote are notified that there are other users already working on the same quote. Since SAP CPQ doesn't support parallel work of multiple users on the same quote, this parameter enables notifying users there are other users working on the quote before they make any changes. The system checks if there are already users working on the quote only when the session of the second user starts. Therefore, it is possible that the notification displays on the quote even after the first user has stopped working on the quote. In that case, the second users needs to reload the quote and the notification will no longer display. Additionally, in this parameter you can define the format of the notification (link in the quote or a pop-up message after opening a quote).




Generate Notification Attachments as PDF

	

Enables Users to attach only PDF documents to generated notifications. When set to NO, Users can attach other document formats.




Discount rules for parent items in the quote will be applied on

	

Enables administrators to select which fields are affected by the formulas for calculating discounts in parent items in the parent-child configurations.




Enable product search by part number in ‘Add Products’ section of the quote

	

Defines whether Users can search products by part number in the Add Products section of the Quote.




Enable product search by product name in ‘Add Products’ section of the quote

	

Defines whether Users can search products by name in the Add Products section of the Quote.




Enable product search by product name and description in ‘Add Products’ section of the quote

	

Defines whether Users can search products by name and description in the Add Products section of the Quote.




Display floating widget for Customize template page

	

Defines whether SAP CPQ displays a floating widget for the Customize template page.




Display actions for Customize template page on the bottom of the page

	

Defines whether SAP CPQ shows actions for the Customize template page at the bottom of the page.




Reset Quote Expiration Date on New Revision

	

Defines whether SAP CPQ resets the existing value of the Quote expiration date on each new revision.




Save quote custom fields values when changing tabs

	

Defines whether values entered in quote custom fields are saved when the user changes tabs.




Display quote number and customer name in the quote header

	

Defines whether SAP CPQ displays the Quote number and customer name in the Quote header




Populate customer role with company info based on company/customer code

	

Defines whether SAP CPQ fills out the customer role field with company info based on the company/customer code info.




Automatically save quote on custom field change

	

Defines whether the quote is automatically saved every time a custom field is changed.




Automatically save Cart Comment on clicking outside that field

	

If enabled, changes made in the Cart Comment quote field are automatically saved after the user clicks outside that field.




Hide Transparent Background for IE8

	

Defines whether SAP CPQ hides the transparent background for the IE8 browser.




Send automatic notification when quote is reassigned

	

Defines whether SAP CPQ sends an automatic notification each time the Quote is reassigned.




Enable quote custom field calculation ranking

	

Defines whether SAP CPQ conducts a Quote custom field calculation. This is done in the order of a hierarchical sequence of the custom fields determined by the User.




Show both user quotes and other quotes on the 'Other Quotes' Tab

	

Determines whether SAP CPQ displays user Quotes and other Quotes in the Other Quotes tab.




Inherit Only Product Type

	

Determines whether child items inherit their product type from their parent and whether line items inherit their product type from the main item.




Use Additional Logging For Email Notification

	

Enables administrators to track the status of email notifications in the log.




Use Market Time Zone

	

If set to TRUE, the system adds an additional field in the following location: Setup  Pricing/Calculations  Markets  Add New Page.




Set margin health image and color based on Rolled Up Gross Margin

	

If set to No, the margin health image and color are based on Manufactures Gross Margin.




Optimize product type calculations on adding items to quote

	

If set to Yes, product type calculations are optimized for a better performance.




Enable Quote Expiration only after expiration date ends

	

If set to Yes, the Quote Expiration action is enabled only after the expiration date ends. If set to No, the action is available when there is less than a day before the expiration date ends.




Allow adding configurable products to quote from quick search

	

If set to Yes, users can add configurable products to quote directly from the quick search.




Make quote actions available on all tabs

	

If set to TRUE, quote actions are visible on all quote tabs. If set to FALSE, the actions are visible only in the Quotation tab.




On Edit Item execute preactions attached to Add Item

	

By default set to TRUE. Setting it to FALSE prevents actions attached as pre actions to Add Item to execute when the Edit Item action is triggered.

Before the 2202 release, actions attached as pre actions to Add Item would execute every time the Edit Item action was triggered (this was the designed system behavior). By introducing this parameter (set to TRUE by default) to regulate this behavior, we are avoiding breaking changes in existing client models. Before you decide to change the parameter value to FALSE, you should first revise your models and confirm that the change won’t affect your current models.




Enable Adding Items in Bulk

	

In a quote, allows users to search multiple part numbers by entering or copying them from another document. It also adds products to cart, along with the desired quantities




Set the character limit for the cart comment field

	

Restricts the number of characters that users can enter into car comments on the quote. By default, the maximum length of 3000 characters applies.




Enable Single Sign-On link generation for "One Click" approval

	

If set to TRUE, a Single Sign-On link will be generated for One Click approval. Prior to enabling this option, please ensure that Single Sign-On is enabled for all users who intend to receive the approval link




Enable Comparing Quotes and Revisions

	

If set to TRUE, users can compare different revisions of the same quote and also compare two different quotes with the flexibility to choose the fields, quote tables, and the items to be compared.




Navigate user to newly added/edited item

	

If set to TRUE, when a product is added to the Quote or when an existing item on the Quote is edited, users are automatically directed to the Quote page where the product is added.

Security

Name

	

Description




Allowed origins for the CORS filter

	

When one or more domains are entered in this field, only the API calls originating from those domains are allowed. In all existing tenants, the preset value of this field will be *, indicating that all API calls are allowed. If the field is empty its also set to *. In all new tenants, the preset value of this field will be the URL address of that tenant, indicating that only API calls originating from that tenant are allowed. To integrate SAP CPQ with other applications, if the parameter is not set to *, it is necessary to enter both the URL of your tenant, and the URLs of the integrated applications in the field to enable API communication. Multiple values are separated with a ;. If you enter only one URL, you don't need to add ; after it.




URLs that may Embed CPQ

	

defines URLs that may embed SAP CPQ using <frame>, <iframe>, <object>, <embed> and <applet>. If the parameter is empty or * is entered, embedding is allowed for all URLs. To prohibit embedding on all URLs, there should be ‘none’ in the parameter. Also, embedding is disabled if there is an incorrect URL in the parameter. Administrators should set trusted domains through the application parameter to prevent framing from other domains. The value of the parameter must be the exact URL on which SAP CPQ is opened in another application.

If SAP CPQ is integrated with Salesforce via the package, this parameter must be populated with *, this is the only accepted value.




Permitted sources for JavaScript

	

contains URLs to secure sources from which JavaScript files can be used in SAP CPQ. Introduced as part of the Content Security Policy.




Permitted sources for stylesheets or CSS

	

contains URLs to secure sources from which stylesheets and CSS files can be used in SAP CPQ. Introduced as part of the Content Security Policy.




Permitted sources for images

	

contains URLs to secure sources from which images can be used in SAP CPQ. Introduced as part of the Content Security Policy.




Permitted sources for font resources

	

contains URLs to secure sources from which sont resources can be used in SAP CPQ. Introduced as part of the Content Security Policy.




Permitted sources that can be used as an HTML < form > action

	

contains URLs to secure sources that can be used in SAP CPQ as an HTML <form> action. Introduced as part of the Content Security Policy.

On this page
General Parameters
Users
Product Catalog
Configurator
Shopping Cart and Quotes
Security
Yes
No