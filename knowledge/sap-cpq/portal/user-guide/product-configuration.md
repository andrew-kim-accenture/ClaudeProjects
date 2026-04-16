# Product Configuration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/4329c7a6a812490fae3604226ef45235.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation


	
Product Search
	
Catalog Navigation
	
Product Comparison
	
Product Configuration
	
Custom Quote XSLT Transformation - Adding Part Number / Product Name Configuration Link Feature
	
Document Upload in Configurator
	
Document Generation Journey
	
Load Existing Quotes
	
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
Product Configuration

Once a product is found while browsing the Catalog or via the quick search, you can begin configuring it. Configuring a product enables you to edit the specifications of a product.

Using the Configurator

You open the configuration screen or Configurator by clicking the image or name of the product.

Once you enter the configuration screen, navigation links and quick search field on the top of the page are still available. In addition, you can see breadcrumbs displaying the trail of categories visited to get to this product. Clicking any of the previous categories displays the products or subcategories that it contains.

Product Attributes

You make configurations by choosing attributes for the product.

Attributes are specific characteristics that determine a product.

Attributes can be displayed differently. They can be displayed as lists, checkboxes, radio buttons, entry fields (text boxes), and so on.

For attribute values, you can either select a predefined value or enter one of your own. These values can have prices that are used for giving the product its total price.

Screen Sections
Note

SAP CPQ automatically displays variant keys in alphabetical order.

The configuration screen has three sections: tabs, configuration area, and the responder. Each section plays a role in the configuration process.

Configurator Section

	

Description




Tabs

	

Tabs appear at the top of the Configurator. They logically bundle product attributes and guide you through the product configuration process. Choosing new tabs displays a different set of attributes used to configure the product.




Configuration area

	

The main part of the screen that contains all attributes used to configure the product.




Responder

	

The responder appears on the right of the screen. It contains the selections made in the configuration area.

The attribute’s name and selected value are displayed along with any pricing that can be attached to the attribute. Configurable products can have required attributes. If some of the required attributes aren’t selected, the configuration is incomplete and can’t be added to the quote.

Note

When SAP CPQ displays the prices of child products in the parent product responder, the system does so without listing prices of individual line items belonging to the parent’s child items. In other words, SAP CPQ treats the child items’ line items as the parent’s line items in bulk. Such behavior prevents the user from being able to see the price of each child item’s individual line item.

Understanding Product Configuration Status

On the configuration screen, you will see an indication near the product name showing whether the configuration is complete or incomplete. You must complete the configuration to add it to the quote. If the configuration is marked as incomplete, it means some required attributes are not selected. Required attributes are marked with an asterisk. If an attribute has not been selected, its accompanying text will appear in red. You can also click the incomplete indicator to display the pending attributes that are missing a value. Once you select all required attributes, the indicator changes from incomplete to complete. If the product does not require any attributes, the configuration will immediately have the status complete.

If a container attribute is required, the product is complete when the container has at least one row, unless it includes a selector column. In that case, the container must have at least one added row and one selected row in the selector column. If a column in a container attribute is required, the product is complete when each row has one selected value for that column. If the column is a selector column, at least one row must be selected.

Actions of the Configurator

Once you’ve completed the configuration, choose Add to Quote to create a new quote for the configured product.

If needed while working on a configuration, you can return to the initial attribute values by choosing Reset. Resetting discards the settings made in all tabs and picks up the configuration on the starting tab.

If you reset a product configuration from the catalog, resetting restarts the configuration with the default values.

If you reset a product configuration from your favorites, resetting restarts the configuration with the favorite values.

You can add to your favorites the current configuration by choosing the star button . You can also access the Favorites page by choosing View Favorites.

If the Allow Product Configuration Import checkbox was selected in Additional Product Data when the product was configured, you can upload a configuration template.

Configuration Tree

The Configuration Tree allows you to navigate and configure complex parent-child hierarchies.

The parent product and its child products are displayed in the tab in the responder. You can expand and collapse the parent product and view all the child products. Moreover, you can navigate to any product within the configuration tree. When switching from one level to another using the tree navigation, the changes are automatically saved.

In addition, you can easily navigate to incomplete child configuration, as products that have incomplete children are highlighted. Even if you are in a child product, you can add the entire configuration tree to a quote by clicking Add to Quote.

Read‑Only Configurator

The Read-Only Configurator allows you to open and review product configurations in view-only mode. This capability is useful when you need to review configurations after a quote has been submitted, approved, or placed as an order. It ensures visibility into historical configuration choices without the risk of modifying pricing, rules, or selections.

The Read-Only Configurator displays the current configurator layout with all selected attribute values as they were configured. All inputs are disabled, so you can't edit the configuration.

The container includes the Actions / View action with an "eye" icon that opens the child configuration in view mode. You can also access the read-only configuration when the quote is open in view mode.

To return to the previous tab, click Go Back. To return to the quote, click Return To Quote.

The formula validator has been removed.

Note

Configuration data is preserved, but prices and rule results might differ from the original quote if the pricing logic or product models have changed.

For information about enabling the Read-Only Configurator, refer to the Item Actions Workflow topic in the SAP CPQ Setup and Administration Guide for Quote 2.0.

Related Information
Product Comparison
Document Upload in Configurator
On this page
Using the Configurator
Configuration Tree
Read‑Only Configurator
Related Information
Yes
No