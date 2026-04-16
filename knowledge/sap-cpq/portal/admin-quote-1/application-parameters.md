# Application Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/a364eff271a542c6b7a55dba773ce78d.html#security
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
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

Changes made to application parameters are logged in the User Actions tab of the Audit Trail. The following information is logged in the Action column: Application parameter changed.

General Parameters

Name

	

Description




DB Version

	

Defines the current database version.




Default Country/Region

	

Defines the country used in the system.




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




From Email Address

	

Defines the email address used to contact administration, notify the SAP CPQ admin about new user registration and email order confirmation.




Sender Email Name

	

Defines the name that appears in email headers as the sender.




Sender Email Address

	

Defines the email address that appears in email headers as the sender's email.




Reply-to / Return-Path Email Name

	

Defines the name that appears in email headers as the Reply-to name.




Reply-to / Return-Path Email Address

	

Defines the name that appears in email headers as the Reply-to email.




Show Reverse Search

	

Controls whether the Description/Part Number search functionality is displayed. When set to TRUE, the functionality is displayed.




Secure Site for License Purchasing

	

Defines the URL of a web page that is secure for license purchasing.




Unique Product Codes

	

Determines whether product codes are unique. When this parameter is set to TRUE, the product part number is treated as serial number, which means that you can't have multiple items on one or more quotes with the same part number (the product part number should be unique). If this parameter is enabled, the part numbers for your products shouldn't be static, but must instead be resolved from formulas.




Unit of Measurement

	

Indicates the unit used to measure weight in the system. The choices are GRAMS, LBS and KGS.




Try Formatting Report File

	

Compares report Excel file columns and formats their content accordingly (decimals, date/time), depending on their numerical pattern. It does not format string content.




Try Formatting CSV Product Export Files

	

Determines whether SAP CPQ arranges the Product Export File content into columns.




Export All Custom Table Data as Strings by Default

	

Determines whether SAP CPQ exports all custom table data and formats the table content. When set to TRUE, all data is treated as a string. For example, enabling this parameter resolves the problem of leading zeroes being removed from spreadsheet files.




Available actions for Inactive Revisions

	

Determines whether actions are available either for active or inactive revision. When Based on status of ACTIVE revision, actions are available only for active revisions. When Based on status of EACH revision, actions are available for inactive revisions as well.




Enable ResponsAbility Integration

	

Enables Users to integrate with Workflow.




Users who are able to change Effective date when selecting products are

	

Determines which Users are able to change the start and end dates when selecting products.




Use recurring price and cost

	

Determines whether recurring price and cost fields are displayed. When this application parameter is enabled, recurring prices are shown for all products in the Catalog, in product details and in product compare. This change is not dependent on integrations with other systems.




Use recurring periods

	

If set to TRUE, when custom pricing is the selected pricing mechanism for a product, it is possible to select a Recurring Price Period in the Pricing tab in product administration.




Allow processing of document generation tag formulas with Cost field

	

If set to FALSE, document generation tags with formulas referencing the Cost field from the quote are not processed in the output of parsable attachments enclosed within email notifications.




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




Ignore Standard CRM Mappings

	

Defines whether SAP CPQ ignores standard CRM Mappings. When set to TRUE, SAP CPQ ignores standard CRM Mappings and creates mappings through IronPython scripts instead. When set to FALSE, standard CRM mappings override any script in the system.




Display table for simple product rules

	

Defines whether SAP CPQ displays a table for setting attribute dependency rules in simple product administration.




Show Allow Option for Simple product rules

	

Defines whether Users have the option to allow a previously disallowed attribute dependency rule.




Copy Opportunity Id On New Revision

	

Defines whether SAP CPQ copies the Opportunity Id on each new revision of the Quote. When set to FALSE, SAP CPQ creates a new Quote without the Opportunity Id.




Copy sales order ID when creating new revision

	

When SAP CPQ is integrated with SAP CPQ and this parameter is set to TRUE, when a new revision of the quote is created, the sales order ID of the quote is copied to the revision. If set to FALSE, the sales order ID is not copied to new quote revisions.




Always reset filters on LoadQuote

	

Defines whether existing quote search filters are reset on each new session. When set to FALSE, SAP CPQ does not save quote search filters for the next session.




Allowed Content File Extensions

	

Administrators need to enter all file extensions that should be supported for upload in the File Management and in the Documents tab. Upload of other file extensions cannot be performed.




Enable security check for excel files

	

When enabled, it activates the security check for Excel files uploaded in the Documents tab on quotes. The Excel file is checked if its extensions are .xlsx, .xls, .xltx, and .xlt.




Use responsive GUI

	

Enables Users to work on a responsive GUI platform.




Responsive GUI per user

	

Enables individual Users to switch to a responsive GUI platform. When set to FALSE, Users use the GUI set by the Use responsive GUI parameter.




Unique Company Code

	

Defines whether Users can only add companies with a unique company code. When set to FALSE, added companies do not need to have a unique company code.




Disable timezone conversion for date field

	

Prevents date-only fields from displaying different values to users from different timezones.




Check For 5-digit Zip Code Number For Customers (USA format)

	

Determines whether Users need to enter a 5-digit zip code number in the Bill To Details table on the Customer Info page in order to save the page. When set to NO, SAP CPQ allows Users to enter another digit format and save the page.




Use End User Role

	

Determines whether the end user role is used or not.




Fill BILL TO and SHIP TO data with default values

	

Determines whether the Bill To and Ship To fields are filled in with default values.




Password Validity Period

	

The number administrators provide here determines for how many days a password is valid for users after they change or create them. The default value of the parameter is 0, and if this value isn’t changed, the password validity period is unlimited.




Max Number of Days Before Password Expiration Warning is Shown

	

Specifies the number of days before Users receive a warning that their password needs to be changed. Password expiration is set for each User in the User/Groups drop-down menu. See the chapter on Users for more information.




User Can Change Global Customers’ Data

	

Determines whether Users can modify global customer data. When set to NO, only administrators can change the data.




When determining permission groups based on market, use Quote selected market if available

	

Defines whether SAP CPQ uses the Quote-selected market. If the Quote-selected market is not available, SAP CPQ uses the default market the User chose on the User Page. When set to FALSE, SSAP CPQ pulls the User’s default market.




Send email to user when password is changed

	

If set to TRUE, which is the default value, users whose password is changed will get an email informing them about the password change. This behavior applies whether the password is changed in the application or via the API.




Set boundary for two-digit year resolving

	

Enter the parameter value in the form of a two-digit number, so that the system assumes the first two digits of a year entered in the two-digit format to be 19 (if the two-digit year is larger than the parameter value) or 20 (if the two-digit year is smaller than the parameter value). If no values are entered for this parameter, the boundary for resolving two-digit years is 99 by default. For example, if the value set for this parameter is 20, and a two-digit year in the system is 29, the year is resolved as 1929. However, if the two-digit year entered in the system is 10 with the same setting for this parameter, it is resolved as 2010.




Hide Obsolete Features

	

This parameter hides the following features:

Top Menu

Custom Category UI

Product Configuration Templates

Product Details Templates

Products to Product Details Templates Mappings

Styles and Images section in Branding

The application parameter Allow Selection of Products that will be added to Quote




Number of autocomplete results for attribute

	

Defines how many suggestions are displayed to users when they enter a value for autocomplete attributes.

The default number is 10. You can enter a number within the range 10-100.




Check permissions for pre/post actions

	

If set to Yes, the system checks user's permissions for pre and post actions and executes them accordingly.

If set to No, all pre and post actions are executed without checking the user's permissions.




Hide "From" Email Address and "Name" from the Generated Document Email Form

	

If this parameter is set to TRUE, the From and Name fields will not be visible in SAP CPQ in the email form in the last step of document generation. However, the email received displays the from email address and the name (the email is retrieved from the From Email Address application parameter and the name belongs to the user sending the proposal).




Preselect the first attribute value on a product

	

If the parameter is set to TRUE, and a product is modified via the SimpleProductAdministration SOAP API, the first value of each product attribute is preselected in the Configurator.




Use attribute value code instead of value in quote serialization XML

	

If the parameter is set to TRUE, during quote serialization, the content node in the XML file is populated with the attribute value code, instead of the attribute value.




Search exact product part number for promotions

	

Setting it to TRUE speeds up the search of promotion products on the quote in cases when their name is not defined in Setup  Pricing/Calculations  Promotions/Special Pricing, but only their part number. The default value is FALSE. Before changing the value to TRUE, revise the existing promotions and make sure that all products have unique part numbers. This parameter is available only in Quote 1.0.




Prompt user to upgrade product aliases to new versions on opening the quote

	

If set to TRUE, and the option Prompt Users For Update to New Product Versions is enabled in the Workflow for a specific action, when the user executes that action and new product versions are available for the items in that quote, they will be prompted to upgrade both regular items and items created from product aliases to new versions. Alternatively, if set to TRUE and the option Automatically Update Items to New Product Version is enabled in the Workflow, both regular items and items created from product aliases will be automatically upgraded to new versions. However, if set to FALSE, in both of these scenarios, only the items that aren't created for product aliases will be affected by the options set in the Workflow.




Always Load Selected Values From Custom Table

	

When editing an existing configuration with the Autocomplete Attribute, the attribute will always fetch the actual values from the custom table. In some cases, this can cause a system performance issue. You can perform the fallback to the previous behavior by turning Off this application parameter.




Session Expiration Time

	

Defines the duration of a user session before it expires (in minutes). The default value is set to 0, which means that there is no limit on the duration of a user session. If you want to limit the duration of a user session, the minimum duration that you can set is 20 min.

Users

Name

	

Description




Check For 5-digit Zip Code Number For Customers (USA format)

	

Determines whether Users need to enter a 5-digit zip code number in the Bill To Details table on the Customer Info page in order to save the page. When set to NO, SAP CPQ allows Users to enter another digit format and save the page.




Validity Period for Password Creation Token

	

The number administrators provide here determines for how many hours the URL for password creation sent to a newly created user’s email address is valid.




Use End User Role

	

Determines whether the end user role is used or not.




Allow Admins to Set Temporary Password

	

Allow administrators to create a temporary password for users which must be shared outside SAP CPQ. For details see Create Temporary Password.




Fill BILL TO and SHIP TO data with default values

	

Determines whether the Bill To and Ship To fields are filled in with default values.




If the User Changes the Password It Will be Valid Another

	

Specifies the number of days left until the password expiration date.




Max Number of Days Before Password Expiration Warning is Shown

	

Specifies the number of days before Users receive a warning that their password needs to be changed. Password expiration is set for each User in the User/Groups drop-down menu. See the chapter on Users for more information.




User Can Change Global Customers’ Data

	

Determines whether Users can modify global customer data. When set to NO, only administrators can change the data.




When determining permission groups based on market, use Quote selected market if available

	

Defines whether SAP CPQ uses the Quote-selected market. If the Quote-selected market is not available, SAP CPQ uses the default market the User chose on the User Page. When set to FALSE, SAP CPQ pulls the User’s default market.




Send email to user when password is changed

	

If set to TRUE, which is the default value, users whose password is changed will get an email informing them about the password change. This behavior applies whether the password is changed in the application or via the API.




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




Use Default Image

	

Determines whether a default image is shown for products. The default image is assigned to products that do not have an image.




Default Product Image Name

	

Specifies the name of the file used as the default product image. This image file must exist in SAP CPQ’s images folder.




Display Products Above Subcategories

	

Takes Users directly to the Products page and skips subcategories.




Show Quantity in Catalogue

	

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




Attribute Values per Page

	

Defines the number of attribute values that are displayed in Product Attributes. If the number of available attributes exceeds this number, SAP CPQ creates a new page under the Attribute Values screen.




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




Request Transfer to Item in Configurator

	

Determines whether items are transferred in the Configurator.




Show quantity in responder

	

Determines whether the quantity of each product is shown in the responder.




Show product configuration template

	

Defines whether SAP CPQ displays the product configuration template in the Configurator.




Show Attribute Prices within Configurator

	

Determines whether attribute prices are displayed to Users during configuration. Prices are displayed in brackets next to each attribute value. When set to Simple, each attribute value has a price displayed next to it. When set to Relative, prices of the sibling attribute values are shown relative to the price of the selected value.




Visual Style (Responder)

	

Determines the default responder styles that Users see. Administrators can override these selections by choosing a new style in the User Groups administrative section.




Show disallowed attributes in configurator

	

Defines whether SAP CPQ displays disallowed attributes in the Configurator.




Allow attribute value to be listed as line item even if its extended price is zero (default behavior)

	

Enables Users to list attribute values as line items, even if their extended price is zero.




ResponsAbility encrypt key

	

Enables administrators to enter the ResponsAbility encrypt key that appears in the Configurator.




ResponsAbility tenant

	

enables administrators to enter the ResponsAbility tenant that appears in the Configurator.




ResponsAbility URL

	

enables administrators to enter the ResponsAbility URL that appears in the Configurator.




ResponsAbility Username

	

enables administrators to enter the ResponsAbility username that appears in the Configurator.




ResponsAbility Password

	

enables administrators to enter the ResponsAbility password that appears in the Configurator.




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




Minimum level of logged API entries in the Log

	

The levels of Log entries are: Info, Warning, Error and Fatal. API entries with a lower level than the one selected here will not be logged. For example, if Warning is selected here, Info level will not be logged, and Error and Fatal levels will be logged. Fatal level is always logged. After the date defined in the Minimum level selection for log API entries valid until parameter, this selection is disregarded and all API entries are logged as Warning.




Minimum level selection for log API entries valid until

	

On the date which is specified here, the value selected for the minimum level of logging expires (that is, defaults to the level Warning).




Display Product in Configuration Tree using:

	

You can choose whether product names or product part numbers are displayed in the Configuration Tree.

Shopping Cart and Quotes

Name

	

Description




When updating quote item, reapply default discount/multiplier

	

Defines whether SAP CPQ reapplies the default discount/multiplier each time a Quote is updated. When set to FALSE, Users can change the multiplier in the Quote and save the change. Note that you need to set the appropriate Visual Style for the multiplier to appear in the Quote.




Allow Edit List Price on the Cart

	

Determines the conditions under which the List Price is editable in the Quote. When Users make adjustments in the Cart Fields Administration, they can set this parameter to one of the four available values.




Allow Edit Cost on the Cart

	

Enables Users to edit the Cost field in the Quote, provided the field is made editable in the Cart administration.




When item’s cost is edited in the quote, upon changing item’s configuration, cost will be recalculated

	

Defines whether SAP CPQ disregards Users’ edits of the Cost field value in the Quote and calculates a new value based on the configuration changes. When set to FALSE, SAP CPQ does not retain Users’ manual edits of the field value following the configuration changes and keeps the value defined in the Setup.




Always Refresh List Price on Reconfigure

	

Defines whether SAP CPQ disregards Users’ edits of the List Price field value in the Quote and calculates a new value based on configuration changes (configuration changes trigger list price formula recalculations). When set to NO, SAP CPQ does not retain Users’ manual edits of the field value following the configuration changes and keeps the value defined in the Setup.




Allow Reordering Items in a Cart

	

Allows Users to reorder items in the Cart. When ALLOW PRODUCT SORTING is set, Users can reorder main and line items. When ONLY ALLOW MAIN ITEM SORTING is set, Users can only reorder the main items.




Auto reconfigure cart

	

Defines whether the Cart is reconfigured. When set to YES, the Cart is reconfigured when the Ship To info is changed.




Calculate Auto-Reconfigure only items with modified ItemQuantity attribute

	

Defines whether SAP CPQ automatically reconfigures only those items whose item quantity Attribute Value is changed.




Owner of a Copied Quote will be

	

Enables administrators to define the owner of the copied Quote – the Owner of the Original Quote or the User that Made a Copy.




Default Visual Style (Shopping Cart/Quote)

	

Determines the default styles Users see.




Generate PDF

	

Determines whether a PDF is generated during Quote generation. When set to FALSE, a DOC file is generated.




LineItemInfo Propagate Qty From Main Item

	

Propagates quantity only to the first-level children.




Propagate Quantity to Nested Products

	

Propagates quantity from the main item to all its descendants.

The difference between application parameters, LineItemInfo Propagate Qty From Main Item and Propagate Quantity to Nested Products: the difference is in the number of levels that quantity is propagated. The first parameter, LineItemInfo Propagate Qty From Main Item, will propagate quantity only to its children on the first level, while Propagate Quantity to Nested Products will propagate quantity from main item to all of its descendants, that is too all levels below. Take a look at the following figure below to see what application parameters we are referring to.




LineItemInfo User Can Enter Quantity

	

Enables Users to enter the number of individual line items in the Quote.




MULTILEVEL System

	

Determines whether an inheritance structure is used in SAP CPQ. When set to FALSE, user administration, managing parent, approve parent, ordering parent, etc. are disabled. These options are also removed from the User Definition page.




My Quotes Tab Name

	

Contains the tab name that replaces the My Quotes name set by default.




Other Quotes Tab Name

	

Contains the desired tab name that replaces the Other Quotes name set by default.




Shipping is Required

	

Ensures that every Quote includes shipping.




After setting optional, variant and alternative items CPQ should recalculate quote custom fields

	

Defines whether SAP CPQ recalculates the Quote Custom Field formulas when Users classify items as optional, variant and alternative.




Quantity Sign

	

Enables administrators to select if the value entered in the Quantity field is ONLY NON-NEGATIVE, ONLY POSITIVE or POSITIVE AND NEGATIVE.




Visual Style

	

Determines the default styles Users see for specific sections. Administrators can override these selections by choosing a new style in the User Groups section.




Waiting For Approval Tab Name

	

Enables administrators to enter another name for the Waiting for Approval tab.




Action ‘Send Quote Xml’ sends quote xml under the name

	

Specifies the template for the XML document name that is sent to the FTP server.




When action 'Send Quote Xml' is executed, send xml to HTTP Address

	

Contains the HTTP address to which an XML document is sent.




When action 'Send Quote Xml' is executed, send xml to FTP Address

	

Contains the FTP address to which an XML document is sent.




Ftp Path

	

Contains the path SAP CPQ uses to execute transfers to the FTP server.




Ftp Username

	

Contains the username used to gain access to the File Transfer Protocol.




Ftp Password

	

Contains the password used to gain access to the File Transfer Protocol.




Action ‘Send BOM Xml’ sends quote xml under the name

	

Specifies a template for the XML document name that is sent to the FTP server.




When action 'Send BOM Xml' is executed, send xml to HTTP Address

	

Contains the HTTP address to which an XML document is sent.




When action 'Send BOM Xml' is executed, send xml to Ftp Address

	

Contains the FTP address to which an XML document is sent.




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




Recalculate cart in selected currency

	

Controls the rounding of items in the Quote and their sum. When set to either None or Fix Items, the prices are rounded to the nearest whole number.




Apply Taxes on Shipping

	

Defines whether taxes are applied to shipping.




Roll-Up Cart Items

	

Enables an additional numbering scheme for items which support roll-up.




Include child items set as 'Optional' in Rolled-Up price and cost calculations

	

Determines whether SAP CPQ includes optional child items in rolled-up price and cost calculations.




Display Item Type column

	

Defines whether the Quote includes the Item Type column. Line items are optional, variant or alternative.




Place order email Subject

	

Displays the email subject of the order.




Place order “From” email address

	

Displays the default email address from which the order is sent.




Override Default Place Order Email

	

Defines whether SAP CPQ overrides the default order email address.




Go to customer info tab when arrives from Sales Force even if customers are already mapped

	

Directs Users to the Customer Info tab when they arrive from Salesforce. In addition, the parameter enables Users to check if mappings are properly conducted and to change data if required.




Copy Opportunity Info on Copy Quote

	

Defines whether SAP CPQ also copies the Opportunity info when copying the Quote.




Time out limit for inactive users in simultaneous work

	

When a user opens a quote in parallel with another user, after the time period defined in this parameter passes, the system no longer considers that the user is working on the quote and the user’s name won’t be displayed in the parallel work alert on the quote. This parameter is applicable only when there are multiple users working on the same quote in parallel.




Alert users about simultaneous work on the same quote

	

Defines if users opening a quote are notified that there are other users already working on the same quote. Since SAP CPQ doesn't support parallel work of multiple users on the same quote, this parameter enables notifying users there are other users working on the quote before they make any changes. The system checks if there are already users working on the quote only when the session of the second user starts. Therefore, it is possible that the notification displays on the quote even after the first user has stopped working on the quote. In that case, the second users needs to reload the quote and the notification will no longer display. Additionally, in this parameter you can define the format of the notification (link in the quote or a pop-up message after opening a quote).




Display Quote Tabs as Read-Only

	

Defines whether Users can only read Quote tabs. When set to NO, Users can make changes to Quote tabs.




Generate Notification Attachments as PDF

	

Enables Users to attach only PDF documents to generated notifications. When set to NO, Users can attach other document formats.




Optimize queries for customers and other users quotes

	

Speeds up the loading of the customer list page (the Shipping Info tab) and/or Other Quotes tab (Load Quote). When set to YES, only the first two pages are loaded.

Note

If this parameter is set to Other Quotes, or Other Quotes and Customer List Page, the Number of Items field on Load Existing Project/Quotation  Other Quotes doesn't show the exact number of quotes until users navigate to the second page. Once they do, the number of items displays the exact number of quotes there are in the tab.




Discount rules for parent items in the quote will be applied on

	

Enables administrators to select which fields are affected by the formulas for calculating discounts in parent items in the parent-child configurations.




Allow only one promotion per quote

	

Enables Users to place only one promotion per Quote. When set to NO, Users can place more than one promotion per Quote.




Enable product search by part number in ‘Add Products’ section of the quote

	

Defines whether Users can search products by part number in the Add Products section of the Quote.




Enable product search by product name in ‘Add Products’ section of the quote

	

Defines whether Users can search products by name in the Add Products section of the Quote.




Enable product search by product name and description in ‘Add Products’ section of the quote

	

Defines whether Users can search products by name and description in the Add Products section of the Quote.




Show Part Number as part of product search results in ‘Add Products’ section of the quote

	

Defines whether SAP CPQ displays a product’s part number as a part of the product search results in the Add Products section of the Quote.




Show Product Name as part of product search results in ‘Add Products’ section of the quote

	

Defines whether SAP CPQ displays a product’s name as a part of the product search results in the Add Products section of the Quote.




Show Product Description as part of product search results in ‘Add Products’ section of the quote

	

Defines whether SAP CPQ displays a product’s description as a part of the product search results in the Add Products section of the Quote.




Product Search On The Quote Can Find Configurable Products

	

Defines whether SAP CPQ finds configurable products when searching for products in the Quote Products Search.




Product Search On The Quote Can Find Product Favorites

	

Defines whether SAP CPQ finds product Favorites when Users search for products in the Quote Products Search.




Display floating widget for Customize template page

	

Defines whether SAP CPQ displays a floating widget for the Customize template page.




Display actions for Customize template page on the bottom of the page

	

Defines whether SAP CPQ shows actions for the Customize template page at the bottom of the page.




Upload Project Summary Template (xls file)

	

Enables administrators to upload a project summary template.




Quotes For Project Approval and Change Of Status Action

	

Enables administrators to choose which Quotes are identified for Project Approval and Change of Status Action.




Include Change Status Action With Submit Project For Approval

	

Defines whether the Change Status action is included when a project is submitted for approval. When set to Combined (Default), the Change Status Action is included with the Submit Project for Approval.




Reset Quote Expiration Date on New Revision

	

Defines whether SAP CPQ resets the existing value of the Quote expiration date on each new revision.




Save quote custom fields values when changing tabs

	

Defines whether values entered in quote custom fields are saved when the user changes tabs.




When List price is zero, discount will be set to zero

	

Defines whether SAP CPQ sets the discount to zero when the list price is set to zero.




When quote is copied, new quote items will keep same identifiers(guide) as original quote

	

Defines whether new Quote items retain identifiers (guide) of the original Quote when the Quote is copied.




Display quote number and customer name in the quote header

	

Defines whether SAP CPQ displays the Quote number and customer name in the Quote header




SAP Export XML template

	

Enables admins to select a template used during the export of a SAP CPQ Quote to SAP.




Show copy item, delete item and refresh item actions for child products in the quote for Parent/Child System Products

	

Defines whether SAP CPQ displays these actions for child products in the Quote for Parent/Child System Products.




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




Fire event “Quote custom field change” only on changes performed by user

	

Determines whether the Quote custom field change action is triggered only when Users make changes in the Quote. When set to FALSE, the Quote custom field change is triggered by a script.




Postcode lookup type

	

Enables Users to use a postcode lookup software to search for a postcode.




International postcode anywhere WS URL

	

Specifies the URL Users can use to search for the required postcode.




Postcode anywhere account code

	

Specifies the account code which enables Users to use the international postcode anywhere.




Postcode anywhere license key

	

Specifies the license key which enables Users to use the international postcode anywhere.




Display Quotes In Last Days

	

Shows all Quotes created within a specified number of preceding days set by the administrator.




Show both user quotes and other quotes on the 'Other Quotes' Tab

	

Determines whether SAP CPQ displays user Quotes and other Quotes in the Other Quotes tab.




Inherit Only Product Type

	

Determines whether child items inherit their product type from their parent and whether line items inherit their product type from the main item.




Use Additional Logging For Email Notification

	

Enables administrators to track the status of email notifications in the log.




Allow saving custom fields if Save Quote is disabled

	

If this parameter is set to FALSE (which is the default value) and the Save Quote action is disabled in the workflow, the Save and Continue actions are no longer available in quote tabs (such as Additional Information and Customer Info). If the parameter is set to TRUE, the Save and Continue actions remain available in quote tabs and custom field changes can be saved when Save Quote is disabled in the workflow.




Don't copy ship-to custom fields on quote copy

	

If users copy a quote when this parameter is set to Yes, ship-to custom fields aren’t copied to the new quote.




Execute pre/post actions on quote copy

	

If users copy a quote when this parameter is set to Yes, pre and post actions attached to the Copy action are executed.




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




Any added child product will inherit item type from the parent product on the quote

	

When set to TRUE, the item type of any child product added to a parent/child item on the quote is the same as the item type of the parent product. If set to FALSE, the item type of the child product is Base by default. In either case, the child product item type is editable on the quote. This parameter is valid only for products created in SAP CPQ in Quote 1.0 and doesn't affect the behavior of products imported or synchronized from back-end systems.




Enable Adding Items in Bulk

	

In a quote, allows users to search multiple part numbers by entering or copying them from another document. It also adds products to cart, along with the desired quantities




Set the character limit for the cart comment field

	

Restricts the number of characters that users can enter into car comments on the quote. By default, the maximum length of 3000 characters applies.




Enable Single Sign-On link generation for "One Click" approval

	

If set to TRUE, a Single Sign-On link will be generated for One Click approval. Prior to enabling this option, please ensure that Single Sign-On is enabled for all users who intend to receive the approval link

Security

Name

	

Description




Allowed origins for the CORS filter

	

When one or more domains are entered in this field, only the API calls originating from those domains are allowed. In all existing tenants, the preset value of this field will be *, indicating that all API calls are allowed. If the field is empty its also set to *. In all new tenants, the preset value of this field will be the URL address of that tenant, indicating that only API calls originating from that tenant are allowed. To integrate SAP CPQ with other applications, if the parameter is not set to *, it is necessary to enter both the URL of your tenant, and the URLs of the integrated applications in the field to enable API communication. Multiple values are separated with a ;. If you enter only one URL, you don't need to add ; after it.




URLs that may Embed CPQ

	

Defines URLs that may embed SAP CPQ using <frame>, <iframe>, <object>, <embed> and <applet>. If the parameter is empty or * is entered, embedding is allowed for all URLs. To prohibit embedding on all URLs, there should be ‘none’ in the parameter. Also, embedding is disabled if there is an incorrect URL in the parameter. Administrators should set trusted domains through the application parameter to prevent framing from other domains. The value of the parameter must be the exact URL on which SAP CPQ is opened in another application.

If SAP CPQ is integrated with Salesforce via the package, this parameter must be populated with *, this is the only accepted value.




Permitted sources for JavaScript

	

Contains URLs to secure sources from which JavaScript files can be used in SAP CPQ. Introduced as part of the Content Security Policy.




Permitted sources for stylesheets or CSS

	

Contains URLs to secure sources from which stylesheets and CSS files can be used in SAP CPQ. Introduced as part of the Content Security Policy.




Permitted sources for images

	

Contains URLs to secure sources from which images can be used in SAP CPQ. Introduced as part of the Content Security Policy.




Permitted sources for font resources

	

Contains URLs to secure sources from which font resources can be used in SAP CPQ. Introduced as part of the Content Security Policy.




Permitted sources that can be used as an HTML < form > action

	

Contains URLs to secure sources that can be used in SAP CPQ as an HTML <form> action. Introduced as part of the Content Security Policy.

On this page
General Parameters
Users
Product Catalog
Configurator
Shopping Cart and Quotes
Security
Yes
No