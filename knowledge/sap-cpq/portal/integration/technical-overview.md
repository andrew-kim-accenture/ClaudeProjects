# Technical Overview | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/9b802388ca4648eb8ea3451e12b7346f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems


	
SAP ERP Integration for Quote 1.0
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
Variant Configuration Integration


	
Introduction to the Variant Configuration Integration
	
Integrate SAP CPQ with SAP Variant Configuration and Pricing
	
Define SAP General Attribute Mappings
	
Knowledge Base Diagnostics
	
Technical Overview


	
Quote-First Approach for Variant Configuration Integration
	
SAP Sales Area in SAP CPQ
	
Sales Logic for Variant Configuration Models
	
Pricing
	
SAP Variant Configuration and Pricing Log
	
SAP Sales Cloud Integration
	
SAP Commerce Cloud Integration
	
SAP Subscription Billing Integration for Quote 2.0
	
Integration with SAP Master Data Integration
	
Identity Provisioning Service Integration
	
CX AI Integration
	
Integration with Central Entry Point
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Technical Overview

The Variant Configuration integration is provided by the SAP Variant Configuration and Pricing service.

First, master material is sent from SAP ERP to SAP Cloud Integration over SAP IDocs. SAP Cloud Integration then calls the SAP CPQ SOAP API, and the following product data is sent from SAP ERP to SAP CPQ:

name

description

part number

material number (which becomes system ID in SAP CPQ)

unit of measure

catalog/hierarchy (which becomes category in SAP CPQ)

material type (which becomes product type in SAP CPQ)

Products that are imported from SAP ERP in this way become simple products in SAP CPQ and are placed in the preselected category. If there is a product hierarchy in SAP ERP, the hierarchy will also be replicated in SAP CPQ as a category, which means that one product will belong to two categories – the category it belongs to in SAP ERP and the preselected category in SAP CPQ. If categories that exist in SAP ERP (also known as hierarchy) do not exist in SAP CPQ, they will be replicated in SAP CPQ. On the other hand, the preselected category needs to be manually created. If the category to which a product belongs has a parent category in SAP CPQ, and that product is being updated via API, the payload needs to contain information about the parent category.

In Setup  Product Catalog  Products, products obtained via synchronization with SAP ERP and SAP Variant Configuration and Pricing have the value Yes in the column Synced from Back Office. The column Synced from Back Office is visible only when SAP CPQ is integrated with a back office application, such as SAP ERP.

Note

Products synchronized from the back-end system can't be used as attribute values for any attribute type, except for being referenced by container attributes.

Note

Product renewal is currently not supported for Variant Configuration products.

Units of Measure

It is also possible to quantify products by entering an ISO code containing up to three characters in the Unit of Measure field in the Definition tab of a product in SAP CPQ. The maintained ISO code must be known in SAP ERP (see transaction CUNI). The Unit of Measure corresponds to the material's base unit of measure in SAP ERP. It is different from the sales unit of measure, since SAP CPQ does not support sales units that are different from the base unit. To obtain prices from the Variant Configuration and Pricing Service (CPS), ensure all units of measure are in the ISO format.

Knowledge Base Synchronization

Furthermore, simple products previously imported from SAP ERP get their attributes and a new product display type via knowledge base synchronization, which is initiated from SAP CPQ. Depending on the knowledge base structure, the synchronization converts simple products to either configurable products or parent-child products by calling SAP Variant Configuration and Pricing to get the attribute name, description and value. As stated in Integrate SAP CPQ with SAP Variant Configuration and Pricing, knowledge base synchronization is run on a daily basis. In case the synchronization fails, the administrator is notified via email, and the job will be rescheduled for execution during the next synchronization. The job will get information about products that were created or updated in the last 24 hours.

During the first knowledge base synchronization, attributes are assigned to a specific characteristic group, which is a product tab in SAP CPQ. Attributes retain the same layout order they originally had in the Variant Configuration, with the exception of attributes appearing in more than one tab. Those attributes do not retain their original positions. With every new synchronization, new attributes will be added, but they will not be assigned to any product tab in SAP CPQ. This means that administrators will have to reorder attributes and assign them to appropriate product tabs by using the drag-and-drop functionality of the configuration layout in SAP CPQ. Attributes can't be marked as line items for Variant Configuration products, and attribute value ranking isn't supported for them, either.

If you manually add attributes to a synchronized product, and the product is subsequently updated via a new synchronization job, the manually added attributes will be preserved and available in addition to the new attributes obtained through synchronization.

The display type of synchronized attributes is set according to the back end data the first time that attribute is synchronized for a specific product. If you manually change the display type of the attribute for that product, any subsequent synchronizations of that product will not change the display type you defined, unless you enable the option Override Attribute Display Type to Match Back End.

When a characteristic from the back-end system is synchronized to SAP CPQ, the order of attribute values in the attribute created from that characteristic in SAP CPQ is identical to the order in SAP Variant Configuration and Pricing, if the option Override Product Layout to Match Back End is enabled on the provider page. However, if the option is set to FALSE, the order of attribute values is replicated from SAP Variant Configuration and Pricing only the first time the characteristic is synchronized. After every subsequent synchronization job, the already synchronized attribute values remain in the same order as prior to that job, while any newly synchronized attribute values are arranged in the order retrieved from SAP Variant Configuration and Pricing and added after those previously synchronized values.

When generating a system ID for a Variant Configuration product, SAP CPQ takes the case-sensitive flag defined in the knowledge base into consideration. If the case-sensitive flag is set to TRUE, and there are two or more ID characteristics consisting of the same characters, the system ID attribute value is followed by a suffix _## and a counter (indicating the ordinal number of the duplicate). For example, when the flag is enabled, ABC_1000 and abc_1000 will be created in SAP CPQ as abc_1000_##1 and abc_1000_##2. However, if multiple characteristics in a knowledge base have identical values that are numeric, the knowledge base containing these characteristics can't be successfully synchronized to SAP CPQ.

Additionally, SAP CPQ successfully handles synchronizing attributes (characteristics) with an empty or null possible value ID. If a characteristic with an empty or null possible value ID arrives to SAP CPQ via knowledge base synchronization, that value is not synchronized, but everything else is synchronized as expected. However, if that value is the only value in the characteristic, a default value is added, instead.

Characteristics with multiple values with the type String that are marked with additionalValues in the knowledge base can be used with both user selection and as manual user input in the back-end system. However, those characteristics are synchronized to SAP CPQ as attributes with only the Free Input type, because their back-end type isn't supported. Numeric characteristics marked with additionalValues in the knowledge base are also displayed as free input in SAP CPQ, but with a range provided for the allowed values.

Note that the same characteristic can be treated differently in every knowledge base to which it belongs. For example, if you remove a possible value from the characteristic master data after the characteristic had already been used in a generated knowledge base, this value remains available in the original knowledge base, and the configuration continues to work. However, new knowledge bases won't contain the removed value. In SAP CPQ terms, the original product isn't affected, but any new products or product version are created without the removed characteristic value.

If a container attribute is used for storing Sales BOM items obtained via synchronization, it appears empty in the Setup definition after knowledge base synchronization. However, after the product is configured, the container attribute is populated with the appropriate products from SAP Variant Configuration and Pricing. You shouldn't manually add products to the container, delete the container or modify it in any way in the Setup. In addition, note that BOMs can't be used with simple products, because simple products can't be configured via SAP Variant Configuration and Pricing.

Note

SAP CPQ product tabs are globally defined, which means that any change to a tab name in SAP CPQ will affect all the products in which the tab is included. In SAP CPQ, the same tab, with the same ID, can be used in different products. However, in the back-end system, product tabs (characteristic groups) are defined per product model, which is why the same tab ID (which corresponds to the characteristic group name in the back end) can be used with different characteristic group descriptions in different products.

On knowledge base synchronization in SAP CPQ, a tab with a certain ID is only created once, the first time it occurs. The remaining tabs with the same ID are not created, and the first tab with that ID is used in their place. Only tabs with IDs that do not exist yet in SAP CPQ are created. If the same tab ID (group name) is used on different products and with different group descriptions in the back end, only one global tab is created in SAP CPQ with a tab ID that corresponds to that group name. However, in that scenario, with each knowledge base synchronization of products which reference the tab, that tab's name in SAP CPQ (which is displayed during product configuration) will be overwritten with the description of the characteristic group from the back end. This can result in unexpected tab names appearing during the configuration of some products in SAP CPQ. To make sure tabs are used correctly in layouts after synchronization, you must assign unique names (IDs) to characteristic groups in Variant Configuration, so that new tabs are created for new synchronized products in SAP CPQ. If you experience issues with incorrect layouts, contact the SAP CPQ Support team for assistance with synchronizing tabs.

In addition, if the name of a previously synchronized tab is changed in the back end, the synchronized tab in SAP CPQ will not be updated with the new tab name, because that tab ID already exists. However, if you modify both the name and the ID of the tab, a new tab with the specified name will be created in SAP CPQ with the subsequent knowledge base synchronization.

Editing the quantity of a synchronized item (simple or configurable) in the quote triggers repricing and reconfiguration. New prices are retrieved from SAP Variant Configuration and Pricing. Therefore, SAP CPQ supports scale pricing, which is used in SAP Variant Configuration and Pricing.

Numeric Attributes

When characteristics are synchronized as numeric attributes, their display type is determined by their interval value. Numeric attributes with intervals set to 1 have the display type Checkbox or Dropdown, while any other values result in Free Input attributes. When entering a numeric value for a free-input attribute synchronized from Variant Configuration, users can see the allowed range of values next to the input field. Any changes made to these value ranges are synchronized and displayed in SAP CPQ in real time. SAP CPQ supports all types of value ranges that can be obtained from Variant Configuration.

Scripting

Product rules are defined primarily in SAP Variant Configuration and Pricing (which is recommended). It is possible to use IronPython scripting to configure synchronized products in SAP CPQ, but only using the the product event OnProductReady, which can be used in both quote engines. When assigned to a Variant Configuration product, this event functions the same way it does on standard SAP CPQ products. It is triggered every time that product is configured in any of the following ways: creating a new configuration, opening or editing existing configurations, creating, editing, or adding favorites to the quote, and performing the Reconfigure action.

However, the product event OnItemAdded can't be used to configure Variant Configuration products.

Tip

When used on Variant Configuration products, the scripting method ResetAttr sends multiple calls to SAP Variant Configuration and Pricing. One call is sent per every change on the attribute, and one separate call is sent to retrieve the new configuration. Based on the number of changes on the attribute, using this scripting method can cause a performance impact, because the same flow is followed as if the user was manually resetting the attribute values in the Configurator. The method ResetAttr resets attribute values to a blank. For example, it has the same effect as if you deleted the value ABC from a free input attribute, which you had previously entered.

Note

When you use scripting to modify the attributes on a Variant Configuration product, on environments created prior to the 2202 release, the changes will be sent to SAP Variant Configuration and Pricing individually after every selection by default. However, an alternative option is to send the selections in bulk instead, in which case the changes are sent only after the method ApplyRules is called. The recommended practice is to send the attribute selections to SAP Variant Configuration and Pricing in bulk using the ApplyRules method, instead of individually. You can contact theSAP CPQ Support team to enable the possibility of sending attribute value selections in bulk.

Actions
CTX tags used in attributes on products in the quote are reevaluated every time one of the following actions is performed:

Load Quote

Change Market

Change Customer

Change Pricebook

Save Quote

Reconfigure

When CTX tags are reevaluated, the result is cached in the quote and pricing attributes are sent for each item. The product part number is added as another default attribute since there is a part number per item.

Quote actions Undo and Redo aren't available when the integration with SAP Variant Configuration and Pricing is enabled. In addition, the action Cancel Changes can't be used on quotes which contain Variant Configuration items.

Note

Configurable products synchronized from SAP Variant Configuration and Pricing to SAP Cloud for Customer can be used in a typical scenario for that integration, where the user lands from SAP Cloud for Customer to the SAP CPQ quote.

Product Versions

Every change to the product model in the back-end system that results in a new knowledge base version leads to a new product version. Product versions can't be added or deleted in SAP CPQ, because they are obtained along with their own back-office effective dates via knowledge base synchronization. Product versions of Variant Configuration products are permanently active in SAP CPQ as this behavior is controlled by the back-end system and SAP Variant Configuration and Pricing. However, although all versions of a synchronized product are always active, only one is effective on a specific day, and that version is displayed in the Catalog. You can differentiate between the multiple active versions using their different knowledge base versions. When examining product versions of a synchronized product in the Setup, you can see the number of the version which is effective on that day, and that version is also flagged in the column Effective Today. Additionally, you can see the back-office effective dates of the versions of that product. In SAP CPQ, the version which appears in the Catalog is determined by the Effective Date fields on the quote and the User Page. The back-office effective date of the product version needs to match the Effective Date on the quote or User Page in order for that product version to appear in the Catalog. Additionally, the price displayed to the user depends on which product version is displayed. Only the product versions that are flagged as root items in the back-end system will be visible in the Catalog, otherwise they will only appear in the Setup and can only be used as child items on the quote. You can see whether a version is marked as a root item in the Root Item column in the product version window, as well as in product definition.

See Effective Date for general information about effective dates and product versions.
Note

On the user side, the system compares the effective date of the quote and the product versions. The version that is used is the one with a back-office effective date that is closest to the quote effective date, and earlier than the quote effective date. When a Variant Configuration product is edited in the Setup, the version that is edited is always the initial version of the product, and not the last synchronized version. To edit another version, open Product Versions from the Actions menu and edit any version you need.

The system applies the following logic when determining which version of a Variant Configuration product is effective: if a root item version with the right effective date exists, it is marked as effective today. If no such root item version exists, the non-root item version with an adequate effective date is marked as effective today. If multiple non-root item versions are effective on the same date, the one with the highest version number is displayed.

Tip

SAP CPQ users working on a quote are able to upgrade the version of their product to the newest available version to utilize the latest configuration model. This works regardless of date they initially added a product to a quote.

If there was a change in the configuration of a variant configuration product between two knowledge base synchronizations, the update is automatically triggered by the Reconfigure action, so the actual product will be upgraded to the newest knowledge base.

The product can also be manually upgraded to the newest product version if there is a new version available for the provided effective date.

Configuration Type

When the integration with SAP Variant Configuration Pricing is enabled, you can choose which configuration engine is used for a specific product, via the Configuration Type option in product definition.

When the Variant configuration type is selected, the Variant Configurator will be used for that product. When the Standard configuration type is selected, the SAP CPQ Configurator will be used. The structure of products with the Variant configuration type can't be modified in SAP CPQ, instead, it must be modified in the back end or in SAP Variant Configuration and Pricing, and then synchronized or imported to SAP CPQ.

It is only possible to set the configuration engine to Variant for products which are flagged as isSyncedFromBackOffice.

It is possible to use the Variant Configurator as the configuration engine for a product obtained via knowledge base synchronization (a model that is maintained in SAP ERP), but to set the pricing for that product in SAP CPQ. In terms of SAP CPQ settings, this means you can combine the configuration type Variant with the pricing type Custom Pricing or Pricebook Lookup. Multi-level products need to have a consistent pricing type across levels. In addition, by selecting the Standard configuration type for a Variant Configuration product that was converted into an SAP CPQ product, you can use SAP CPQ configuration rules on that product.
Note

A parent/child product synchronized from the Back Office should contain only one BOM Items container created by the knowledge base synchronization.

The SAP CPQ administrator can select variant pricing on a product that doesn't reach SAP CPQ via a knowledge base synchronization.

To set this up in the Products view, select the following:

Display Type: Parent/Child

Configuration Type: Standard

Pricing Type: Variant Pricing

Note

Setting the configuration type manually is supported in both quote engines. However, in Quote 1.0, creating products with one of the standard SAP CPQ pricing types selected in combination with the Variant configuration type is not supported out-of-the-box. For Quote 1.0, it is necessary to customize the iFlow via project work in order to ensure that the flow of pricing data to the back-end system functions correctly.

Products obtained via knowledge base synchronization which are not flagged as root items, but have the Standard configuration engine selected, are visible in the Catalog. However, products with the Variant configuration type need to be flagged as root items to appear in the Catalog. If they aren't flagged as root items, they are only visible in the Setup and can only be used as child items on the quote. A product can only be flagged as a root item in the back-end system.

Simple products

Simple products from SAP Billing and Revenue Innovation Management can now simultaneously be used in a product configuration and added to the quote as root items. To mark these kinds of products as Root items, the products need to be of type Simple, meaning Multilevel and Configurable are set to false, and the Order Item Type has to be Subscription or Service.

Knowledge Base Synchronization Translations

SAP CPQ allows administrators to synchronize translations in various languages which they are maintaining in Variant Configuration. Every time knowledge base synchronization is executed, translations are synchronized for all products and product versions obtained via that specific knowledge base synchronization. However, it is also possible to synchronize translations for products that were obtained via earlier synchronization jobs. Translations can be synchronized on the level of product names/descriptions, attribute names/descriptions, attribute value names/descriptions, and tabs. More information about synchronizing translations is available in Knowledge Base Synchronization Settings.

Favorites

Variant Configuration product configurations can be added to Favorites from the Configurator. It is possible to save several configurations of the same product, either complete or incomplete, as separate favorites. Consequently, this functionality provides users with a practical workaround for material variants. Moreover, you cannot add products to favorites directly from the Catalog. Instead, you need to click Configure first, and then add them to favorites from the Configurator. A Variant Configuration item saved as a favorite permanently retains the original reference attributes, but the pricing attributes are updated every time the configuration is opened. For example, if a different quote is currently active and is providing a new context for executing the rules, the pricing attributes are updated according to the new context whenever the configuration is opened.

Since the product configuration is already stored in an existing favorite, once it is opened, there is no need to run product rules and events, such as OnProductLoaded, again.

Note

To be able to add incomplete configurations from favorites to the quote, make sure that Allow adding incomplete items is turned on for your user type in the Setup.

Note the difference between incomplete configurations (which lack an element that is required) and inconsistent configurations (in which there is a conflict). Inconsistent configurations can always be added to the quote, and are flagged as inconsistent in the quote.

Conflicts
The tab Conflicts displays in the responder whenever a conflict is created in the Configurator. The tab lists all the conflicts occurring in the product along with their specific causes. Explanation details provide insights into why conflicts occurred. As this information is maintained in SAP Variant Configuration and Pricing, it is present in SAP CPQ only if these details are provided in the payload. To provide a better overview of existing conflicts, conflicts are grouped by conflicting attributes. A collapse button is available, which is useful for long lists of conflicting attributes. Sales representatives can easily identify which attribute is involved in a conflict by clicking on the attribute name. This link takes them to the exact tab and attribute value involved in a conflict.
Note

In case of Variant Configuration (VC) products, there is also an information icon next to each possible cause of conflict (that is, attributes which are marked as nogoods in the payload).

Tabs containing conflicting attributes are highlighted in orange. Attributes connected to the conflict are also outlined in orange for easy identification. If mandatory attributes within the same conflicted tab are not selected, those tabs are highlighted in red.

Inconsistent Configurations

If conflicts are present, the entire product configuration is considered inconsistent. By default, you can add an inconsistent product configuration to the quote.
Note

Although it is not recommended to add an inconsistent configuration to a quote, there might be some cases where you would need to do so. However, if you want to forbid inconsistent configurations to be added to a quote, go to Setup  Users  User Types  Edit and turn off the parameter Allow Adding Inconsistent Items.

Traffic Monitoring

With the Variant Configuration integration, traffic is monitored via the SAP Passport, a payload/token attached to outbound API calls sent from SAP CPQ to SAP Variant Configuration and Pricing and SAP Cloud Integration. For the purpose of end-to-end tracing, SAP Passport can be included in the header of custom HTTP calls made through AuthorizedRestClient in scripting. The following IronPython scripting interface can be used for working with the SAP Passport: KeyValuePair<string, string> SapPassport.GeneratePassport(string action).



Quote-First Approach for Variant Configuration Integration

When SAP CPQ is integrated with SAP Variant Configuration and Pricing, the modelling in SAP CPQ needs to be done in such a way that users land on a new quote, not the catalog.
SAP Sales Area in SAP CPQ

SAP Sales Area is an eight-character code, which is a combination of sales organization, distribution channel and division.
Sales Logic for Variant Configuration Models

The sales logic for Variant Configuration (VC) models allows administrators to enrich the rules evaluated in backend systems with an additional set of rules that adapt to dynamic attribute changes in product models. They can define complex configuration rules for both legacy variant configuration (VC) and advanced variant configuration (AVC) product models.
Yes
No