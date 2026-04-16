# Product Integration API Structure | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/af51bd73dbdd4d7194adb58b6dd78db0.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API


	
SAP CPQ REST API Authentication
	
SAP CPQ to Third Party Authentication
	
Script API
	
SCIM API
	
Configurations API
	
Custom Table API
	
Rate Plans API
	
REST API for Updating Ship To, Bill To, and End User
	
API for Content Upload
	
REST API Error Codes
	
Custom API (Global Scripts Consumed as REST API Web Services)
	
User Interface API
	
Product Integration REST API


	
Product Integration API Structure
	
Product Integration API Examples
	
Headless SAP CPQ Configurator
Product Integration API Structure

BasicInfo

basicInfo (consist of Products properties and its pricing part), as well as categories, product type, permissions and shippings. It is mandatory and it should be always provided and always returned when GET/POST/PUT.

For productType it is allowed to provide totally new product type by providing totally new SystemID that will be automatically created within the system. If existing systemId of productType is provided, product type from the system will be just connected to the product.

For categories part, user can provide a list of categories that will be connected to the product (if category is connected to product it must have productBelongsToCategory set to true), similar to product type, if existing systemId is provided (category already exist in the system), it will just automatically be created, and if totally new systemId is provided new category will be created within the system and product will be automatically set to belong to that category if productBelongsToCategory is set to true. Also, by providing parentSystemId we can create a hierarchy. Again, if parent systemId already exist, the category with provided systemId will belong to that parent category. Add example for category and category hierarchy.

For PermissionSystemIds, the list will obviously be empty in GET if visibleToEveryOne is set to true, also in GET and POST there is no need to provide systemIds of permissions if you want it to be visibleToEveryone. In the case where visibleToEveryone is true permissionSystemIds should be provided. From this API we are not allowed to create new CpqPermissionGroup, so only existing permission systemIds are allowed. If non existing systemId is provided a validation exception will be returned that permission doesn’t exist in the system.

For Shippings, it is a list, that GET will return empty if on product no expression for any shipping is defined (this is done like optimization of payload, because systems tend to have lots of shippings that are not used at all). New shipping will be created by providing nonexistent systemIds, also if existing is provided expression will be connected to that product and that shipping, like the behavior of product type and categories.

Attributes

attributes – non mandatory (product attributes) consists of list of product attributes. Each product attribute has its definition which addresses to Attribute page in UI which is defined in the sub object of this object attributeDefinition. Each product attribute has product attribute values, and each product attribute value has its attributeValueDefinition. AttributeDefinition and attributeValueDefinition are not mandatory in the case where we want to add existing attribute/attribute value to a certain product since the definition already exist in the system. In the case where we want to define totally new Attribute in the system and add it to the product, we would need to provide its attributeDefinition as well, as well as attributeValueDefinitions for the values of that attributeDefinition. For certain types (specific) of attributes like AutoComplete, Container and Measurement respectively in attributeDefinition we would have to define autocomplete sub object, container subobject, and measurementSystemID field in case where we want to create newly created attribute of those types. In the case of other types there is no need to provide any of those. They can stay nulls.

In the case where creation of Subscription or ServiceContract OrderItemType product, we do not have to provide system attributes connected to those types of products since they will be automatically added by the system.

There are specific use cases related to attribute management:

If product attribute definition is provided and attribute is going to be created, at least one product attribute value with definition should be passed in request. Even if attribute type is Container or Autocomplete, product attribute value should be passed and one definition value.

In case of autocomplete attribute, provided value definition value and value code is ignored when saving attribute as this value would be passed through ValueCodeColumnName property.

If attribute values provided with displayToUser property set to false, they won't be updated or inserted, because they are not in any connection with product.

Product attribute translations and product attribute values translations are included in the Translations section of the product. For more information, check the Translations section.

AdvancedRules

advancedRules (non-mandatory) is a list of advanced rules that are connected to product. SystemId of advanced rules are unique in the system. So, if you have advanced rule defined in one product with one systemId, in another product you cannot have advanced rule with same systemId, it must be unique.

SimpleRules

simpleRules (non-mandatory) is a list of simple rules that are connected to product. In simple rules we need to pay attention that in payload we need to provide attributes that are used in rules, so that we do not get validation exceptions of non-existing attribute/ attribute values. So, if you have simple rule defined in one product with one systemId, in another product you cannot have simple rule with same systemId, it must be unique.

ProductValidationMessages

productValidationMessages (non-mandatory) is a list of product validation messages that are connected to product. So, if you have product validation message defined in one product with one systemId, in another product you cannot have product validation message with same systemId, it must be unique.

LocalScripts

LocalScripts (non-mandatory) is a list of scripts connected to product. So, if you have local script defined in one product with one systemId, in another product you cannot have local script with same systemId, it must be unique.

GlobalScripts

List of globalscripts (non-mandatory) connected to event of a product.

AliasAttributesInfo

AliasAttributesInfo is populated only when we GET, or we should change, or create alias product attribute.

In all other cases it should be, and it returns null.

Layout

Layout of a product (non-mandatory). It is in close connection to the attributes of product. On POST we can define new tabs, define attributes on them and on responderAttributes and responderLineItemAttributes.

CodeMatching

List of codematchings connected to product.

Since codematching doesn’t have its unique systemId each time the list of code matching is recreated.

Translations

Translations for product, product attributes and product attribute values. It will return only the language for which at least one translation is defined. In the case where it is not, to prevent very big payload, it won’t return that language even if it exists in the system.

Default language is not returned by the translations part since its values are original values that are defined on product directly.

Translations had big influence on performances when crating GET request, so this performance decisions and payload decisions have been made because of that.

Visibility Restrictions for Variant Configuration Products

VisibilityRestrictions (optional) is a list detailing the visibility limitations associated with a variant product. For this variant product, formula rules and simple rules will not be displayed and will appear as null.

Related Information
ProductsIntegration API Documentation
Yes
No