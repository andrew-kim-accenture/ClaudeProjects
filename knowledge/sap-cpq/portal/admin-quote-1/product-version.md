# Product Version | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/b1e54cea563d40059b0d65c30173cd47.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products


	
Create Products
	Product Actions

	
Edit
	
Product Copy
	
Product Version
	
Product Alias
	
Categories
	
Attributes
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	
Custom Configurator XSLT
	
Pricing/Calculations
	
Quotes Administration
	
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
Product Version

The purpose of this feature is to enable you to create product versions, modify them and then activate them. Meanwhile, the original product remains intact and is used in SAP CPQ. You can decide when to activate a new product version or to roll back to the previous one.

Go to Setup  Product Catalog  Products.

The product list displays.

Click on the actions icon and select Product Version from the dropdown list.

A table with all product versions for the selected product is displayed.

If you click on the Edit action, the standard SAP CPQ product setup page opens. Here you can modify this version as you want and save changes.

If you click on the Delete action, the system checks if there’s any quote that contains this product version and if so, it doesn't delete the version. Otherwise, that product version is deleted. Make sure that you delete only versions that are not active.

You can Add, Activate, Edit, Preview, Configure, or Check Product Details for the product version by clicking on the appropriate link or button on the product versioning page.

Click Create New Version.

A popup window for creating a new version is displayed.

You can edit version number or accept the one that SAP CPQ offers, and enter description.

Click Save.

The popup window is closed, and the new product version appears in the list of versions for the product.

Activate the new version to make it default. Have in mind that only one version should be active at a time.

In the Workflow edit page (Setup  Workflow/Approval  Workflow) there are two options for all quote actions:

Prompt Users For Update to New Product Versions - If the selected quote action is executed, a message states that there’s a new product version available for some items and requires confirmation from you whether to update those items or not.

If you confirm, all appropriate items are upgraded and the quote action is executed. Otherwise, the action is executed without upgrading items to the new version.

Automatically Update Items to New Product Version - If the selected quote action is executed, all items are automatically upgraded to their new product versions if a new version is available.

Note

By default, these options don't apply to quote items created from product aliases, but only to regular quote items. To make either of these options apply to quote items created from aliases, in addition to enabling the option in the Workflow, you need to set the application parameter Prompt user to upgrade product aliases to new versions on opening the quote to TRUE.

Alternatively, you should enable the Upgrade to New Product Version action (and set the workflow permissions for it) so it's always available on the quote and users can manually upgrade the product at any time.

Note

If a container attribute is related to a product and that product has a new version, the container keeps the reference to the old product version because the old version was the one that was active at the time the relation with the container was established. However, on the user side in the Configurator, the system finds the latest product version for users to configure it.

To update the reference to the product version in the Setup, do the following:

Remove all column references to the product attribute.

Remove all product references.

Save the changes in the container.

Attach the product with the new version.

Return the column reference to the product attribute.

Save the changes in the container.

A limitation affects container attributes with part number lookup referencing a product whose different versions have different part numbers. When a child product referenced by such a container is upgraded to a new version, and the parent item is updated on the quote, the old version of the child product remains displayed in the Configurator, although the new version of the child product is used on the quote. However, if both versions of the referenced product have the same part number, the version is correctly updated both on the quote and in the Configurator.

Yes
No