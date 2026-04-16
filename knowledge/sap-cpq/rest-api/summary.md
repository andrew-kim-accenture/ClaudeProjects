# SAP CPQ REST API — Endpoint Summary

**Spec:** `swagger/docs/v1` | **Paths:** 1458 | **Definitions:** 1797

## api/EventLog/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/EventLog/v1/EventLogs` | Gets the Event logs. |
| `GET` | `/api/EventLog/v1/EventLogs/{id}` | Get Event log by id. |
| `GET` | `/api/EventLog/v1/EventLogs/count` | Gets the number of records in Event log. |
| `GET` | `/api/EventLog/v1/EventLogs/timezone` | Gets server timezone. |

## api/Quotes/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/Quotes/v1/QuoteTabPermission/{quoteTabPermissionId}` | Gets quote tab permission by Identifier. |
| `PUT` | `/api/Quotes/v1/QuoteTabPermission/{quoteTabPermissionId}` | Update quote tab permission. |
| `DELETE` | `/api/Quotes/v1/QuoteTabPermission/{quoteTabPermissionId}` | Deletes the quote tab permission. |
| `GET` | `/api/Quotes/v1/QuoteTabPermission` | Gets all Quote tab permissions. |
| `POST` | `/api/Quotes/v1/QuoteTabPermission` | Create quote tab permission. |
| `POST` | `/api/Quotes/v1/QuoteTabPermission/bulk` | Bulk create or update quote tab permissions. |

## api/V1/QuoteAsset
| Method | Path | Summary |
|--------|------|---------|
| `POST` | `/api/V1/QuoteAsset/{quoteId}/AddAssets` | Add Assets to Quote Asset Section. |

## api/btpService/v1
| Method | Path | Summary |
|--------|------|---------|
| `POST` | `/api/btpService/v1/authInfo` |  |
| `GET` | `/api/btpService/v1/authInfo/{serviceType}` |  |
| `PUT` | `/api/btpService/v1/authInfo/{serviceType}` |  |

## api/businesspartner/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/businesspartner/v1/businesspartner/{id}` |  |
| `PUT` | `/api/businesspartner/v1/businesspartner/{id}` |  |
| `DELETE` | `/api/businesspartner/v1/businesspartner/{id}` |  |
| `GET` | `/api/businesspartner/v1/businesspartner` |  |
| `POST` | `/api/businesspartner/v1/businesspartner` |  |
| `GET` | `/api/businesspartner/v1/businesspartner/lookups/businesspartnertype` |  |
| `GET` | `/api/businesspartner/v1/businesspartner/systemId` |  |
| `GET` | `/api/businesspartner/v1/businesspartner/{businessPartnerId}/relationship` |  |
| `POST` | `/api/businesspartner/v1/businesspartner/{businessPartnerId}/relationship` |  |
| `DELETE` | `/api/businesspartner/v1/businesspartner/{businessPartnerId}/relationship` |  |
| `GET` | `/api/businesspartner/v1/businesspartner/{businessPartnerId}/salesArea` |  |
| `POST` | `/api/businesspartner/v1/businesspartner/{businessPartnerId}/salesArea` |  |
| `GET` | `/api/businesspartner/v1/businesspartner/{businessPartnerId}/salesArea/{id}` |  |
| `PUT` | `/api/businesspartner/v1/businesspartner/{businessPartnerId}/salesArea/{id}` |  |
| `DELETE` | `/api/businesspartner/v1/businesspartner/{businessPartnerId}/salesArea/{id}` |  |
| `PUT` | `/api/businesspartner/v1/businesspartner/{businessPartnerId}/relationship/default` |  |
| `GET` | `/api/businesspartner/v1/customfields` |  |
| `POST` | `/api/businesspartner/v1/customfields` |  |
| `GET` | `/api/businesspartner/v1/customfields/{id}` |  |
| `PUT` | `/api/businesspartner/v1/customfields/{id}` |  |
| `DELETE` | `/api/businesspartner/v1/customfields/{id}` |  |
| `GET` | `/api/businesspartner/v1/customfields/types` |  |
| `POST` | `/api/businesspartner/v1/customfields/translations` |  |
| `GET` | `/api/businesspartner/v1/permissions/{id}` |  |
| `PUT` | `/api/businesspartner/v1/permissions/{id}` |  |
| `DELETE` | `/api/businesspartner/v1/permissions/{id}` |  |
| `GET` | `/api/businesspartner/v1/permissions` |  |
| `POST` | `/api/businesspartner/v1/permissions` |  |
| `GET` | `/api/businesspartner/v1/relationshipscategory/{code}` |  |
| `PUT` | `/api/businesspartner/v1/relationshipscategory/{code}` |  |
| `DELETE` | `/api/businesspartner/v1/relationshipscategory/{code}` |  |
| `GET` | `/api/businesspartner/v1/relationshipscategory` |  |
| `POST` | `/api/businesspartner/v1/relationshipscategory` |  |
| `POST` | `/api/businesspartner/v1/relationshipscategory/businessPartnerFunction` |  |
| `GET` | `/api/businesspartner/v1/relationshipscategory/{code}/translation/{dictionaryId}` |  |
| `PUT` | `/api/businesspartner/v1/relationshipscategory/{code}/translation` |  |
| `GET` | `/api/businesspartner/v1/standardfields` |  |
| `GET` | `/api/businesspartner/v1/standardfields/{id}` |  |
| `PUT` | `/api/businesspartner/v1/standardfields/{id}` |  |
| `GET` | `/api/businesspartner/v1/partnerfunction/{id}` |  |
| `PUT` | `/api/businesspartner/v1/partnerfunction/{id}` |  |
| `GET` | `/api/businesspartner/v1/partnerfunction` |  |
| `POST` | `/api/businesspartner/v1/partnerfunction` |  |
| `DELETE` | `/api/businesspartner/v1/partnerfunction/{key}` |  |
| `POST` | `/api/businesspartner/v1/partnerfunction/translations` |  |

## api/cdm/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/cdm/v1/content` | Gets list of CDM Entities. |

## api/configuration/v1
| Method | Path | Summary |
|--------|------|---------|
| `POST` | `/api/configuration/v1/configurations` | Creates configuration for the product with the specified system ID and initializes the Configurator. |
| `GET` | `/api/configuration/v1/configurations/{configurationId}/display` | Gets the model of the active tab for the specified configuration. |
| `PATCH` | `/api/configuration/v1/configurations/{configurationId}/attributes/{standardAttributeCode}` | Changes the attribute value for the specified configuration. |
| `PATCH` | `/api/configuration/v1/configurations/{configurationId}/attributes/{standardAttributeCode}/attributeValues/{attributeValueId}` | Changes the attribute value quantity for the specified configuration. |
| `GET` | `/api/configuration/v1/configurations/{configurationId}` | Gets the configuration by the specified configuration ID. |
| `DELETE` | `/api/configuration/v1/configurations/{configurationId}` | Deletes the configuration with the specified configuration ID. |
| `PATCH` | `/api/configuration/v1/configurations/{configurationId}` | Updates the header level fields of the configuration with the specified configuration ID. |
| `POST` | `/api/configuration/v1/configurations/{configurationId}/clone` | Clones the configuration with the specified configuration ID. |
| `POST` | `/api/configuration/v1/configurations/configurationContext` | Creates or updates the configuration context for the specified owner ID. |
| `PATCH` | `/api/configuration/v1/configurations/configurationContext` | Partially updates the configuration context for the current session. |
| `GET` | `/api/configuration/v1/configurations/{configurationId}/configurationContext` | Gets the configuration context for the specified configuration. |
| `PATCH` | `/api/configuration/v1/configurations/{configurationId}/configurationContext` | Partially updates the configuration context for the specified configuration. |

## api/configuration/v2
| Method | Path | Summary |
|--------|------|---------|
| `POST` | `/api/configuration/v2/configurations` | Creates a new configuration. |
| `GET` | `/api/configuration/v2/configurations/{configurationId}` | Gets the configuration. |
| `DELETE` | `/api/configuration/v2/configurations/{configurationId}` | Deletes configuration. 
You can delete both permanent and temporary configurations using this route. However, it's not possible to delete configurations associated with quote items. |
| `PATCH` | `/api/configuration/v2/configurations/{configurationId}` | This route can be used to:
1. Add configuration context to the existing configuration, which can be useful if the user wants to modify configurations made through the UI.
2. Update the configuration context for existing configurations, which can assist in custom reconfiguration implementations.
3. Input or select attribute value for existing configurations. |
| `GET` | `/api/configuration/v2/configurations/{configurationId}/configurationContext` | Gets the configuration context for the specified configuration. |
| `DELETE` | `/api/configuration/v2/configurations/{configurationId}/rows/{rowId}` | Deletes container row with provided rowId. |
| `PATCH` | `/api/configuration/v2/configurations/{configurationId}/rows/{rowId}` | Change values of attributes on a specific row. |
| `POST` | `/api/configuration/v2/configurations/{configurationId}/copy` | Copies configuration with the given configuration id with the possibility to update the configuration context. 
In case configuration context is not provided, a more optimal copy action will be executed, where configuration will not be loaded into memory and rules will not be executed. |
| `PATCH` | `/api/configuration/v2/configurations/{configurationId}/rows/{rowId}/columns/{columnId}` | Change container column value. |
| `PATCH` | `/api/configuration/v2/configurations/{configurationId}/attributes/{standardAttributeCode}` | Change attribute value on root level. |
| `PATCH` | `/api/configuration/v2/configurations/{configurationId}/rows/{rowId}/attributes/{standardAttributeCode}` | Change attribute value on specifc row. |
| `POST` | `/api/configuration/v2/configurations/{configurationId}/attributes/{standardAttributeCode}/addRow` | Adds container row on the root configuration. |
| `POST` | `/api/configuration/v2/configurations/{configurationId}/rows/{rowId}/attributes/{standardAttributeCode}/addRow` | Adds container row on the child container. |
| `POST` | `/api/configuration/v2/configurations/{configurationId}/rows/{rowId}/copyRow` | Copies container row with provided rowId. |
| `PATCH` | `/api/configuration/v2/configurations/{configurationId}/attributes/{standardAttributeCode}/values/{attributeValueId}` | Changes the attribute value quantity for the specified configuration. |
| `PATCH` | `/api/configuration/v2/configurations/{configurationId}/row/{rowId}/attributes/{standardAttributeCode}/values/{attributeValueId}` | Changes the attribute value quantity within a child product with specified configuration Id. |

## api/credentialsStore/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/credentialsStore/v1/entries` | Gets credentials store entries. |
| `POST` | `/api/credentialsStore/v1/entries` | Creates new credentials store entry. |
| `GET` | `/api/credentialsStore/v1/entries/{id}` | Gets credentials store entry the provided ID. |
| `PUT` | `/api/credentialsStore/v1/entries/{id}` | Updates credentials store entry with the provided ID. |
| `DELETE` | `/api/credentialsStore/v1/entries/{id}` | Deletes credentials store entry with the provided ID. |
| `PATCH` | `/api/credentialsStore/v1/entries/{id}/active/{active}` | Updates active flag of credentials store entry with the provided ID. |

## api/diagnostics/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/diagnostics/v1/knowledgebases/failedData` | Get the list of failed knowledge base synchronization data. |
| `DELETE` | `/api/diagnostics/v1/knowledgebases/failedData` | Delete all failed knowledge base data. |
| `DELETE` | `/api/diagnostics/v1/knowledgebases/failedData/{id}` | Delete failed knowledge base data by ID. |
| `GET` | `/api/diagnostics/v1/knowledgebases/statistics` | Get the list of knowledge base statistics. |
| `GET` | `/api/diagnostics/v1/knowledgebases/{id}` | Get the knowledge base payload by ID. |
| `GET` | `/api/diagnostics/v1/knowledgebases/{id}/translations` | Get the knowledge base translation payload by ID. |

## api/eventLog/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/eventLog/v1/vcIntegrationEventLogs` | Gets the list of SAP Variant Configuration and Pricing Event Logs. |

## api/externalConfiguration/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/externalConfiguration/v1/events/settings` | Get configuration settings for external configuration integration. |
| `PUT` | `/api/externalConfiguration/v1/events/settings` | Update configuration setting for external configuration integration. |
| `GET` | `/api/externalConfiguration/v1/events` | Get list of external configuration events with attached scripts. |
| `PUT` | `/api/externalConfiguration/v1/events/attach` | Attach global script to external configuration event. |
| `PUT` | `/api/externalConfiguration/v1/events/detach` | Detach global script from external configuration event. |

## api/general/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/general/v1/countries` | Gets all Countries. |
| `POST` | `/api/general/v1/countries` | Creates new Country. |
| `GET` | `/api/general/v1/countries/{countryId}` | Gets the Country by its identifier. |
| `PUT` | `/api/general/v1/countries/{countryId}` | Updates existing Country. |
| `DELETE` | `/api/general/v1/countries/{countryId}` | Deletes existing Country. |
| `PUT` | `/api/general/v1/countries/{countryId}/translations` | Updates translations for specified Country. |
| `POST` | `/api/general/v1/countries/bulk` | Inserts or Updates Countries in bulk. |
| `POST` | `/api/general/v1/countries/bulk/translations` | Inserts or Updates Translation for specified Countries in bulk. |
| `GET` | `/api/general/v1/countries/{countryId}/translations/{dictionaryId}` | Gets Country translation data by country's and dictionary’s identifiers. |
| `GET` | `/api/general/v1/emailSettings` | Gets collection of Email settings. |
| `GET` | `/api/general/v1/emailSettings/{id}` | Gets Email settings with provided id. |
| `PUT` | `/api/general/v1/emailSettings/{id}` | Updates Email settings with provided id. |
| `POST` | `/api/general/v1/emailSettings/test` | Tests provided Email Settings by sending test email notification to current user's email. |
| `GET` | `/api/general/v1/states` | Gets all States. |
| `POST` | `/api/general/v1/states` | Creates new State. |
| `GET` | `/api/general/v1/states/{stateId}` | Gets the State by its identifier. |
| `PUT` | `/api/general/v1/states/{stateId}` | Updates an existing State. |
| `DELETE` | `/api/general/v1/states/{stateId}` | Deletes an existing State. |
| `POST` | `/api/general/v1/states/bulk` | Inserts or Updates States in bulk. |
| `GET` | `/api/general/v1/territories` | Gets all territories. |
| `POST` | `/api/general/v1/territories` | Creates new territory. |
| `GET` | `/api/general/v1/territories/{territoryId}` | Gets territory by its identifier. |
| `PUT` | `/api/general/v1/territories/{territoryId}` | Updates existing territory. |
| `DELETE` | `/api/general/v1/territories/{territoryId}` | Deletes existing territory. |
| `POST` | `/api/general/v1/territories/bulk` | Inserts or updates territories as bulk. |
| `GET` | `/api/general/v1/territories/systemId` | Gets a unique System ID based on the provided territory name. |

## api/integrations/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/integrations/v1/cloudForCustomer` | Get cloud for customer general settings. |
| `PUT` | `/api/integrations/v1/cloudForCustomer` | Save cloud for customer general settings. |
| `GET` | `/api/integrations/v1/cloudForCustomer/settings` | Get cloud for customer settings. |
| `PUT` | `/api/integrations/v1/cloudForCustomer/settings` | Save cloud for customer settings. |
| `GET` | `/api/integrations/v1/cloudIntegration` | Get cloud integration general settings. |
| `PUT` | `/api/integrations/v1/cloudIntegration` | Save cloud integration general settings. |
| `GET` | `/api/integrations/v1/cloudIntegration/settings` | Get cloud integration settings. |
| `PUT` | `/api/integrations/v1/cloudIntegration/settings` | Save cloud integration settings. |
| `GET` | `/api/integrations/v1/cloudIntegration/settings/transactionIdLabel/translations/{dictionaryId}` | Gets transactionIdLabel translation data by dictionary’s identifiers. |
| `PUT` | `/api/integrations/v1/cloudIntegration/settings/transactionIdLabel/translations` | Updates translations for specified transactionIdLabel. |
| `GET` | `/api/integrations/v1/commerceCloud` | Get commerce cloud general settings. |
| `PUT` | `/api/integrations/v1/commerceCloud` | Save commerce cloud general settings. |
| `GET` | `/api/integrations/v1/commerceCloud/settings` | Get commerce cloud settings. |
| `PUT` | `/api/integrations/v1/commerceCloud/settings` | Save commerce cloud settings. |
| `GET` | `/api/integrations/v1/commerceCloud/notifications` | Get possible notifications. |

## api/pricing/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/pricing/v1/countryTaxes/{id}` | Gets country/region sales tax by its identifier. |
| `PUT` | `/api/pricing/v1/countryTaxes/{id}` | Updates country/region sales tax by its identifier. |
| `DELETE` | `/api/pricing/v1/countryTaxes/{id}` | Deletes existing country/region sales tax. |
| `GET` | `/api/pricing/v1/countryTaxes` | Gets all country/region sales taxes. |
| `POST` | `/api/pricing/v1/countryTaxes` | Creates new country/region sales tax. |
| `POST` | `/api/pricing/v1/countryTaxes/bulk` | Creates or updates country/region sales taxes as bulk. |
| `GET` | `/api/pricing/v1/countryTaxes/formula` | Gets the country/region sales tax formula. |
| `POST` | `/api/pricing/v1/countryTaxes/formula` | Add a value to the country tax formula. |
| `GET` | `/api/pricing/v1/currencies` | Gets all currencies. |
| `POST` | `/api/pricing/v1/currencies` | Creates new currency item. |
| `GET` | `/api/pricing/v1/currencies/{currencyCode}` | Gets the currency by currency code. |
| `PUT` | `/api/pricing/v1/currencies/{currencyCode}` | Updates existing currency. |
| `DELETE` | `/api/pricing/v1/currencies/{currencyCode}` | Deletes the currency by currency code. |
| `POST` | `/api/pricing/v1/currencies/bulk` | Bulk creating/updating of currencies. |
| `GET` | `/api/pricing/v1/multipliers/discount` | Gets multipliers discount |
| `POST` | `/api/pricing/v1/multipliers/discount` | Creates a new discount |
| `GET` | `/api/pricing/v1/multipliers/discount/{id}` | Get Discount by Id |
| `PUT` | `/api/pricing/v1/multipliers/discount/{id}` | Creates a new discount |
| `DELETE` | `/api/pricing/v1/multipliers/discount/{id}` | Deletes an discount |
| `GET` | `/api/pricing/v1/marginhealth` | Get all margin health indicators. |
| `POST` | `/api/pricing/v1/marginhealth` | Creates new margin health indicator. |
| `GET` | `/api/pricing/v1/marginhealth/{id}` | Get the margin health indicator by identifier. |
| `PUT` | `/api/pricing/v1/marginhealth/{id}` | Update margin health indicators. |
| `DELETE` | `/api/pricing/v1/marginhealth/{id}` | Deletes existing margin health indicator. |
| `POST` | `/api/pricing/v1/marginhealth/bulk` | Bulk create/update margin health indicators. |
| `GET` | `/api/pricing/v1/marginhealth/visibility` | Get margin health visibility representation |
| `PUT` | `/api/pricing/v1/marginhealth/visibility` | Updates margin health visibility representation. |
| `PUT` | `/api/pricing/v1/marginhealth/visibility/restoreimage/{pictureType}` | Restore margin health visibility picture by picture type |
| `GET` | `/api/pricing/v1/markets` | Gets all markets. |
| `POST` | `/api/pricing/v1/markets` | Creates a new market. |
| `GET` | `/api/pricing/v1/markets/{id}` | Gets the market by Id. |
| `DELETE` | `/api/pricing/v1/markets/{id}` | Deletes existing market by Id. |
| `PUT` | `/api/pricing/v1/markets/{marketId}` | Updates the specified market. |
| `POST` | `/api/pricing/v1/markets/bulk` | Creates new or updates existing market from collection of markets. |
| `GET` | `/api/pricing/v1/markets/systemId` | Gets a unique System ID based on the provided market name. |
| `GET` | `/api/pricing/v1/marketsVisibility` | Gets all markets visibility. |
| `POST` | `/api/pricing/v1/marketsVisibility` | Creates a new market visibility. |
| `GET` | `/api/pricing/v1/marketsVisibility/{id}` | Gets the market visibility by Id. |
| `PUT` | `/api/pricing/v1/marketsVisibility/{id}` | Updates an existing market visibility. |
| `DELETE` | `/api/pricing/v1/marketsVisibility/{id}` | Deletes the specified market visibility by condition Id. |
| `POST` | `/api/pricing/v1/marketsVisibility/bulk` | Creates new or updates existing market visibility items from collection. |
| `GET` | `/api/pricing/v1/promotions` | Get all promotions. |
| `POST` | `/api/pricing/v1/promotions` | Add promotion. |
| `GET` | `/api/pricing/v1/promotions/{id}` | Get promotion by its ID. |
| `PUT` | `/api/pricing/v1/promotions/{id}` | Update Promotion |
| `DELETE` | `/api/pricing/v1/promotions/{id}` | Delete promotion. |
| `GET` | `/api/pricing/v1/promotions/systemId` | Gets a unique System ID based on the provided promotion name. |
| `GET` | `/api/pricing/v1/promotions/CheckPromotionDetailUsage/{promotionDetailId}` | Is promotion detail in use. |
| `GET` | `/api/pricing/v1/promotions/{promotionId}/translations/{dictionaryId}` | Gets Promotion translation data by promotion's and dictionary’s identifiers. |
| `PUT` | `/api/pricing/v1/promotions/{promotionId}/translations` | Updates translations for specified Promotion. |
| `GET` | `/api/pricing/v1/roundingSetup` | Get all rounding setups. |
| `DELETE` | `/api/pricing/v1/roundingSetup` | Delete rounding definition. |
| `GET` | `/api/pricing/v1/roundingSetup/columnNames` | Get all columns for Rounding setup. |
| `GET` | `/api/pricing/v1/roundingSetup/currencies` | Get Rounding definition currency list. |
| `POST` | `/api/pricing/v1/roundingSetup/save` | Save rounding setup data. |
| `GET` | `/api/pricing/v1/roundingSetup/settings` | Get rounding application parameters |
| `PUT` | `/api/pricing/v1/roundingSetup/settings` | Save rounding application parameters |
| `GET` | `/api/pricing/v1/stateTaxes/{id}` | Gets the state sales tax by its identifier. |
| `PUT` | `/api/pricing/v1/stateTaxes/{id}` | Updates the specified state sales tax. |
| `DELETE` | `/api/pricing/v1/stateTaxes/{id}` | Deletes existing state sales tax. |
| `GET` | `/api/pricing/v1/stateTaxes` | Gets all state taxes. |
| `POST` | `/api/pricing/v1/stateTaxes` | Creates new state sales tax. |
| `GET` | `/api/pricing/v1/stateTaxes/formula` | Gets the state sales tax formula. |
| `POST` | `/api/pricing/v1/stateTaxes/formula` | Adds a value to the state tax formula. |
| `POST` | `/api/pricing/v1/stateTaxes/bulk` | Creates or updates state sales taxes in bulk. |
| `GET` | `/api/pricing/v1/itemUsageBasedPricingTables` | Get all usage based pricing tables related to quote items.
For each table, we will get its name, description, tableType as well as its cross catalog mapping data.

Primarily intended to be used with a filter, such as ?$filter=quoteId eq '1' in order to retrieve all usage based tables on one specific quote.
If we want all tables related to an item, we could use ?$filter=quoteItemId eq '1'. |
| `GET` | `/api/pricing/v1/itemUsageBasedPricingTables/{tableSystemId}` | Gets usage based pricing table content with specified table system Id.
In case of range tables, the data will come in form of rows and ranges, both containing input and output columns respectively.
If we are getting mapping table content, then all data will be returned in the row (both input and output columns).

There is also a possibility to expand table definition (expand=definition) as well as table columns (expand=columns). |
| `GET` | `/api/pricing/v1/itemUsageBasedPricingTables/{tableSystemId}/rows/{rowId}` | Gets usage based pricing table row. |
| `GET` | `/api/pricing/v1/itemUsageBasedPricingTables/{quoteItemId}/tables/{tableSystemId}/download` | Export table to a file. |
| `POST` | `/api/pricing/v1/itemUsageBasedPricingTables/{quoteItemId}/tables/{tableSystemId}/upload` | Upload the usage based table and associate it with appropriate quote item.
Route can be used to upload mapping and range pricing tables.
Route can upload files in the .xlsx format.
There is limitation on the file size which is 20MB.
File should contain only one sheet, which will be used for import. |
| `POST` | `/api/pricing/v1/itemUsageBasedPricingTables/{quoteItemId}/syncRedefineTableContentForAsset` | Insert redefined usages based table content for a table system id and update table sync status. |
| `POST` | `/api/pricing/v1/itemUsageBasedPricingTables/{quoteItemId}/resyncFailedAssetUsageBasedTable` | Resynchronizes the asset table for the specified quote item and default table system IDs. |
| `POST` | `/api/pricing/v1/productUsagePricingTables/mappings` | Insert cross catalog mapping verions related to its products, along with their charge plans and tables. |
| `POST` | `/api/pricing/v1/productUsagePricingTables/mappingTableDefinition` | Creates Usage Pricing Mapping table definition. |
| `POST` | `/api/pricing/v1/productUsagePricingTables/tableDefinitions` | Creates Usage Pricing Mapping and Range table definitions in bulk. |
| `GET` | `/api/pricing/v1/productUsagePricingTables/mappingTableDefinition/{id}` | Gets the Usage Pricing Mapping table definition by ID. |
| `POST` | `/api/pricing/v1/productUsagePricingTables/rangeTableDefinition` | Creates Usage Pricing Range table definition. |
| `GET` | `/api/pricing/v1/productUsagePricingTables/rangeTableDefinition/{id}` | Gets the Usage Pricing Range table definition by ID. |
| `POST` | `/api/pricing/v1/productUsagePricingTables/syncTableContent` | Insert table content. |
| `PUT` | `/api/pricing/v1/productUsagePricingTables/updateTableContent` | Update table content. |
| `POST` | `/api/pricing/v1/productUsagePricingTables/deactivate` | Mark specified tables as irrelevant for synchronization. |
| `POST` | `/api/pricing/v1/productUsagePricingTables/reusedTables` | Add reused tables for specified defintion Id. |
| `GET` | `/api/pricing/v1/productUsagePricingTables/{tableDefinitionId}` | Get list of reused tables. |

## api/pricingProcedure/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/pricingProcedure/v1/erpProcedures` | Get pricing procedures from back-end system. |
| `GET` | `/api/pricingProcedure/v1/erpProcedures/{pricingProcedureId}/pricingConditions` | Get a list of possible pricing conditions for a pricing procedure from back-end system. |
| `GET` | `/api/pricingProcedure/v1/procedures/settings` | Gets Back pricing procedudes settings. |
| `PUT` | `/api/pricingProcedure/v1/procedures/settings` | Saves the Back Office pricing procedudes settings. |
| `GET` | `/api/pricingProcedure/v1/procedures` | Gets pricing procedures header details. |
| `PUT` | `/api/pricingProcedure/v1/procedures` | Updates the header details of pricing procedures. |
| `POST` | `/api/pricingProcedure/v1/procedures` | Creates pricing procedures with header details. |
| `GET` | `/api/pricingProcedure/v1/procedures/{pricingProcedureId}` | Get the header details of the pricing procedure with the specified ID. |
| `DELETE` | `/api/pricingProcedure/v1/procedures/{pricingProcedureId}` | Deletes the pricing procedure with the specified ID. |
| `GET` | `/api/pricingProcedure/v1/procedures/quoteFields` | Get quote item fileds for mapping. |
| `GET` | `/api/pricingProcedure/v1/procedures/{pricingProcedureId}/determinations` | Gets the determinations of the pricing procedure with the specified ID. |
| `PUT` | `/api/pricingProcedure/v1/procedures/{pricingProcedureId}/determinations` | Updates the determinations of the pricing procedure with the specified ID. |
| `GET` | `/api/pricingProcedure/v1/procedures/{pricingProcedureId}/determinations/all` | Gets all pricing procedure determinations that are stored in SAP CPQ. |
| `GET` | `/api/pricingProcedure/v1/procedures/possibleEventEntities` | Get pricing procedures events lookup. |
| `GET` | `/api/pricingProcedure/v1/procedures/pricingProceduresEvents` | Get pricing procedures events. |
| `POST` | `/api/pricingProcedure/v1/procedures/pricingProceduresEvents` | Put pricing procedures events. |
| `PUT` | `/api/pricingProcedure/v1/procedures/{pricingProcedureId}/resync` | Execute resync of pricing procedure with the specified ID. |
| `GET` | `/api/pricingProcedure/v1/quoteConditionMappings/procedures/{pricingProcedureId}/conditionMappings` | Get a list of mapped pricing conditions for a pricing procedure from back-end system. |
| `PUT` | `/api/pricingProcedure/v1/quoteConditionMappings/procedures/{pricingProcedureId}/conditionMappings` | Save a list of mapped pricing conditions for a pricing procedure from back-end system. |
| `GET` | `/api/pricingProcedure/v1/quoteToOrderConditionMappings/procedures/{pricingProcedureId}/conditionMappings` | Get the pricing procedure conditions. |
| `PUT` | `/api/pricingProcedure/v1/quoteToOrderConditionMappings/procedures/{pricingProcedureId}/conditionMappings` | Set pricing procedure conditions. |

## api/product/v1
| Method | Path | Summary |
|--------|------|---------|
| `POST` | `/api/product/v1/knowledgebases/sync` | Triggers knowledge base synchronization for the provided Sync from date or specific knowledge base IDs. |
| `PUT` | `/api/product/v1/knowledgebases/sync/cancel` | Cancels current knowledge base synchronization. |
| `GET` | `/api/product/v1/knowledgebases/unexistingKBs` | Get KBs that are deleted from CPS, but still exist in CPQ. |
| `GET` | `/api/product/v1/knowledgebases/unexistingKBs/usageInfo/{kbId}` | Get usage information for product versions with provided Kb Id.
(E.g. in which quotes, containers, configurations, deployment packages are these product versions used etc.) |
| `POST` | `/api/product/v1/knowledgebases/unexistingKBs/delete` | Tries to delete all KBs from the list, by deleting all KB product versions. |
| `GET` | `/api/product/v1/Products` | Retrieves a list of products that match the specified query conditions. |
| `POST` | `/api/product/v1/Products` | Inserts a new product or creates a new version of an existing product. |
| `GET` | `/api/product/v1/Products/{id}` | Retrieves a product by its ID. |
| `PUT` | `/api/product/v1/Products/{id}` | Updates an existing product with the provided ID. |
| `DELETE` | `/api/product/v1/Products/{id}` | Deletes the product. |
| `PATCH` | `/api/product/v1/Products/{id}` | Partially updates a product or any of its sub-objects. |
| `GET` | `/api/product/v1/Products/$bulk` | Retrieves a list of bulk operation statuses based on query conditions. |
| `PUT` | `/api/product/v1/Products/$bulk` | Updates products in bulk asynchronously. |
| `POST` | `/api/product/v1/Products/$bulk` | Inserts products in bulk asynchronously. |
| `PATCH` | `/api/product/v1/Products/$bulk` | Deletes products with provided ids in bulk asynchronously. |
| `PUT` | `/api/product/v1/Products/$bulk/upsert` | Upserts products in bulk asynchronously. System id is used to determine whether the active version of existing product will be updated or new product will be inserted. |
| `GET` | `/api/product/v1/Products/$bulk/{id}` | Gets bulk operation statuses for request with provided id. |

## api/products/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/products/v1/attributes/{id}` | Gets the attribute with the provided ID |
| `PUT` | `/api/products/v1/attributes/{id}` | Updates an attribute with the provided ID |
| `DELETE` | `/api/products/v1/attributes/{id}` | Deletes an attribute |
| `GET` | `/api/products/v1/attributes` | Gets attributes |
| `POST` | `/api/products/v1/attributes` | Creates a new attribute |
| `GET` | `/api/products/v1/attributes/measurements` | Gets measurements |
| `GET` | `/api/products/v1/attributes/types` | Get all attribute types |
| `GET` | `/api/products/v1/attributes/systemId` | Get a system ID of the attribute |
| `GET` | `/api/products/v1/attributes/value/systemId` | Gets the system ID of the attribute value |
| `GET` | `/api/products/v1/attributes/{id}/values/maxRank` | Gets the maximum rank of attribute values for the provided attribute ID |
| `GET` | `/api/products/v1/attributes/{id}/values` | Gets the attribute values for the attribute with the provided ID |
| `GET` | `/api/products/v1/attributes/{id}/containerAttributeValues` | Gets the container attribute values for the attribute with the provided ID |
| `GET` | `/api/products/v1/attributes/values/billingPeriods` | Gets billing periods |
| `GET` | `/api/products/v1/attributes/values/units` | Gets attribute value units |
| `GET` | `/api/products/v1/attributes/{id}/values/newSystemIds` | Gets new unique system IDs for all attribute values with the provided ID |
| `GET` | `/api/products/v1/attributes/{id}/translation/{dictionaryId}` | Gets the translated attribute definition with values |
| `GET` | `/api/products/v1/attributes/{attributeId}/translation` | Gets all attribute translations for each dictionary for values, and for conatiners |
| `POST` | `/api/products/v1/attributes/{attributeId}/translation` | Create new attribute translations if the translations don't exist. If translations exist, update them. Create new attribute translations for copy attribute |
| `GET` | `/api/products/v1/attributes/{attributeId}/exists` | Check if attribute with duplicated name already exists |
| `GET` | `/api/products/v1/attributes/container/totalTypes` | Gets container column total types |
| `GET` | `/api/products/v1/attributes/container/dataTypes` | Gets container column data types |
| `GET` | `/api/products/v1/attributes/container/column/displayTypes` | Gets container column display types |
| `GET` | `/api/products/v1/attributes/container/columnTypes` | Gets container column types |
| `GET` | `/api/products/v1/attributes/container/column/displayTypes/attribute/{id}` | Gets container column display types for the attribute |
| `GET` | `/api/products/v1/attributes/autocomplete/customtable/{id}` | Gets the custom table columns |
| `GET` | `/api/products/v1/attributes/autocomplete/customtable/{id}/name` | Gets the custom table name |
| `GET` | `/api/products/v1/attributes/autocomplete/quotetable/{id}` | Gets the quote table columns |
| `GET` | `/api/products/v1/attributes/autocomplete/quotetable/{id}/name` | Gets the quote table name |
| `GET` | `/api/products/v1/attributes/{id}/values/{valueId}/products` | Returns the list of products in which this attribute value is used |
| `GET` | `/api/products/v1/attributes/{id}/usage` | Gets list of objects in which this attribute is used. |
| `GET` | `/api/products/v1/categories/{id}` | Get category by the category ID. |
| `PUT` | `/api/products/v1/categories/{id}` | Update a category. |
| `DELETE` | `/api/products/v1/categories/{id}` | Remove category. |
| `GET` | `/api/products/v1/categories` | Get all categories. |
| `POST` | `/api/products/v1/categories` | Add category. |
| `PUT` | `/api/products/v1/categories/ranks` | Saves categories ranks. |
| `PUT` | `/api/products/v1/categories/{id}/permission` | Replaces permissions for category. |
| `POST` | `/api/products/v1/categories/{id}/permission` | Add permission for category. |
| `DELETE` | `/api/products/v1/categories/{id}/permission/{permissionId}` | Delete permission for category. |
| `GET` | `/api/products/v1/categories/systemId` | Gets a unique System ID based on the provided category name. |
| `GET` | `/api/products/v1/categories/{id}/translation/{dictionaryId}` | Gets the category translations. |
| `PUT` | `/api/products/v1/categories/{id}/translation` | Replaces translations for specified category. |
| `GET` | `/api/products/v1/guidedSelling` | Gets Guided Sellings |
| `POST` | `/api/products/v1/guidedSelling` | Adds new guided selling |
| `GET` | `/api/products/v1/guidedSelling/{id}` | Gets the Guided Selling with the provided ID |
| `PUT` | `/api/products/v1/guidedSelling/{id}` | Updates the existing guided selling |
| `DELETE` | `/api/products/v1/guidedSelling/{id}` | Deleted Guided Selling |
| `GET` | `/api/products/v1/guidedSelling/{guidedSellingId}/attributes/available` | Gets available guided selling attributes for provided guided selling.
If Guided selling id is 0 it will return all available attributes. |
| `GET` | `/api/products/v1/guidedSelling/attributes/displayAsTypes` | Gets all attribute display as types |
| `GET` | `/api/products/v1/guidedSelling/attributes/customControlTypes` | Gets all attribute custom control types |
| `GET` | `/api/products/v1/guidedSelling/attributes/{definitionId}/allowedDisplayAsTypes` | Gets allowed attribute display as types for provided attribute defintiion |
| `GET` | `/api/products/v1/guidedSelling/{guidedSellingId}/attributes/{definitionId}/usedInRules` | Checks whether attribute with provided definition id is used in rules on guided selling with provided id. |
| `GET` | `/api/products/v1/guidedSelling/{guidedSellingId}/attributes/values/{attributeValueIdsCsv}/usedInRules` | Checks whether guided selling attribute values with provided ids are used in rules on guided selling with provided id. |
| `GET` | `/api/products/v1/tabs` | Gets all Product Tabs. |
| `POST` | `/api/products/v1/tabs` | Creates new Product Tab. |
| `GET` | `/api/products/v1/tabs/{id}` | Gets the Product Tab by Id. |
| `PUT` | `/api/products/v1/tabs/{id}` | Updates the specified Product Tab. |
| `DELETE` | `/api/products/v1/tabs/{id}` | Deletes existing Product Tab by Identifier. |
| `PUT` | `/api/products/v1/tabs/{tabId}/translations` | Updates translations for specified Product Tab. |
| `POST` | `/api/products/v1/tabs/bulk` | Bulk creating/updating of Product Tabs. |
| `GET` | `/api/products/v1/tabs/{tabId}/translations/{dictionaryId}` | Get product tab translation details by identifier. |
| `POST` | `/api/products/v1/tabs/bulk/translations` | Inserts or updates product tab translation details in bulk. |

## api/providers/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/providers/v1/cxai/general` | Gets CX AI general settings. |
| `PUT` | `/api/providers/v1/cxai/general` | Save CX AI general settings. |
| `GET` | `/api/providers/v1/cxai` | Gets the provider settings for CX AI integration. |
| `PUT` | `/api/providers/v1/cxai` | Sets CX AI provider settings. |
| `GET` | `/api/providers/v1/cxai/train/status/{scenarioId}` | Gets the model training status for a specific scenario. |
| `GET` | `/api/providers/v1/cxai/train/status` | Gets the model training status for all scenarios. |
| `GET` | `/api/providers/v1/samlProfiles` | Retrieves all SAML profiles. |
| `POST` | `/api/providers/v1/samlProfiles` | Creates a SAML Profile. |
| `GET` | `/api/providers/v1/samlProfiles/{id}` | Retrieves an SAML profile with a specific ID. |
| `PUT` | `/api/providers/v1/samlProfiles/{id}` | Updates a SAML Profile. |
| `DELETE` | `/api/providers/v1/samlProfiles/{id}` | Deletes SAML Profile. |
| `PATCH` | `/api/providers/v1/samlProfiles/{id}` | Updates specific fields in SAML Profile. |
| `GET` | `/api/providers/v1/samlProfiles/notifier` | Gets the SAML profiles from Notifier MS. |
| `GET` | `/api/providers/v1/variantConfigurationAndPricing` | Get variant configuration and pricing general settings. |
| `PUT` | `/api/providers/v1/variantConfigurationAndPricing` | Update variant configuration and pricing general settings. |
| `GET` | `/api/providers/v1/variantConfigurationAndPricing/settings` | Get variant configuration and pricing settings. |
| `PUT` | `/api/providers/v1/variantConfigurationAndPricing/settings` | Save variant configuration and pricing settings. |
| `PUT` | `/api/providers/v1/variantConfigurationAndPricing/settings/authentication/test` | Test authentication settings for variant configuration and pricing service.
In case the Configuration Client Secret and the Pricing Client Secret aren't sent, they will be taken from the database. |

## api/providers/v2
| Method | Path | Summary |
|--------|------|---------|
| `PUT` | `/api/providers/v2/brim/{isConnected}` | Save BRIM Provider Connected Parameter. |
| `GET` | `/api/providers/v2/brim` | Get BRIM Provider Connected Parameter. |
| `GET` | `/api/providers/v2/brim/settings` | Get BRIM Provider settings. |
| `PUT` | `/api/providers/v2/brim/settings` | Save BRIM Provider Settings. |
| `GET` | `/api/providers/v2/brim/partnerFunctions` | Gets the list of partner functions. |
| `GET` | `/api/providers/v2/brim/usagePricingTableIds` | Gets the list of usage pricing table Ids. |
| `POST` | `/api/providers/v2/brim/synchronizeTables` | Synchronizes tables by table id. |
| `GET` | `/api/providers/v2/brim/cancellation` | Gets all cancellation mappings. |
| `POST` | `/api/providers/v2/brim/cancellation` | Saves cancellation mapping. |
| `GET` | `/api/providers/v2/brim/cancellation/{id}` | Gets cancellation mapping by Id. |
| `DELETE` | `/api/providers/v2/brim/cancellation/{id}` | Deletes cancellation mapping. |
| `POST` | `/api/providers/v2/brim/translations` | Save cancellation mapping translations. |

## api/quote/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/quote/v1/changeProcesses` | Gets all Change Processes in CPQ |
| `GET` | `/api/quote/v1/changeProcesses/groups` | Gets all Change Process Groups in CPQ |
| `POST` | `/api/quote/v1/changeProcesses/groups` | Updates change process group additional settings and CPQ name. |
| `GET` | `/api/quote/v1/changeProcesses/external` | Get Change Processes from external system which can be newly added to the CPQ |
| `PUT` | `/api/quote/v1/changeProcesses/{id}` | Updates Change Process data related to CPQ |
| `POST` | `/api/quote/v1/changeProcesses/{id}` | Adds new Change Process from external system to CPQ |
| `DELETE` | `/api/quote/v1/changeProcesses/{id}` | Deletes Change Process from CPQ |
| `POST` | `/api/quote/v1/changeProcesses/resync` | Resync Change Process Groups membership from external system |
| `GET` | `/api/quote/v1/changeProcesses/groups/additionalsetting` | Get all change process group additional settings. |
| `GET` | `/api/quote/v1/changeProcesses/groups/{groupId}/additionalsetting` | Get change process group additional settings. |
| `PUT` | `/api/quote/v1/changeProcesses/groups/{groupId}/additionalsetting` | Save change process group additional settings. |
| `GET` | `/api/quote/v1/documentTemplates` | Gets document templates. |
| `POST` | `/api/quote/v1/documentTemplates` | Creates document template. |
| `GET` | `/api/quote/v1/documentTemplates/{id}` | Gets the template using its identifier. |
| `PUT` | `/api/quote/v1/documentTemplates/{id}` | Update a document template. |
| `DELETE` | `/api/quote/v1/documentTemplates/{id}` | Delete document template. |
| `GET` | `/api/quote/v1/documentTemplates/{templateId}/preview/{quoteNumber}/{fileName}` | Preview the template with the provided revision file on the quote |
| `PATCH` | `/api/quote/v1/documentTemplates/ranks` | Updates ranks for provided templates. |
| `PUT` | `/api/quote/v1/documentTemplates/generalInfo` | Updates application parameters for document templates. |
| `GET` | `/api/quote/v1/documentTemplates/validateRevision` | Validates file name and returns error message if there is any. |
| `GET` | `/api/quote/v1/documentTemplates/{id}/activeTemplateFile` | Gets specified active template file. In case of multisection template, .zip file will be created with all active section files. |
| `GET` | `/api/quote/v1/documentTemplates/{id}/revisions/{revisionId}/revisionFile` | Gets specified revision template file |
| `PUT` | `/api/quote/v1/documentTemplates/{templateId}/translations` | Updates translations for specified document template. |
| `GET` | `/api/quote/v1/documentTemplates/{templateId}/translations/{dictionaryId}` | Gets Document Template translation data by document templates's and dictionary’s identifiers. |
| `GET` | `/api/quote/v1/documentTemplates/documents/{contentDocumentId}/preview` | Preview content document |
| `GET` | `/api/quote/v1/documentTemplates/ContentDocuments/ContentFile/lookup` | Gets the Manage Content Document lookups |
| `GET` | `/api/quote/v1/documentTemplates/ContentDocuments` | Gets content documents. |
| `POST` | `/api/quote/v1/documentTemplates/ContentDocuments` | Creates new content document. |
| `GET` | `/api/quote/v1/documentTemplates/ContentDocuments/{id}` | Gets content document by provided id. |
| `PUT` | `/api/quote/v1/documentTemplates/ContentDocuments/{id}` | Updates content document with provided id. |
| `DELETE` | `/api/quote/v1/documentTemplates/ContentDocuments/{id}` | Deletes content document by provided id. |
| `GET` | `/api/quote/v1/documentTemplates/ContentDocuments/{contentDocumentId}/contentDocumentFile` | Gets specified Content Document File by provided content document id. |
| `GET` | `/api/quote/v1/quoteCustomField` | Get all quote custom fields. |
| `POST` | `/api/quote/v1/quoteCustomField` | Add quote custom field. |
| `GET` | `/api/quote/v1/quoteCustomField/{quoteCustomFieldId}` | Get Quote Custom Field by Id. |
| `PUT` | `/api/quote/v1/quoteCustomField/{quoteCustomFieldId}` | Update a quote custom field. |
| `DELETE` | `/api/quote/v1/quoteCustomField/{quoteCustomFieldId}` | Delete Quote Custom Field by Id. |
| `GET` | `/api/quote/v1/quoteCustomField/{quoteCustomFieldId}/accessLevels` | Get all access levels for quote custom fields. |
| `POST` | `/api/quote/v1/quoteCustomField/{quoteCustomFieldId}/accessLevels` | Upserts quote custom field access levels. |
| `GET` | `/api/quote/v1/quoteCustomField/{quoteCustomFieldId}/translations/{dictionaryId}` | Get quote custom field translation details by identifier. |
| `PUT` | `/api/quote/v1/quoteCustomField/{quoteCustomFieldId}/translations` | Creates new or updates translations for the name of the specified quote custom field. |
| `PUT` | `/api/quote/v1/quoteCustomField/{quoteCustomFieldId}/labelAndUserTypeTranslations` | Updates the label and user type translations for a specific quote custom field. |
| `GET` | `/api/quote/v1/quoteCustomField/userTypeLabels/{quoteCustomFieldId}` | Retrieves user type labels associated with a specific quote custom field identifier. |
| `GET` | `/api/quote/v1/quoteCustomField/userTypeLabelsPopulated/{quoteCustomFieldId}/{dictionaryId}` | Retrieves user type labels associated with a specific quote custom field identifier. |
| `GET` | `/api/quote/v1/quoteCustomField/permissionsPriority` | Get quote 2custom field permissions type priority. |
| `PUT` | `/api/quote/v1/quoteCustomField/permissionsPriority` | Update quote custom field permissions type priority. |
| `GET` | `/api/quote/v1/quoteCustomField/permissionGroupsByTypes/{permissionTypeId}` | Retrieves permission groups by permission type ID. |
| `GET` | `/api/quote/v1/quoteFields` | Get all quote fields. |
| `GET` | `/api/quote/v1/quoteFields/{id}` | Get quote field by the quote field ID. |
| `PUT` | `/api/quote/v1/quoteFields/{id}` | Updates quote field. |
| `PUT` | `/api/quote/v1/quoteFields/{id}/permissions` | Replaces permissions for quote field. |
| `POST` | `/api/quote/v1/quoteFields/{id}/permissions` | Saves quote field editability permissions. |
| `DELETE` | `/api/quote/v1/quoteFields/{id}/permissions(PermissionId={permissionId},StatusId={statusId})` | Deletes permission for quote field. |
| `PUT` | `/api/quote/v1/quoteFields/{id}/calculations` | Replaces calculations for quote field. |
| `POST` | `/api/quote/v1/quoteFields/{id}/calculations` | Add calculation to quote field. |
| `DELETE` | `/api/quote/v1/quoteFields/{id}/calculations/{calculationId}` | Deletes calculation for quote field. |
| `GET` | `/api/quote/v1/quoteItemCustomFields/{id}` | Get Quote Item Custom Field by Id. |
| `PUT` | `/api/quote/v1/quoteItemCustomFields/{id}` | Update a quote item custom field. |
| `DELETE` | `/api/quote/v1/quoteItemCustomFields/{id}` | Remove Quote Item Custom Field. |
| `GET` | `/api/quote/v1/quoteItemCustomFields/withFormulas/{id}` | Get Quote Item Custom Field by Id, including formula model. |
| `PUT` | `/api/quote/v1/quoteItemCustomFields/withFormulas/{id}` | Update a quote item custom field. |
| `GET` | `/api/quote/v1/quoteItemCustomFields` | Get all Quote Item Custom Fields. |
| `POST` | `/api/quote/v1/quoteItemCustomFields` | Create a quote item custom field. |
| `POST` | `/api/quote/v1/quoteItemCustomFields/withFormulas` | Create a quote item custom field with formulas. |
| `GET` | `/api/quote/v1/layout` | Gets quote layout items and permissions. |
| `PUT` | `/api/quote/v1/layout` | Updates selected quote layout items and permissions. |
| `GET` | `/api/quote/v1/layout/availableItems` | Gets available Quote Layout items. |
| `GET` | `/api/quote/v1/layout/{permissionId}` | Gets Quote Layout permissions by permission Id. |
| `GET` | `/api/quote/v1/quoteStandardFields` | Gets all quote standard fields. |
| `GET` | `/api/quote/v1/quoteStandardFields/{quoteStandardFieldId}/accessLevels` | Get all access levels for quote standard fields. |
| `PATCH` | `/api/quote/v1/quoteStandardFields/{quoteStandardFieldId}/accessLevels` | Upserts quote standard field access levels. |
| `GET` | `/api/quote/v1/quoteStandardFields/permissionsPriority` | Retrieves permission priorities. |
| `PUT` | `/api/quote/v1/quoteStandardFields/permissionsPriority` | Update quote standard field permissions type priority. |
| `GET` | `/api/quote/v1/quoteTables` |  |
| `POST` | `/api/quote/v1/quoteTables` |  |
| `GET` | `/api/quote/v1/quoteTables/{quoteTableId}` |  |
| `PUT` | `/api/quote/v1/quoteTables/{quoteTableId}` |  |
| `DELETE` | `/api/quote/v1/quoteTables/{quoteTableId}` |  |
| `GET` | `/api/quote/v1/visibilityRules` | Get all visibility rules. |
| `POST` | `/api/quote/v1/visibilityRules` | Creates new Visibility rules. |
| `GET` | `/api/quote/v1/visibilityRules/{id}` | Gets the Visibility Rules by Identifier. |
| `DELETE` | `/api/quote/v1/visibilityRules/{id}` | Deletes existing Visibility Rules by Identifier. |
| `GET` | `/api/quote/v1/visibilityRules/{id}/translations` | Gets translations for visibility rule by the specified visibility rules id. |
| `POST` | `/api/quote/v1/visibilityRules/{id}/translations` | Creates or updates a translation for Visibility rules by specified identifier. |
| `DELETE` | `/api/quote/v1/visibilityRules/{id}/translations` |  |
| `GET` | `/api/quote/v1/visibilityRules/availableFields/{userTypeId}` | Gets a collection of available fields for the visibility rules by user type id. |
| `GET` | `/api/quote/v1/visibilityRules/userTypes` | Gets a list of user types. |
| `GET` | `/api/quote/v1/visibilityRules/configuredUserTypes` | Gets a list of user types that have configured Quote List settings. |
| `GET` | `/api/quote/v1/visibilityRules/userType/{userTypeId}` | Gets a list of visibility rules by user type identifier. |
| `GET` | `/api/quote/v1/visibilityRules/configuration` | Gets the complete Quote List Configuration (columns and filters) for a specific user type. |
| `POST` | `/api/quote/v1/visibilityRules/configuration` | Creates or updates full Quote List configuration (columns + filters) for a user type. |
| `DELETE` | `/api/quote/v1/visibilityRules/configuration` | Deletes existing configuration of Visibility Rules and filters by user type Identifier. |

## api/quotes/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/quotes/v1/tabs` | Gets all Quote Tabs. |
| `POST` | `/api/quotes/v1/tabs` | Creates new Quote Tab. |
| `GET` | `/api/quotes/v1/tabs/{id}` | Gets the Quote Tab by Identifier. |
| `PUT` | `/api/quotes/v1/tabs/{id}` | Updates the specified Quote Tab. |
| `DELETE` | `/api/quotes/v1/tabs/{id}` | Deletes existing Quote Tab by Identifier. |
| `POST` | `/api/quotes/v1/tabs/bulk` | Creates new or updates existing Quote Tabs from collection. |
| `GET` | `/api/quotes/v1/tabs/files` | Gets collection of paths to implementation files. |
| `PUT` | `/api/quotes/v1/tabs/{tabId}/translations` | Updates translations for specified quote tab. |
| `GET` | `/api/quotes/v1/tabs/{tabId}/translations/{dictionaryId}` | Get quote tab translation details by identifier. |
| `POST` | `/api/quotes/v1/tabs/bulk/translations` | Inserts or updates quote tab translations in bulk. |
| `GET` | `/api/quotes/v1/tabs/systemId` | Gets a unique System ID based on the provided quote tab name. |

## api/rd/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/rd/v1/ApprovalHistory/GetApprovalHistoryModelInit` | Gets the initial approval history model. |
| `GET` | `/api/rd/v1/ApprovalHistory/GetApprovalHistoryModelInitData` | Gets the initial approval history model. |
| `GET` | `/api/rd/v1/ApprovalHistory/GetApprovalHistoryModel` | Gets the approval history model. |
| `GET` | `/api/rd/v1/Approvals/GetApprovalModel` | Gets the approval model. |
| `GET` | `/api/rd/v1/Approvals/GetOneClickApprovalResponse` | Gets the one click approval response. |
| `POST` | `/api/rd/v1/Approvals/ExecuteAction` | Executes the action. |
| `POST` | `/api/rd/v1/Approvals/RetractApprovalProcess` | Retract approval process action. |
| `POST` | `/api/rd/v1/Approvals/RetractExpiredApprovalRules` | Retract expired approval rules - rules which are rejected and not violated anymore. |
| `GET` | `/api/rd/v1/Assets/GetInitData` | Gets the initialize data. |
| `POST` | `/api/rd/v1/Assets/GetData` | Gets the data. |
| `POST` | `/api/rd/v1/Assets/SaveFilter` | Saves the filter. |
| `POST` | `/api/rd/v1/Assets/RenewAssets` | Renews the assets. |
| `POST` | `/api/rd/v1/Cart/ExecuteUpgradeItemToNewCrossCatalogMappingAction` | Executes the upgrade item to new cross catalog mappings action. |
| `POST` | `/api/rd/v1/Cart/Reassign` | Reassigns quote. |
| `GET` | `/api/rd/v1/Cart/GetVariantItemPricingDetails` | Gets the variant item pricing details. |
| `POST` | `/api/rd/v1/Cart/ChangeVariantItemPricingDetails` | Change pricing details for a variant item. |
| `GET` | `/api/rd/v1/Cart/GetPossiblePricingConditions` | Gets possible pricing conditions. |
| `GET` | `/api/rd/v1/Cart/GetCustomFields` | Gets the custom fields. |
| `GET` | `/api/rd/v1/Cart/GetScriptingMessages` | Gets scripting messages. |
| `GET` | `/api/rd/v1/Cart/GetQuoteMessages` | Gets quote messages. |
| `POST` | `/api/rd/v1/Cart/SaveCustomFields` | Saves the custom fields. |
| `GET` | `/api/rd/v1/Cart/GetInitData` | Gets the initialize data. |
| `GET` | `/api/rd/v1/Cart/GetCartActionsModel` | Get cart actions data. |
| `GET` | `/api/rd/v1/Cart/GetItems` | Gets the items. |
| `POST` | `/api/rd/v1/Cart/GetItemsPost` | Gets the items. |
| `POST` | `/api/rd/v1/Cart/GetItemHierarchy` | Gets items hierarchy. |
| `POST` | `/api/rd/v1/Cart/GetQuoteWithTieredPricingTablePost` | Gets the items and tiered pricing table. |
| `POST` | `/api/rd/v1/Cart/CreateUsageBasedRedefinedTable` | Create a new usage based pricing redefined table for a quote item by coping the default table with table system Id. |
| `POST` | `/api/rd/v1/Cart/GetQuoteWithUsageBasedPricingTablePost` | Get cart response with redefined usage based pricing table for a quote item by table system id. |
| `POST` | `/api/rd/v1/Cart/DeleteUsageBasedPricingTable` | Delete redefined/reused usage based pricing table related to quote item by table system id. |
| `POST` | `/api/rd/v1/Cart/AddUsageBasedReusedPricingTable` | Adds reused usage based pricing table. |
| `POST` | `/api/rd/v1/Cart/UpdateUsageBasedPricingRedefinedTable` | Update redefined table with table system Id and provided body content. |
| `GET` | `/api/rd/v1/Cart/GetOrderSummaryData` | Gets the order summary data. |
| `POST` | `/api/rd/v1/Cart/Calculate` | Calculates the specified cart update parameters. |
| `POST` | `/api/rd/v1/Cart/CalculateCoTermExtension` | Calculates the Co Term Extension value based on given date. |
| `POST` | `/api/rd/v1/Cart/CancelItemEdit` | Cancels the item edit. |
| `POST` | `/api/rd/v1/Cart/ChangeItemType` | Changes the type of the item. |
| `POST` | `/api/rd/v1/Cart/ChangeItemsType` | Changes the type of the items. |
| `POST` | `/api/rd/v1/Cart/ChangeMarket` | Changes the market. |
| `POST` | `/api/rd/v1/Cart/ChangeSalesArea` | Changes the sales area of the quote. |
| `POST` | `/api/rd/v1/Cart/ChangeShippingCondition` | Changes the shipping condition. |
| `POST` | `/api/rd/v1/Cart/ChangeCurrency` | Changes the currency. |
| `POST` | `/api/rd/v1/Cart/ChangePaymentTerms` | Changes the Payment terms. |
| `POST` | `/api/rd/v1/Cart/ChangeIncoterm` | Changes the Incoterm. |
| `POST` | `/api/rd/v1/Cart/ChangeSalesAreaField` |  |
| `GET` | `/api/rd/v1/Cart/GetSbItemsWithoutMarketPrices` | Gets list of System Ids for SB products in current quote which do not have pricing defined |
| `POST` | `/api/rd/v1/Cart/ChangePricebook` | Changes the pricebook. |
| `POST` | `/api/rd/v1/Cart/ChangeEffectiveDate` | Changes the effective date. |
| `POST` | `/api/rd/v1/Cart/ChangeShipping` | Changes the shipping. |
| `POST` | `/api/rd/v1/Cart/ChangeStatus` | Changes the status. |
| `POST` | `/api/rd/v1/Cart/SaveCartComment` | Saves the cart comment. |
| `POST` | `/api/rd/v1/Cart/CrateNewAdditionalDiscount` | Crates the new additional discount. |
| `POST` | `/api/rd/v1/Cart/DeleteAdditionalDiscount` | Deletes the additional discount. |
| `POST` | `/api/rd/v1/Cart/ExecuteAction` | Executes the action. |
| `POST` | `/api/rd/v1/Cart/ExecuteItemAction` | Executes the item action. |
| `POST` | `/api/rd/v1/Cart/ExecuteUpgradeItemAction` | Executes the upgrade item action. |
| `POST` | `/api/rd/v1/Cart/ExecuteItemActionById` | Executes the item action by cart item id. |
| `GET` | `/api/rd/v1/Cart/GetProductsAndAliasesForUpgrade` | Gets the products for upgrade. |
| `GET` | `/api/rd/v1/Cart/GetCartItemProductUpgradeConfirmationMessage` | Gets the cart item product upgrade confirmation message. |
| `GET` | `/api/rd/v1/Cart/GetCartProductsUpgradeConfirmationMessage` | Gets the cart products upgrade confirmation message. |
| `POST` | `/api/rd/v1/Cart/MoveItemDown` | Moves the item down. |
| `POST` | `/api/rd/v1/Cart/MoveItemUp` | Moves the item up. |
| `POST` | `/api/rd/v1/Cart/MoveItemToBottom` | Moves item to the bottom. |
| `POST` | `/api/rd/v1/Cart/MoveItemToTop` | Moves item to the top. |
| `POST` | `/api/rd/v1/Cart/MoveToPosition` | Moves item to below upperCartItem. |
| `POST` | `/api/rd/v1/Cart/Redo` | Redoes this instance. |
| `POST` | `/api/rd/v1/Cart/SetActiveEditableGroup` | Sets the active editable group. |
| `POST` | `/api/rd/v1/Cart/Undo` | Undoes this instance. |
| `POST` | `/api/rd/v1/Cart/UpgradeAndEditProduct` | Upgrades the and edit product. |
| `POST` | `/api/rd/v1/Cart/UpgradeProductsAndExecuteAction` | Upgrades the products and execute action. |
| `POST` | `/api/rd/v1/Cart/AddToQuote` | Adds to quote. |
| `POST` | `/api/rd/v1/Cart/AddToQuoteWithSection` | Adds to quote. |
| `POST` | `/api/rd/v1/Cart/AddFavoriteToQuote` | Adds the favorite to quote. |
| `POST` | `/api/rd/v1/Cart/ChangeApprovalProbability` | Changes the approval probability. |
| `POST` | `/api/rd/v1/Cart/CopyItems` | Copies the items. |
| `POST` | `/api/rd/v1/Cart/DeleteItemsNewQuote` | Deletes the items. |
| `POST` | `/api/rd/v1/Cart/DeleteItems` | Deletes the items. |
| `POST` | `/api/rd/v1/Cart/ReorderItems` | Reorders the items. |
| `POST` | `/api/rd/v1/Cart/ChangeMarginHealth` | Changes the margin health. |
| `POST` | `/api/rd/v1/Cart/ContinueActionExecution` | Continues the action execution. |
| `GET` | `/api/rd/v1/Cart/GetSections` | Gets cart sections. |
| `GET` | `/api/rd/v1/Cart/GetPartNumberSuggestions` | Gets the part number suggestions. |
| `POST` | `/api/rd/v1/Cart/SetCartItemComment` | Sets the cart item comment. |
| `POST` | `/api/rd/v1/Cart/CreateNew` | Creates the new. |
| `POST` | `/api/rd/v1/Cart/LinkToOpportunity` | Creates link in CPQ between current quote and opportunity. |
| `GET` | `/api/rd/v1/Cart/GetViewQuoteItemsModel` | Gets the view quote items model. |
| `POST` | `/api/rd/v1/Cart/ItemActionDeleteReduced` | Items the action delete reduced. |
| `GET` | `/api/rd/v1/Cart/GetCurrentMainItemsCount` | Gets the current main items count. |
| `POST` | `/api/rd/v1/Cart/GetPartialOrderData` | Gets the data for action create partial order. |
| `POST` | `/api/rd/v1/Cart/CreatePartialOrder` | Creates the partial order. |
| `GET` | `/api/rd/v1/Cart/GetPromotions` | Gets the promotions. |
| `POST` | `/api/rd/v1/Cart/ApplyPromotions` | Applies the promotions. |
| `POST` | `/api/rd/v1/Cart/ExpandItem` | Expands the item. |
| `POST` | `/api/rd/v1/Cart/ExpandAll` | Expands all items. |
| `POST` | `/api/rd/v1/Cart/CollapseItem` | Collapses the item. |
| `POST` | `/api/rd/v1/Cart/CollapseAll` | Collapses all items. |
| `GET` | `/api/rd/v1/Cart/SearchItems` | Returns top 5 items in cart matching search criteria. |
| `POST` | `/api/rd/v1/Cart/CopyQuoteTableRow` | Copies the quote table row and returns cart data.
If reduced will return just custom fields and quote tables not all cart data. |
| `POST` | `/api/rd/v1/Cart/DeleteQuoteTableRow` | Deletes the quote table row.
If reduced will return just custom fields and quote tables not all cart data. |
| `POST` | `/api/rd/v1/Cart/AddQuoteTableRow` | Adds the quote table row.
If reduced will return just custom fields and quote tables not all cart data. |
| `POST` | `/api/rd/v1/Cart/ChangeQuoteTableCells` | Changes the quote table cells.
If reduced will return just custom fields and quote tables not all cart data. |
| `GET` | `/api/rd/v1/Cart/GetQuoteTableRows` | Gets the quote table rows. |
| `POST` | `/api/rd/v1/Cart/ExecuteQuoteTableCustomAction` | Executes the quote table custom action. |
| `POST` | `/api/rd/v1/Cart/FilterQuoteTableRows` | Gets filtered quote table rows. |
| `GET` | `/api/rd/v1/Cart/GetAutoCompleteSourceTableValues` | Gets the auto-complete custom table values for custom field. |
| `GET` | `/api/rd/v1/Cart/GetAutoCompleteSubscriptionFields` | Gets the auto-complete values for subscription or service contract attribute |
| `POST` | `/api/rd/v1/Cart/SelectAutocompleteCustomField` | Selects the autocomplete custom field value. |
| `GET` | `/api/rd/v1/Cart/GetFilterableItemColumns` | Gets filterable standard and item custom fields. |
| `GET` | `/api/rd/v1/Cart/GetMinAndMaxForColumn` | Get min and max values for given quote item custom field. |
| `GET` | `/api/rd/v1/Cart/GetFiltersMetadata` | Get medatata for filterable columns. |
| `GET` | `/api/rd/v1/Cart/GetCustomFieldAutocomplete` | Get list of custom field available values for given quote custom field based on search string. |
| `GET` | `/api/rd/v1/Cart/GetFieldDistinctValues` | Get list of distinct values if there are fewer than 10. |
| `GET` | `/api/rd/v1/Cart/GetProductTypes` | Get list of product type available values for current quote. |
| `GET` | `/api/rd/v1/Cart/GetCustomFieldAutocompleteAttribute` | Get list of attribute custom field available values for given quote custom field based on search string. |
| `GET` | `/api/rd/v1/Cart/DownloadQTDataTemplate` | Download quote table template |
| `GET` | `/api/rd/v1/Cart/DownloadQTEmptyTemplate` | Download empty quote table template |
| `POST` | `/api/rd/v1/Cart/CalculateSections` | Calculates the sections. |
| `POST` | `/api/rd/v1/Cart/GetItemsBySections` | Available only for Quote 2.0
Get items by sections |
| `GET` | `/api/rd/v1/Cart/GetActionsForItem` | Get item actions |
| `POST` | `/api/rd/v1/Cart/DeleteQuoteTeam` | Deletes the quote team. |
| `POST` | `/api/rd/v1/Cart/SaveQuoteTeam` | Saves the quote team. |
| `GET` | `/api/rd/v1/Cart/GetQuoteTeamsTabData` | Gets teams on the quote. |
| `GET` | `/api/rd/v1/Cart/GetQuoteTeams` | Gets the quote teams. |
| `GET` | `/api/rd/v1/Cart/GetQuoteTeamsUsers` | Gets the users for quote teams. |
| `POST` | `/api/rd/v1/Cart/BulkAssign` | Bulks the assign. |
| `GET` | `/api/rd/v1/Cart/PercentageOperations` | Returns all values ​​of SB ratio percentage operations |
| `GET` | `/api/rd/v1/Cart/GetSalesUnitsOfMeasure` | Get list of all possible sales units of measure. |
| `GET` | `/api/rd/v1/Cart/GetCartTotals` | Returns cart totals |
| `POST` | `/api/rd/v1/Cart/RemoveQuoteMessage` | Removes the quote message. |
| `GET` | `/api/rd/v1/Cart/GetTotalNumberOfQuoteItemsForSwap` | Get count of available subscription quote items for swap. |
| `GET` | `/api/rd/v1/Cart/GetQuoteItemsForSwap` | Get available subscription quote items for swap with paging. |
| `POST` | `/api/rd/v1/Cart/DeletePricingConditionRecord` | Deletes pricing condition record. |
| `POST` | `/api/rd/v1/Cart/DeletePricingHeaderConditionRecord` | Deletes pricing condition record for quote header field. |
| `GET` | `/api/rd/v1/Cart/GetItemTieredPricingTable` | Gets the item tiered pricing table. |
| `POST` | `/api/rd/v1/Cart/RedefineTable` | Redefines the item tiered pricing table. |
| `POST` | `/api/rd/v1/Cart/UpdatePricingMechanism` | Updates the Tiered Pricing Table Pricing Mechanism. |
| `GET` | `/api/rd/v1/Cart/DownloadItemTeredPricingTable` | Downloads item tiered pricing table. |
| `POST` | `/api/rd/v1/Cart/DeleteRedefinedTable` | Deletes the redefined item tiered pricing table. |
| `GET` | `/api/rd/v1/Cart/BringSelectedItemSuggestionResult` | Retrieves a move item suggestion containing. |
| `POST` | `/api/rd/v1/Cart/BringSelectedItem` | Move item below request |
| `POST` | `/api/rd/v1/Cart/MoveUnderItem` | Move under item |
| `GET` | `/api/rd/v1/Cart/MoveUnderItemSuggestionResult` | Retrieves a move item suggestion  for move under item action. |
| `GET` | `/api/rd/v1/Cart/GetChangeItemTypeSuggestions` | Retrieves a move item suggestion  for move under item action. |
| `GET` | `/api/rd/v1/Cart/GetUsageBasedProductsForUpgrade` | Gets the usage based products for upgrade. |
| `GET` | `/api/rd/v1/CartDocuments/GetCartDocumentsModelInit` | Gets the cart documents model initialize. |
| `GET` | `/api/rd/v1/CartDocuments/GetCartDocumentAttachmentModel` | Gets the cart document attachment model. |
| `GET` | `/api/rd/v1/CartDocuments/GetCartDocumentGenDocModel` | Gets the cart document gen document model. |
| `POST` | `/api/rd/v1/CartDocuments/PrepareGeneratedDocumentForDownload` | Downloads the document. |
| `POST` | `/api/rd/v1/CartDocuments/SetSendToCustomer` | Sets the send to customer. |
| `POST` | `/api/rd/v1/CartDocuments/SetViewedByCustomer` | Sets the viewed by customer. |
| `POST` | `/api/rd/v1/CartDocuments/DeleteGeneratedDocument` | Deletes the generated document. |
| `POST` | `/api/rd/v1/CartDocuments/DeleteAttachment` | Deletes the attachment. |
| `POST` | `/api/rd/v1/CartDocuments/SaveQuoteRevisionDescription` | Saves the quote revision description. |
| `GET` | `/api/rd/v1/CartDocuments/ViewCartAttachment` | Views the cart attachment. |
| `GET` | `/api/rd/v1/CartDocuments/DownloadCartAttachment` | Downloads the cart attachment. |
| `POST` | `/api/rd/v1/CartList/ChangeStatus` | Changes the status. |
| `POST` | `/api/rd/v1/CartList/ExecuteAction` | Executes the action. |
| `POST` | `/api/rd/v1/CartList/RetractApprovalProcess` | Retracts approval process. |
| `POST` | `/api/rd/v1/CartList/ExecuteApprovals` | Executes the approvals. |
| `POST` | `/api/rd/v1/CartList/GetData` | Gets the data. |
| `GET` | `/api/rd/v1/CartList/GetDataByQuoteNumber` | Gets the data by quote number. |
| `GET` | `/api/rd/v1/CartList/GetInitData` | Gets the initialize data. |
| `POST` | `/api/rd/v1/CartList/GetUserTypesForReassign` | Gets the user types for reassign. |
| `POST` | `/api/rd/v1/CartList/GetUsersForReassign` | Gets the users for reassign. |
| `POST` | `/api/rd/v1/CartList/Reassign` | Reassigns the specified new user identifier. |
| `POST` | `/api/rd/v1/CartList/SaveData` | Saves the data. |
| `POST` | `/api/rd/v1/CartList/SaveSettings` | Saves the settings. |
| `GET` | `/api/rd/v1/Catalog/GetInitData` | Gets the initialize data. |
| `GET` | `/api/rd/v1/Catalog/GetData` | Gets the data. |
| `GET` | `/api/rd/v1/Catalog/GetProductsCount` | Gets the products count. |
| `GET` | `/api/rd/v1/Catalog/GetQuickAdd` | Gets the quick add. |
| `GET` | `/api/rd/v1/Catalog/GetCategoriesData` | Gets the categories data. |
| `GET` | `/api/rd/v1/Catalog/GetCategories` | Gets list of all product categories. |
| `GET` | `/api/rd/v1/Catalog/GetReplaceProductId` | Gets the replace product identifier. |
| `POST` | `/api/rd/v1/Catalog/Reset` | Resets this instance. |
| `POST` | `/api/rd/v1/Catalog/ClearAbs` | Clears the abs. |
| `GET` | `/api/rd/v1/Catalog/GetSearchSuggestions` | Gets the search suggestions. |
| `POST` | `/api/rd/v1/Catalog/AddToQuote` | Adds to quote. |
| `POST` | `/api/rd/v1/Catalog/QuickConfig` | This service will try to find product configuration based on catalog code. |
| `GET` | `/api/rd/v1/Catalog/GetRatePlanForProductAndMarket` | Gets SB product RatePlan |
| `GET` | `/api/rd/v1/ChangeSets/GetChangeSetOptions` | Gets the change sets for the change set select. |
| `POST` | `/api/rd/v1/ChangeSets/SaveChangeSet` | Saves the new change set. |
| `GET` | `/api/rd/v1/ChangeSets/GetSelectedChangeSet` | Gets the selected change set. |
| `POST` | `/api/rd/v1/ChangeSets/SelectChangeSet` | Select change set. |
| `GET` | `/api/rd/v1/CompareProducts/GetInitData` | Gets the initialize data. |
| `POST` | `/api/rd/v1/CompareProducts/AddProductToCompare` | Adds the product to compare. |
| `POST` | `/api/rd/v1/CompareProducts/RemoveProductFromCompare` | Removes the product from compare. |
| `POST` | `/api/rd/v1/CompareProducts/RemoveProductFromCompareAndReload` | Removes the product from compare and reload. |
| `POST` | `/api/rd/v1/CompareProducts/ClearProductComparisonSelection` | Clears the product comparison selection. |
| `POST` | `/api/rd/v1/Configurator/Init` | Initializes the specified pid. |
| `GET` | `/api/rd/v1/Configurator/GetModel` | Gets the current configurator tab model. |
| `GET` | `/api/rd/v1/Configurator/GetTabModel` | Changes current tab and then get model for that configurator tab. |
| `GET` | `/api/rd/v1/Configurator/ShouldShowConflictsTab` | Gets information whether the conflicts tab in responder should be shown or not for VC integration |
| `POST` | `/api/rd/v1/Configurator/ChangeUserInput` | Changes the user input. |
| `POST` | `/api/rd/v1/Configurator/ChangeAttributeQuantity` | Changes the attribute quantity. |
| `POST` | `/api/rd/v1/Configurator/ChangeAttributeValue` | Changes the attribute value. |
| `POST` | `/api/rd/v1/Configurator/ButtonAttributeAction` | Buttons the attribute action. |
| `POST` | `/api/rd/v1/Configurator/ChangeAttributeValueQuantity` | Changes the attribute value quantity. |
| `POST` | `/api/rd/v1/Configurator/AddContainerRow` | Adds the container row. |
| `POST` | `/api/rd/v1/Configurator/EditConfigurationTreeRow` | Edits the configuration tree item (container row). |
| `POST` | `/api/rd/v1/Configurator/EditContainerRow` | Edits the container row. |
| `POST` | `/api/rd/v1/Configurator/SetContainerCurrentPage` | Sets the container current page. |
| `POST` | `/api/rd/v1/Configurator/SetContainerPageSize` | Sets the size of the container page. |
| `POST` | `/api/rd/v1/Configurator/DeleteContainerRow` | Deletes the container row. |
| `POST` | `/api/rd/v1/Configurator/CopyContainerRow` | Copies the container row. |
| `POST` | `/api/rd/v1/Configurator/ModalCopyContainerRow` | Modals the copy container row. |
| `POST` | `/api/rd/v1/Configurator/MoveUpContainerRow` | Moves up container row. |
| `POST` | `/api/rd/v1/Configurator/MoveDownContainerRow` | Moves down container row. |
| `POST` | `/api/rd/v1/Configurator/ChangeContainerValue` | Changes the container value. |
| `POST` | `/api/rd/v1/Configurator/ContainerSort` | Toggles the container column sort direction. |
| `POST` | `/api/rd/v1/Configurator/ContainerClearSort` | Clears the container sorting. |
| `POST` | `/api/rd/v1/Configurator/ChangeContainerAutocompleteValue` | Changes the container autocomplete value. |
| `POST` | `/api/rd/v1/Configurator/AlterContainerRowSelection` | Alters the container row selection. |
| `POST` | `/api/rd/v1/Configurator/SetContainerSelectedRowFilter` | Sets the container selected row filter. |
| `POST` | `/api/rd/v1/Configurator/ChangeDrillDownValue` | Changes the drill down value. |
| `POST` | `/api/rd/v1/Configurator/Reset` | Resets this instance. |
| `POST` | `/api/rd/v1/Configurator/UpdateVariantConfiguration` | Updates variant configuration. |
| `POST` | `/api/rd/v1/Configurator/AddToQuote` | Adds to quote.
<param name="configurationId">Configuration id.</param><param name="rowId">Container row id.</param><param name="parentItemId">Parent item id.</param> |
| `POST` | `/api/rd/v1/Configurator/SaveAndExitNestedProduct` | Saves the and exit nested product. |
| `POST` | `/api/rd/v1/Configurator/ExitNestedProduct` | Exits the nested product. |
| `POST` | `/api/rd/v1/Configurator/GoToRootProduct` | Gets root product |
| `POST` | `/api/rd/v1/Configurator/ViewABSPriceRanges` | Views the abs price ranges. |
| `POST` | `/api/rd/v1/Configurator/HideABSPriceRanges` | Hides the abs price ranges. |
| `POST` | `/api/rd/v1/Configurator/ViewABSProducts` | Views the abs products. |
| `POST` | `/api/rd/v1/Configurator/ApplyConfigurationTemplate` | Applies the configuration template. |
| `GET` | `/api/rd/v1/Configurator/GetAutoCompleteSourceTableValues` | Gets the auto-complete values. |
| `GET` | `/api/rd/v1/Configurator/GetContainerAutoCompleteSourceTableValues` | Gets the auto-complete values. |
| `POST` | `/api/rd/v1/Configurator/SelectAutoCompleteAttribute` | Selects the auto-complete attribute. |
| `GET` | `/api/rd/v1/Configurator/GetConfigurationTree` | Gets complete parent/child structure for configurator. |
| `GET` | `/api/rd/v1/Configurator/GetConflictSummary` | Gets complete parent/child structure for configurator. |
| `GET` | `/api/rd/v1/Configurator/GetConflicts` | Gets all conflict items for configurator responder. |
| `POST` | `/api/rd/v1/Core/LogError` | Logs the error. |
| `GET` | `/api/rd/v1/Core/RefreshSession` | Refreshes the session. |
| `POST` | `/api/rd/v1/Core/LogIn` | Logs the in. |
| `POST` | `/api/rd/v1/Core/LogInGuestUser` | Logs the in guest user. |
| `POST` | `/api/rd/v1/Core/LogInJWT` | Logs the user in with JWT.
To use this method you must first define shared secret in Setup/Application parameters.
Algorithm used is HS256 so header is
header:
 {
    "typ": "JWT",
    "alg": "HS256"
 }
            
What we ecpect in JWT payload:
 - exp (Expiration which didn't expire yet)
 - username - existing CPQ User's username
 - domain - CPQ tenant name
            
payload:
 {
    "exp": 1488893055,
    "username": "my_username",
    "domain": "my_tenant_name"
 }
            
Token should be sent in request authorization header like below.
Authorization: Bearer [token] |
| `POST` | `/api/rd/v1/Core/GenerateJWT` | Generates **JWT** token using **OWIN** token for Authentication |
| `POST` | `/api/rd/v1/CrmLanding/CheckLogin` | Authentication method. |
| `GET` | `/api/rd/v1/CrmLanding/LandFromCrm` | Trigger OnLandingFromCrm event. |
| `GET` | `/api/rd/v1/CustomerFeedback/GetData` | Gets data. |
| `GET` | `/api/rd/v1/CustomerFeedback/GetUnreadCount` | Gets unread count. |
| `POST` | `/api/rd/v1/CustomerFeedback/SaveComment` | Save Comment |
| `POST` | `/api/rd/v1/CustomerFeedback/DeleteComment` | Deletes comment |
| `POST` | `/api/rd/v1/Customers/ClearCustomerRole` | Clears the customer role. |
| `POST` | `/api/rd/v1/Customers/CopyCustomer` | Copies the customer. |
| `POST` | `/api/rd/v1/Customers/GetAddressesPostCodeLookup` | Gets the addresses post code lookup. |
| `POST` | `/api/rd/v1/Customers/ChangedSelectedCountry` | Handles on selected country changed events |
| `POST` | `/api/rd/v1/Customers/GetCustomer` | Gets the customer. |
| `POST` | `/api/rd/v1/Customers/GetCustomersForCustomerRole` | Gets the customers for customer role. |
| `POST` | `/api/rd/v1/Customers/GetData` | Gets the data. |
| `GET` | `/api/rd/v1/Customers/GetInitData` | Gets the initialize data. |
| `GET` | `/api/rd/v1/Customers/GetInitShippingInfoData` | Gets the initialize shipping information data. |
| `POST` | `/api/rd/v1/Customers/GetPostCodeLookupAddressById` | Gets the post code lookup address by identifier. |
| `GET` | `/api/rd/v1/Customers/GetSearchSuggestions` | Gets the search suggestions. |
| `POST` | `/api/rd/v1/Customers/ImportCustomerFromCrm` | Imports the customer from CRM. |
| `POST` | `/api/rd/v1/Customers/NewCustomerShippingInfo` | News the customer shipping information. |
| `POST` | `/api/rd/v1/Customers/PickCustomerFromLookup` | Picks the customer from lookup. |
| `POST` | `/api/rd/v1/Customers/ReloadCustomerData` | Reloads the customer data. |
| `POST` | `/api/rd/v1/Customers/RemoveCustomer` | Removes the customer. |
| `POST` | `/api/rd/v1/Customers/SaveCustomer` | Saves the customer. |
| `POST` | `/api/rd/v1/Customers/SaveCustomerShippingInfo` | Saves the customer shipping information. |
| `POST` | `/api/rd/v1/Customers/CopyCustomerTo` | Copies the customer to. |
| `GET` | `/api/rd/v1/DealView/GetDealViewInitData` |  |
| `POST` | `/api/rd/v1/DealView/BulkUpdateDealStructure` | Bulk update deal structure. |
| `GET` | `/api/rd/v1/DealView/MoveItemToSection` | Moves item to section. |
| `GET` | `/api/rd/v1/DealView/GetDealSectionByPath` | Gets deal section by path. |
| `POST` | `/api/rd/v1/DealView/SetActiveEditableGroup` | Sets the active editable group. |
| `GET` | `/api/rd/v1/DealView/SearchSectionsByName` | Sets the active editable group. |
| `GET` | `/api/rd/v1/DealView/DealStructureModelsCount` | Gets deal structure models count for current quote. |
| `GET` | `/api/rd/v1/DealView/DownloadSectionsTemplate` | Downloads section template. |
| `GET` | `/api/rd/v1/DealView/ExportDealStructure` | Exports deal structure. |
| `GET` | `/api/rd/v1/DealView/GetFilterableItemColumns` | Gets filterable standard and item custom fields. |
| `GET` | `/api/rd/v1/DealView/GetMinAndMaxForColumn` | Get min and max values for given quote item custom field. |
| `GET` | `/api/rd/v1/DealView/GetCustomFieldAutocomplete` | Get list of custom field available values for given quote custom field based on search string. |
| `GET` | `/api/rd/v1/DealView/GetFieldDistinctValues` | Get list of distinct values if there are fewer than 10. |
| `GET` | `/api/rd/v1/DealView/GetSectionsDistinctPaths` | Get list of distinct section paths if there are fewer than 10. |
| `GET` | `/api/rd/v1/DealView/GetCustomFieldAutocompleteAttribute` | Get list of attribute custom field available values for given quote custom field based on search string. |
| `GET` | `/api/rd/v1/DealView/GetFiltersMetadata` | Get medatata for filterable columns. |
| `GET` | `/api/rd/v1/DealView/GetSectionPaths` | Get list of section paths for given quote custom field based on search string. |
| `GET` | `/api/rd/v1/DealView/GetFilteredDealStructure` | Gets filtered deal structure. |
| `POST` | `/api/rd/v1/DealView/DistributeSections` | Distribute sections |
| `GET` | `/api/rd/v1/DealView/Redistribute` | Redistribute sections. |
| `POST` | `/api/rd/v1/DealView/RetractDistribution` | Retract distribution |
| `POST` | `/api/rd/v1/DealView/GetSectionTotals` | Gets the section totals. |
| `GET` | `/api/rd/v1/FavoriteFolders/GetFavoriteFolders` | Get favorite folders. |
| `POST` | `/api/rd/v1/FavoriteFolders/SaveFavoriteFolder` | Save favorite folder definition. |
| `POST` | `/api/rd/v1/FavoriteFolders/UpdateFavoriteFolder` | Update favorite folder definition. |
| `POST` | `/api/rd/v1/FavoriteFolders/DeleteFavoriteFolder` | Delete favorite folder. |
| `GET` | `/api/rd/v1/Favorites/GetInitData` | Gets the initialize data. |
| `POST` | `/api/rd/v1/Favorites/GetData` | Gets filtered favorites from folder with specified Id.
If folder id is null, favorites from root folder "Favorites" are returned. |
| `POST` | `/api/rd/v1/Favorites/DeleteFavorite` | Deletes the favorite. |
| `POST` | `/api/rd/v1/Favorites/DeleteFavoriteFromFavoritesList` | Deletes the favorite from favorites list. |
| `POST` | `/api/rd/v1/Favorites/UpdateFavoriteFromFavoritesList` | Updates the favorite from favorites list. |
| `POST` | `/api/rd/v1/Favorites/SaveFavoriteFromCatalog` | Saves the favorite from catalog. |
| `POST` | `/api/rd/v1/Favorites/SaveFavoriteFromConfigurator` | Saves the favorite from configurator. |
| `POST` | `/api/rd/v1/Favorites/SaveFavoriteFromCart` | Saves the favorite from cart. |
| `POST` | `/api/rd/v1/Favorites/UpdateFavoriteFromConfigurator` | Updates the favorite from configurator. |
| `POST` | `/api/rd/v1/Favorites/AddToQuote` | Adds to quote. |
| `POST` | `/api/rd/v1/Favorites/GetProductNameAndDescription` | Gets the product name and description. |
| `POST` | `/api/rd/v1/Favorites/EditFavorite` | Edits the configurable favorite. |
| `GET` | `/api/rd/v1/Favorites/GetFavoritesDefaultData` | Gets the default settings for favorites page. |
| `POST` | `/api/rd/v1/Favorites/MoveFavoritesToFolder` | Move favorites to another folder. |
| `POST` | `/api/rd/v1/Favorites/Reset` | Resets this instance. |
| `DELETE` | `/api/rd/v1/Favorites/DeleteFavorites` | Delete favorites in bulk. |
| `GET` | `/api/rd/v1/Favorites/GetActiveProductVersionStatus` | Check if active product version is used in favorite. |
| `POST` | `/api/rd/v1/Favorites/UpgradeFavorite` | Upgrades the favorite to the active product version.. |
| `GET` | `/api/rd/v1/InvolvedParties/GetInvolvedParties` | Gets involved parties. DEPRECATED |
| `GET` | `/api/rd/v1/InvolvedParties/GetInvolvedPartyById` | Get Involved Party By Id. DEPRECATED |
| `GET` | `/api/rd/v1/InvolvedParties/SearchBusinessPartners` | Search business Partners for a given search parameter DEPRECATED |
| `GET` | `/api/rd/v1/InvolvedParties/GetBusinessPartners` | Gets business partners. DEPRECATED |
| `POST` | `/api/rd/v1/InvolvedParties/DeleteInvolvedParty` | Deletes Involved party by Id DEPRECATED |
| `POST` | `/api/rd/v1/InvolvedParties/RemoveBusinessPartner` | Removes business partner by id. DEPRECATED |
| `GET` | `/api/rd/v1/InvolvedParties/GetAllValidPartnerFunctions` | Gets all valid partner functions for current quote. DEPRECATED |
| `POST` | `/api/rd/v1/InvolvedParties/AddInvolvedParty` | Adds involved party to the quote. DEPRECATED |
| `POST` | `/api/rd/v1/InvolvedParties/AssignBusinessPartner` | Assign business partner to the partner function. DEPRECATED |
| `POST` | `/api/rd/v1/InvolvedParties/UpdateBusinessPartner` | Update Business Partner DEPRECATED |
| `GET` | `/api/rd/v1/InvolvedParties/GetVisibleCustomFieldsLookupsForUser` | Get visible involved party custom field definition lookups for user DEPRECATED |
| `GET` | `/api/rd/v1/InvolvedParties/GetCountries` | Get Countries DEPRECATED |
| `GET` | `/api/rd/v1/InvolvedParties/GetBusinessPartnerRelationships` | Get business partner translated relationship categories DEPRECATED |
| `GET` | `/api/rd/v1/InvolvedParties/GetAllStatesForCountry` | Get All States For Country DEPRECATED |
| `GET` | `/api/rd/v1/InvolvedParties/GetStates` | Get All States DEPRECATED |
| `POST` | `/api/rd/v1/InvolvedParties/UpdatePartnerFunction` | Update Partner Function DEPRECATED |
| `GET` | `/api/rd/v1/ProductDetails/GetInitData` | Gets the initialize data. |
| `GET` | `/api/rd/v1/QuoteComparison/GetRevisionsForQuoteNumber` | Gets revisions response for provided quote number |
| `GET` | `/api/rd/v1/QuoteComparison/GetInitData` | Gets all visible sections |
| `GET` | `/api/rd/v1/QuoteComparison/GetQuotes` | Gets quotes for comparison. |
| `GET` | `/api/rd/v1/QuoteComparison/GetItems` | Get paged items data |
| `POST` | `/api/rd/v1/QuoteComparison/CompareQuotes` | Compare two provided quotes |
| `GET` | `/api/rd/v1/QuoteLanding/GuestView` |  |
| `GET` | `/api/rd/v1/QuoteList/GetInitData` | Gets the metadata for the quote list. |
| `GET` | `/api/rd/v1/QuoteList/GetFilterSuggestions` | Gets the filter suggestions. |
| `GET` | `/api/rd/v1/QuoteList/GetData` | Gets the data. |
| `POST` | `/api/rd/v1/QuoteList/ChangeStatus` | Changes the status. |
| `POST` | `/api/rd/v1/QuoteList/ExecuteAction` | Executes the action. |
| `GET` | `/api/rd/v1/QuoteList/LoadQuoteListFilters` | Gets the filter list object as serialized string. |
| `POST` | `/api/rd/v1/QuoteList/SaveQuoteListFilters` | Saves the filter list object as serialized string. |
| `GET` | `/api/rd/v1/QuoteList/GetMinAndMaxForColumn` | Returns min and max value for given column and tab. |
| `POST` | `/api/rd/v1/QuoteList/GetUserTypesForReassign` | Gets the user types for reassign. |
| `POST` | `/api/rd/v1/QuoteList/GetUsersForReassign` | Gets the users for reassign. |
| `POST` | `/api/rd/v1/QuoteList/Reassign` | Reassigns the specified new user identifier. |
| `GET` | `/api/rd/v1/QuoteList/GetAutocompleteValues` | Gets the list of values for autocomplete custom field. |
| `GET` | `/api/rd/v1/QuoteList/GetAutoCompleteResult` | Get the autocomplete result |
| `GET` | `/api/rd/v1/RecentlyVisitedObjects/Get` | Gets the recently visited objects. |
| `POST` | `/api/rd/v1/RecentlyVisitedObjects/ExecuteAction` | Executes the action. |
| `GET` | `/api/rd/v1/Recommendations/GetData` | Gets price recommendations and product recommendations related to the product. |
| `POST` | `/api/rd/v1/Recommendations/Decline` | Declines the recommendations. |
| `POST` | `/api/rd/v1/Recommendations/ChangeDiscount` | Changes the discount. |
| `POST` | `/api/rd/v1/Recommendations/AddProduct` | Adds recommendation to the product. |
| `POST` | `/api/rd/v1/Recommendations/AcceptPromotion` | Accepts single promotion. |
| `POST` | `/api/rd/v1/Recommendations/DiscardPromotionDetail` | Discards the promotion detail. |
| `POST` | `/api/rd/v1/Recommendations/DiscardPromotion` | Discards the promotion. |
| `GET` | `/api/rd/v1/Revisions/GetInitData` | Gets the revisions init data. |
| `GET` | `/api/rd/v1/Revisions/GetRevisions` | Gets the revisions list. |
| `POST` | `/api/rd/v1/Revisions/ExecuteAction` | Executes the action. |
| `POST` | `/api/rd/v1/Revisions/UpdateRevisions` | Updates list of revisions in database. |
| `GET` | `/api/rd/v1/Revisions/GetCurrentRevision` | Gets current revision object. |
| `GET` | `/api/rd/v1/Revisions/RenameRevision` | Updates name of revision in database. |
| `GET` | `/api/rd/v1/SapCRMLanding/ProceedToQuote` |  |
| `POST` | `/api/rd/v1/SapCRMLanding/CheckLogin` |  |
| `GET` | `/api/rd/v1/SBProviderRD/GetProviderDetails` | Gets provider details. |
| `POST` | `/api/rd/v1/SBProviderRD/UpdateProviderDetails` | Saves provider settings. |
| `POST` | `/api/rd/v1/SBProviderRD/TestAuthenticationSettings` | Tests if credentials are working |
| `POST` | `/api/rd/v1/SBProviderRD/TestRatePlanTemplateEndpoint` | Tests if rate plan template endpoint connection is valid |
| `GET` | `/api/rd/v1/SegregationOfDutiesRD/GetSetupLinksVisibility` | Get visibility info for setup links on user side |
| `GET` | `/api/rd/v1/UserPersonalization/GetInitData` | Gets inital view model in JSON format |
| `GET` | `/api/rd/v1/UserPersonalization/GetUsers` | Gets the users. |
| `GET` | `/api/rd/v1/UserPersonalization/GetModifyPasswordInitData` | Gets init view model for modify password scenario |
| `GET` | `/api/rd/v1/UserPersonalization/GetModifyPersonalInitData` | Gets init view model for modify password scenario |
| `POST` | `/api/rd/v1/UserPersonalization/ChangedDateFormat` | Handles on date format change events
by formatting effective date, date for grant access to admin and support |
| `POST` | `/api/rd/v1/UserPersonalization/ChangedSelectedCountry` | Handles on selected country changed events |
| `POST` | `/api/rd/v1/UserPersonalization/SaveUserPersonalization` | Saves user personalization details and return result |
| `POST` | `/api/rd/v1/UserPersonalization/SaveChangedPassword` | Saving user's new password |
| `POST` | `/api/rd/v1/UserPersonalization/SaveDetails` | Saves user personal details changes |
| `POST` | `/api/rd/v1/UserPersonalization/ToggleResponsiveDesign` | Toggles the responsive design. |
| `GET` | `/api/rd/v1/UserPersonalization/GetMarketPricebooks` | Gets visible pricebooks of the provided market |

## api/rd/v2
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/rd/v2/InvolvedParties/GetInvolvedParties` | Gets involved parties. |
| `GET` | `/api/rd/v2/InvolvedParties/GetInvolvedPartyById` | Gets Involved Party By Id |
| `GET` | `/api/rd/v2/InvolvedParties/GetBusinessPartners` | Gets business partners. |
| `GET` | `/api/rd/v2/InvolvedParties/GetVisibleBusinessPartnerStandardFieldsForUser` | Get visible business partner standard fields for user on involved party |
| `GET` | `/api/rd/v2/InvolvedParties/SearchBusinessPartners` | Search Business Partners for a given search parameter |
| `POST` | `/api/rd/v2/InvolvedParties/DeleteInvolvedParty` | Deletes Involved party by Id |
| `POST` | `/api/rd/v2/InvolvedParties/RemoveBusinessPartner` | Removes business partner by id. |
| `GET` | `/api/rd/v2/InvolvedParties/GetAllValidPartnerFunctions` | Gets all valid partner functions for current quote. |
| `POST` | `/api/rd/v2/InvolvedParties/AddInvolvedParty` | Adds involved party to the quote. |
| `POST` | `/api/rd/v2/InvolvedParties/AssignBusinessPartner` | Assign business partner to the partner function. |
| `POST` | `/api/rd/v2/InvolvedParties/UpdateBusinessPartner` | Update Business Partner |
| `GET` | `/api/rd/v2/InvolvedParties/GetVisibleCustomFieldsLookupsForUser` | Get visible involved party custom field definition lookups for user |
| `GET` | `/api/rd/v2/InvolvedParties/GetCountries` | Get Countries |
| `GET` | `/api/rd/v2/InvolvedParties/GetBusinessPartnerRelationships` | Get business partner translated relationship categories |
| `GET` | `/api/rd/v2/InvolvedParties/GetAllStatesForCountry` | Get All States For Country |
| `GET` | `/api/rd/v2/InvolvedParties/GetStates` | Get All States |
| `POST` | `/api/rd/v2/InvolvedParties/UpdatePartnerFunction` | Update Partner Function |

## api/responsiveTemplate/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/responsiveTemplate/v1/systemId` | Gets the system ID of the responsive template |
| `GET` | `/api/responsiveTemplate/v1/returnTemplatesToPreviousVersion/{pageId}` | Gets information if template was returned to Previous Version |
| `POST` | `/api/responsiveTemplate/v1/removeAllSystemCustomTemplates/{pageId}` | Removes all system templates for provided Responsive Page Id |
| `GET` | `/api/responsiveTemplate/v1/customResponsiveTemplates` | Gets a filtered, ordered and paged collection of custom responsive templates. |
| `POST` | `/api/responsiveTemplate/v1/customResponsiveTemplates` | Creates a new custom responsive template. |
| `GET` | `/api/responsiveTemplate/v1/customResponsiveTemplates/{id}` | Gets a custom responsive template with the provided ID. |
| `PUT` | `/api/responsiveTemplate/v1/customResponsiveTemplates/{id}` | Updates existing custom responsive template with provided ID. |
| `DELETE` | `/api/responsiveTemplate/v1/customResponsiveTemplates/{id}` | Deletes the custom responsive template with the provided ID. |
| `GET` | `/api/responsiveTemplate/v1/customResponsiveTemplates/{templateId}/versions` | Gets a filtered, ordered and paged collection of custom responsive template versions for the template with the provided ID. |
| `GET` | `/api/responsiveTemplate/v1/allResponsiveTemplates/{templateId}/versions` | Gets a filtered, ordered and paged collection of all responsive template versions for the template with the provided ID. |
| `GET` | `/api/responsiveTemplate/v1/customResponsiveTemplates/{templateId}/versions/{versionId}` | Gets a custom responsive template version for the template with the provided ID. |
| `POST` | `/api/responsiveTemplate/v1/customResponsiveTemplates/syntax` | Checks syntax of a responsive templates and returns errors if any. |
| `GET` | `/api/responsiveTemplate/v1/systemResponsiveTemplates` | Gets a filtered, ordered and paged collection of system responsive templates. |
| `GET` | `/api/responsiveTemplate/v1/systemResponsiveTemplates/{id}` | Gets the system responsive template with the provided ID. |
| `GET` | `/api/responsiveTemplate/v1/systemResponsiveTemplatePages` | Gets the system responsive template pages. |

## api/scim/v2
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/scim/v2/Groups` | Retrieve a list of groups |
| `GET` | `/api/scim/v2/Groups/{id}` | Retrieve details of a group |
| `PATCH` | `/api/scim/v2/Groups/{id}` | Unassign or assign users to a group |
| `GET` | `/api/scim/v2/Users/{uid}` | Retrieve details of a user |
| `PUT` | `/api/scim/v2/Users/{uid}` | Update details of a user |
| `DELETE` | `/api/scim/v2/Users/{uid}` | Delete a user |
| `PATCH` | `/api/scim/v2/Users/{uid}` | Activate or deactivate a user or change user groups |
| `GET` | `/api/scim/v2/Users` | Retrieve a list of users |
| `POST` | `/api/scim/v2/Users` | Create a new user |

## api/script/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/script/v1/calculations` | Gets calculations. |
| `POST` | `/api/script/v1/calculations` | Creates a new custom calculation. |
| `GET` | `/api/script/v1/calculations/{id}` | Gets the calculation with the provided ID. |
| `PUT` | `/api/script/v1/calculations/{id}` | Updates custom calculations with the provided ID. |
| `DELETE` | `/api/script/v1/calculations/{id}` | Deletes the custom calculation with the provided ID. |
| `GET` | `/api/script/v1/calculations/{customCalculationId}/versions` | Gets all versions for custom calculation with the provided ID. |
| `GET` | `/api/script/v1/calculations/{customCalculationId}/versions/{versionId}` | Gets the version of the custom calculation with the provided ID. |
| `PUT` | `/api/script/v1/calculations/itemCalculations` | Updates selected calculations that will be executed on add/update item event |
| `GET` | `/api/script/v1/customactions` | Gets all custom actions. |
| `POST` | `/api/script/v1/customactions` | Saves a new custom action. |
| `GET` | `/api/script/v1/customactions/{id}` | Gets a custom action via its ID. |
| `PUT` | `/api/script/v1/customactions/{id}` | Updates custom actions. |
| `DELETE` | `/api/script/v1/customactions/{id}` | Deletes a custom action. |
| `GET` | `/api/script/v1/customactions/{id}/versions` | Gets all custom action versions. |
| `GET` | `/api/script/v1/customactions/{scriptId}/versions/{id}` | Gets the version via its ID. |
| `GET` | `/api/script/v1/customcalculations` | Gets custom calculations. |
| `POST` | `/api/script/v1/customcalculations` | Creates a new custom calculation. |
| `GET` | `/api/script/v1/customcalculations/{id}` | Gets the custom calculation with the provided ID. |
| `PUT` | `/api/script/v1/customcalculations/{id}` | Updates custom calculations. If the script loads a new WSDL version, forceProxyGeneration needs to be set to true. |
| `DELETE` | `/api/script/v1/customcalculations/{id}` | Deletes the custom calculation with the provided ID. |
| `GET` | `/api/script/v1/customcalculations/{customCalculationId}/versions` | Gets all versions for custom calculation with the provided ID. |
| `GET` | `/api/script/v1/customcalculations/{customCalculationId}/versions/{versionId}` | Gets the version of the custom calculation with the provided ID. |
| `GET` | `/api/script/v1/globalscripts` | Gets all global scripts. |
| `POST` | `/api/script/v1/globalscripts` | Creates a new global script. |
| `GET` | `/api/script/v1/globalscripts/{id}` | Gets a global script. |
| `PUT` | `/api/script/v1/globalscripts/{id}` | Updates a global script. |
| `DELETE` | `/api/script/v1/globalscripts/{id}` | Deletes a global script. |
| `PATCH` | `/api/script/v1/globalscripts/{id}` | Updates global script. |
| `GET` | `/api/script/v1/globalscripts/{id}/usage` | Gets a global script usage. |
| `GET` | `/api/script/v1/globalscripts/{id}/versions` |  |
| `GET` | `/api/script/v1/globalscripts/{scriptId}/versions/{id}` | Gets a global script version via its ID. |
| `GET` | `/api/script/v1/globalscripts/{scriptId}/versions/compare` | Gets list of script records details for comparing a script versions |
| `PATCH` | `/api/script/v1/globalscripts/{id}/active` | Patch global script active state |
| `GET` | `/api/script/v1/globalscripts/scripts/events` | Gets the list of global script events. |
| `GET` | `/api/script/v1/globalscripts/systemId` | Gets system id for requested script name. |
| `GET` | `/api/script/v1/products/{productId}/scripts` | Gets all product scripts and attached global scripts. |
| `POST` | `/api/script/v1/products/{productId}/scripts` | Creates a new product script or attaches the existing global script. |
| `GET` | `/api/script/v1/products/{productId}/scripts/{id}` | Gets a product script or a global script attached to a product. |
| `GET` | `/api/script/v1/products/{productId}/scripts/{scriptId}/versions` | Gets all product script versions. If the script is loading a new WSDL version, forceProxyGeneration needs to be set to true. |
| `GET` | `/api/script/v1/products/{productId}/scripts/{scriptId}/versions/{id}` | Gets the version via the product script of product ID and script ID. |
| `PUT` | `/api/script/v1/products/{productId}/scripts/{scriptId}` | Updates product scripts or updates events of global scripts (if global script ID is provided in the script ID parameter) |
| `DELETE` | `/api/script/v1/products/{productId}/scripts/{scriptId}` | Deletes the product script. |
| `GET` | `/api/script/v1/products/scripts/events` | Gets product system event lookups. |

## api/security/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/security/v1/passwordPolicy/active` | Gets active password policy. |
| `PUT` | `/api/security/v1/passwordPolicy/active` | Update Active Password Policy. |
| `GET` | `/api/security/v1/trustedapplications` | Gets Trusted Application configurations DEPRECATED |
| `POST` | `/api/security/v1/trustedapplications` | Creates new Trusted Application configuration with provided data.
Generates client credentials (clientId and clientSecret), which can not be changed. DEPRECATED |
| `GET` | `/api/security/v1/trustedapplications/{id}` | Gets the Trusted Application configuration with the provided id. DEPRECATED |
| `PUT` | `/api/security/v1/trustedapplications/{id}` | Updates an Trusted Application configuration with the provided id. DEPRECATED |
| `DELETE` | `/api/security/v1/trustedapplications/{id}` | Deletes Trusted Application configuration with provided id. DEPRECATED |
| `PATCH` | `/api/security/v1/trustedapplications/{id}/clientSecret` | Generates new client secret for Trusted Application configuration with the provided id. DEPRECATED |
| `PATCH` | `/api/security/v1/trustedapplications/{id}/jwtTokenSigningKey` | Generates new JWT token signing key for Trusted Application configuration with the provided id. DEPRECATED |

## api/security/v2
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/security/v2/trustedapplications` | Gets Trusted Application configurations |
| `POST` | `/api/security/v2/trustedapplications` | Creates new Trusted Application configuration with provided data.
Generates client credentials (clientId and clientSecret), which can not be changed. |
| `GET` | `/api/security/v2/trustedapplications/{id}` | Gets the Trusted Application configuration with the provided id. |
| `PUT` | `/api/security/v2/trustedapplications/{id}` | Updates an Trusted Application configuration with the provided id. |
| `DELETE` | `/api/security/v2/trustedapplications/{id}` | Deletes Trusted Application configuration with provided id. |
| `PATCH` | `/api/security/v2/trustedapplications/{id}/clientSecret` | Generates new client secret for Trusted Application configuration with the provided id. |
| `PATCH` | `/api/security/v2/trustedapplications/{id}/jwtGrantTokenSigningKey` | Generates new JWT token signing key for Trusted Application configuration with the provided id. |

## api/spii/v1
| Method | Path | Summary |
|--------|------|---------|
| `PATCH` | `/api/spii/v1/tenantMappings/{tenantId}` |  |

## api/v1/CartApi
| Method | Path | Summary |
|--------|------|---------|
| `POST` | `/api/v1/CartApi/CreateNew` | Creates the new cart. |

## api/v1/CustomerApi
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/v1/CustomerApi/GetCrmCustomerMapping` | Gets the customer mappings. |

## api/v1/ESign
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/v1/ESign/Callback` | Process callback requst from AdobeSign system based on provide query string parameters |

## api/v1/Quote
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/v1/Quote/Get` | Gets data for the active revision of a quote given by quote number or quote ID. |

## api/v1/TenantResourceConsumption
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/v1/TenantResourceConsumption/GetResourceConsumptionInfoForAllTenants` | Gets the resource consumption information for each tenant on current installation. It can be consumed only from default tenant. |
| `GET` | `/api/v1/TenantResourceConsumption/GetResourceConsumptionInfo` | Gets the resource consumption information for specific tenant on current installation. It can be consumed only from default tenant. |
| `GET` | `/api/v1/TenantResourceConsumption/GetResourceConsumptionInfoForCurrentTenant` | Gets the resource consumption information for current tenant. |
| `GET` | `/api/v1/TenantResourceConsumption/GetUserActivityData` | Gets the user activity data. |

## api/v1/ViewProposal
| Method | Path | Summary |
|--------|------|---------|
| `POST` | `/api/v1/ViewProposal/ExecuteViewProposalAction` | Executes the view proposal action. |

## api/v1/admin
| Method | Path | Summary |
|--------|------|---------|
| `PUT` | `/api/v1/admin/files/AdditionalFiles/subfolders` | Updates existing or Create new files |
| `GET` | `/api/v1/admin/files/AdditionalFiles` | Get all files |
| `PUT` | `/api/v1/admin/files/AdditionalFiles` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/AdditionalFiles` | Creates new files |
| `POST` | `/api/v1/admin/files/AdditionalFiles/{folderPath}` | Creates new files |
| `GET` | `/api/v1/admin/files/AdditionalFiles/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/AdditionalFiles/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/AdditionalFiles/{id}` | Deletes specified file |
| `GET` | `/api/v1/admin/Admin/GenerateSecretKey` | Generates the secret key suitable for SHA-256. |
| `GET` | `/api/v1/admin/AssetDefinition/GetInitData` | Gets the initialize data. |
| `POST` | `/api/v1/admin/AssetDefinition/SaveAssetDefinition` | Saves the asset definition. |
| `GET` | `/api/v1/admin/AssetDefinition/GenerateSecretKey` | Generates the secret key suitable for SHA-256. |
| `GET` | `/api/v1/admin/files/AttributeImage` | Get all files |
| `PUT` | `/api/v1/admin/files/AttributeImage` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/AttributeImage` | Creates new files |
| `GET` | `/api/v1/admin/files/AttributeImage/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/AttributeImage/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/AttributeImage/{id}` | Deletes specified file |
| `GET` | `/api/v1/admin/AttributeTranslationImportExport/GetInitData` | Gets the initialize data. |
| `GET` | `/api/v1/admin/files/CategoryImage` | Get all files |
| `PUT` | `/api/v1/admin/files/CategoryImage` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/CategoryImage` | Creates new files |
| `GET` | `/api/v1/admin/files/CategoryImage/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/CategoryImage/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/CategoryImage/{id}` | Deletes specified file |
| `GET` | `/api/v1/admin/CompaniesImportExport/Export` | Exports all companies and returns the XML file. |
| `POST` | `/api/v1/admin/CompaniesImportExport/Import` | Imports this instance. |
| `GET` | `/api/v1/admin/files/CompanyLogo` | Get all files |
| `PUT` | `/api/v1/admin/files/CompanyLogo` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/CompanyLogo` | Creates new files |
| `GET` | `/api/v1/admin/files/CompanyLogo/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/CompanyLogo/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/CompanyLogo/{id}` | Deletes specified file |
| `GET` | `/api/v1/admin/files/ContentFile` | Get all files DEPRECATED |
| `PUT` | `/api/v1/admin/files/ContentFile` | Updates existing or Create new files DEPRECATED |
| `POST` | `/api/v1/admin/files/ContentFile` | Creates new files DEPRECATED |
| `GET` | `/api/v1/admin/files/ContentFile/{id}` | Gets specified file DEPRECATED |
| `PUT` | `/api/v1/admin/files/ContentFile/{id}` | Updates specified file DEPRECATED |
| `DELETE` | `/api/v1/admin/files/ContentFile/{id}` | Deletes specified file DEPRECATED |
| `GET` | `/api/v1/admin/files/CustomImage` | Get all files |
| `PUT` | `/api/v1/admin/files/CustomImage` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/CustomImage` | Creates new files |
| `GET` | `/api/v1/admin/files/CustomImage/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/CustomImage/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/CustomImage/{id}` | Deletes specified file |
| `GET` | `/api/v1/admin/files/Fonts` | Get all files |
| `PUT` | `/api/v1/admin/files/Fonts` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/Fonts` | Creates new files |
| `GET` | `/api/v1/admin/files/Fonts/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/Fonts/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/Fonts/{id}` | Deletes specified file |
| `GET` | `/api/v1/admin/files/MarginHealthVisibilityImage` | Gets specified file |
| `PUT` | `/api/v1/admin/files/MarginHealthVisibilityImage` | Updates margin health visibility image by type |
| `GET` | `/api/v1/admin/files/MarginHealthVisibilityImage/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/MarginHealthVisibilityImage/{id}` | Updates specified file |
| `GET` | `/api/v1/admin/files/NotificationAttachment` | Gets specified file |
| `PUT` | `/api/v1/admin/files/NotificationAttachment` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/NotificationAttachment` | Creates new files |
| `GET` | `/api/v1/admin/files/NotificationAttachment/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/NotificationAttachment/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/NotificationAttachment/{id}` | Deletes specified file |
| `POST` | `/api/v1/admin/PricebookBulkImportExport/Export` | Exports the pricebook entries. |
| `POST` | `/api/v1/admin/PricebookBulkImportExport/GetData` | Gets the data. |
| `POST` | `/api/v1/admin/PricebookBulkImportExport/CancelJob` | Cancels the job. |
| `POST` | `/api/v1/admin/PricebookBulkImportExport/ChangeRequestEmail` | Changes the request email. |
| `GET` | `/api/v1/admin/Pricebooks/GetMarketSelectionInitData` | Gets market selection data. |
| `POST` | `/api/v1/admin/Pricebooks/SetMarketFilter` | Sets market filter to current session. |
| `GET` | `/api/v1/admin/Pricebooks/GetPricebookSettingsInitData` | Gets pricebook settings data. |
| `GET` | `/api/v1/admin/Pricebooks/GetPricebooksPerMarketInitData` | Gets all pricebooks in particular market |
| `GET` | `/api/v1/admin/Pricebooks/GetAllPricebooksPerMarket` | Gets all pricebooks in particular market |
| `POST` | `/api/v1/admin/Pricebooks/GetFilteredPricebooksPerMarket` | Gets filtered and sorted pricebooks in particular market. |
| `POST` | `/api/v1/admin/Pricebooks/DeletePricebook` | Deletes pricebook by id. |
| `GET` | `/api/v1/admin/Pricebooks/GetPricebookEntriesInitData` | Gets the first page of pricebook entries for the specified pricebook. |
| `POST` | `/api/v1/admin/Pricebooks/GetFilteredPricebookEntries` | Gets pricebook entries for the specified pricebook which satisfy filtering, paging and sorting criteria. |
| `POST` | `/api/v1/admin/Pricebooks/SavePricebookSettings` | Saves pricebook settings |
| `POST` | `/api/v1/admin/Pricebooks/GetHistoryData` | Gets the history data. |
| `GET` | `/api/v1/admin/Pricebooks/GetHistoryInitData` | Gets the initialize history data. |
| `GET` | `/api/v1/admin/Pricebooks/GetPricebookDefinitionInitData` | Gets the definition of pricebook with specified id. |
| `POST` | `/api/v1/admin/Pricebooks/SavePricebookDefinition` | Saves pricebook definition |
| `POST` | `/api/v1/admin/Pricebooks/SavePricebookEntry` | Saves or edits pricebook entry. |
| `POST` | `/api/v1/admin/Pricebooks/SavePricebookEntries` | Saves or updates pricebook entries. |
| `POST` | `/api/v1/admin/Pricebooks/DeletePricebookEntry` | Deletes pricebook entry specified by entryId from pricebook specified by pricebook Id. |
| `GET` | `/api/v1/admin/Pricebooks/GetCustomFields` | Gets custom fields for provided field type id |
| `POST` | `/api/v1/admin/Pricebooks/DeleteAllEntries` |  |
| `GET` | `/api/v1/admin/Pricebooks/GenerateSecretKey` | Generates the secret key suitable for SHA-256. |
| `POST` | `/api/v1/admin/ProductBulkImportExport/GetData` | Gets the data. |
| `POST` | `/api/v1/admin/ProductBulkImportExport/Export` | Exports the products. |
| `GET` | `/api/v1/admin/ProductBulkImportExport/GetCategories` | Gets the categories for filter. |
| `GET` | `/api/v1/admin/ProductBulkImportExport/GetPricingMechanisms` | Gets the pricing mechanisms. |
| `GET` | `/api/v1/admin/ProductBulkImportExport/GetPermissions` | Gets the CPQ permissions from filter. |
| `POST` | `/api/v1/admin/ProductBulkImportExport/CancelJob` | Cancels the job. |
| `POST` | `/api/v1/admin/ProductBulkImportExport/ChangeRequestEmail` | Changes the request email. |
| `GET` | `/api/v1/admin/files/ProductImage` | Get all files |
| `PUT` | `/api/v1/admin/files/ProductImage` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/ProductImage` | Creates new files |
| `GET` | `/api/v1/admin/files/ProductImage/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/ProductImage/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/ProductImage/{id}` | Deletes specified file |
| `GET` | `/api/v1/admin/files/ProductTemplates` | Get all files |
| `PUT` | `/api/v1/admin/files/ProductTemplates` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/ProductTemplates` | Creates new files |
| `GET` | `/api/v1/admin/files/ProductTemplates/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/ProductTemplates/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/ProductTemplates/{id}` | Deletes specified file |
| `GET` | `/api/v1/admin/ProxyUser/GetInitData` |  |
| `POST` | `/api/v1/admin/ProxyUser/GetUsersForTenant` |  |
| `POST` | `/api/v1/admin/ProxyUser/LoginAsProxyUser` |  |
| `GET` | `/api/v1/admin/files/QuoteActionImage` | Get all files |
| `PUT` | `/api/v1/admin/files/QuoteActionImage` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/QuoteActionImage` | Creates new files |
| `GET` | `/api/v1/admin/files/QuoteActionImage/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/QuoteActionImage/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/QuoteActionImage/{id}` | Deletes specified file |
| `GET` | `/api/v1/admin/QuoteTabPermissions/GetListInitData` | Gets the initialize data. |
| `POST` | `/api/v1/admin/QuoteTabPermissions/DeletePermission` | Deletes the quote tab permission with specified identifier. |
| `GET` | `/api/v1/admin/QuoteTabPermissions/GetPermission` | Gets the quote tab permission with specified id. |
| `POST` | `/api/v1/admin/QuoteTabPermissions/SavePermission` | Saves the quote tab permission. |
| `GET` | `/api/v1/admin/QuoteTabPermissions/GenerateSecretKey` | Generates the secret key suitable for SHA-256. |
| `POST` | `/api/v1/admin/Scripting/CheckSyntax` | Checks the syntax of provided script. |
| `GET` | `/api/v1/admin/Scripting/GenerateSecretKey` | Generates the secret key suitable for SHA-256. |
| `GET` | `/api/v1/admin/TablesOnQuotes/GetQuoteTableInitData` | Gets the initialize data. |
| `POST` | `/api/v1/admin/TablesOnQuotes/SaveQuoteTableModelWithPermissions` | Saves quote table model with permissions assigned to it |
| `POST` | `/api/v1/admin/TablesOnQuotes/GetFormatedPermsissionText` | Gets formated display text for permissions |
| `GET` | `/api/v1/admin/TablesOnQuotes/GetQuoteTableColumnList` | Gets the list of quote table columns for table identifier |
| `GET` | `/api/v1/admin/TablesOnQuotes/GetAllPermissionsAndStatuses` | Gets all cpq permissions and statuses . |
| `GET` | `/api/v1/admin/TablesOnQuotes/GetQuoteTableGroups` | Gets quote table groups |
| `POST` | `/api/v1/admin/TablesOnQuotes/SaveQuoteTableColumns` | Saves quote table columns |
| `POST` | `/api/v1/admin/TablesOnQuotes/DeletePermission` | Deletes the quote table permission with specified identifier. |
| `GET` | `/api/v1/admin/TablesOnQuotes/GetListInitData` | Gets the list of quote table definitions. |
| `POST` | `/api/v1/admin/TablesOnQuotes/DeleteQuoteTable` | Deletes the quote table with specified identifier. |
| `GET` | `/api/v1/admin/TablesOnQuotes/GetQuoteTableTranslations` | Gets the list of quote table translations. |
| `POST` | `/api/v1/admin/TablesOnQuotes/SaveQuoteTableTranslations` | Saves quote table translations |
| `GET` | `/api/v1/admin/TablesOnQuotes/GetInitDataForActionsTab` | Gets the initialize data for actions tab. |
| `POST` | `/api/v1/admin/TablesOnQuotes/SaveQuoteTableActions` | Saves the quote table actions. |
| `GET` | `/api/v1/admin/TablesOnQuotes/GenerateSecretKey` | Generates the secret key suitable for SHA-256. |
| `GET` | `/api/v1/admin/files/Temp` | GET |
| `PUT` | `/api/v1/admin/files/Temp` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/Temp` | POST |
| `GET` | `/api/v1/admin/files/Temp/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/Temp/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/Temp/{id}` | Deletes specified file |
| `GET` | `/api/v1/admin/files/TopMenuImage` | Get all files |
| `PUT` | `/api/v1/admin/files/TopMenuImage` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/TopMenuImage` | Creates new files |
| `GET` | `/api/v1/admin/files/TopMenuImage/{id}` | Gets specified file |
| `PUT` | `/api/v1/admin/files/TopMenuImage/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/TopMenuImage/{id}` | Deletes specified file |
| `POST` | `/api/v1/admin/UserBulkImportExport/GetData` | Gets the data. |
| `GET` | `/api/v1/admin/UserBulkImportExport/GetInitData` | Gets the user export initialize data. |
| `POST` | `/api/v1/admin/UserBulkImportExport/Export` | Exports the users. |
| `POST` | `/api/v1/admin/UserBulkImportExport/CancelJob` | Cancels the job. |
| `POST` | `/api/v1/admin/UserBulkImportExport/ChangeRequestEmail` | Changes the request email. |
| `GET` | `/api/v1/admin/UsersPermissionGroups/GetPermission` | Gets permission data |
| `POST` | `/api/v1/admin/UsersPermissionGroups/SavePermission` | Saves Users permission group |
| `GET` | `/api/v1/admin/UsersPermissionGroups/GetUsers` | Searches all users and returns users that contain specified query string |
| `GET` | `/api/v1/admin/UsersPermissionGroups/GetUsersBelongingToGroup` | Displays list of users that belong to specified permisison group. Does not include user total count. |
| `POST` | `/api/v1/admin/UsersPermissionGroups/GetUsersBelongingToGroup` | Displays list of users that belong to specified permisison group. Does not include user total count. |
| `GET` | `/api/v1/admin/UsersPermissionGroups/GetUsersBelongingToGroupInitial` | Displays list of users that belong to specified permisison group. Includes total count of users. |
| `POST` | `/api/v1/admin/UsersPermissionGroups/GetUsersBelongingToGroupInitial` | Displays list of users that belong to specified permisison group. Includes total count of users. |
| `GET` | `/api/v1/admin/UsersPermissionGroups/GenerateSecretKey` | Generates the secret key suitable for SHA-256. |
| `GET` | `/api/v1/admin/files/Xslt` | Get By Type |
| `PUT` | `/api/v1/admin/files/Xslt` | Updates existing or Create new files |
| `POST` | `/api/v1/admin/files/Xslt` | Post By Type |
| `GET` | `/api/v1/admin/files/Xslt/{id}` | Get By Type and id |
| `PUT` | `/api/v1/admin/files/Xslt/{id}` | Updates specified file |
| `DELETE` | `/api/v1/admin/files/Xslt/{id}` | Delete By Type and id |

## api/v1/countryState
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/v1/countryState` | Gets countries and states |

## api/v1/customers
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/v1/customers` | Get list of customers with provided customerCode |
| `PATCH` | `/api/v1/customers/c4c/update/{crmAccountId}` | Update customer code by customer CRM Account Id |

## api/v1/documentGeneration
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/v1/documentGeneration/{quoteId}/templates` | Gets all available document generation templates. |
| `GET` | `/api/v1/documentGeneration/{quoteId}/templates/{templateId}` | Gets document template on quote. |
| `POST` | `/api/v1/documentGeneration/{quoteId}/templates/{templateId}` | Customizes quote document template. |
| `POST` | `/api/v1/documentGeneration/{quoteId}/templates/{templateId}/customization` | Get customized document template |
| `POST` | `/api/v1/documentGeneration/{quoteId}/templates/{templateId}/relatedField` | Save value of related custom field |
| `POST` | `/api/v1/documentGeneration/{quoteId}/{ownerId}/selectLanguage/{selectedLanguageId}` | Save selected language on Customer's Language field. Relevant only for Quote V1 context. |
| `GET` | `/api/v1/documentGeneration/{quoteId}/templates/{templateId}/sections/{sectionId}/file` | Gets section template file for download. |
| `POST` | `/api/v1/documentGeneration/{quoteId}/document` | Customizes template and generates quote document. |
| `POST` | `/api/v1/documentGeneration/{templateId}/document/favourite` | Saves document template with isFavourite property |
| `GET` | `/api/v1/documentGeneration/{quoteId}/templates/generationInfo` | Gets additional informations for document generation on quote |
| `GET` | `/api/v1/documentGeneration/documents/{generatedDocumentId}` | Gets generated document details. |
| `GET` | `/api/v1/documentGeneration/documents/{generatedDocumentId}/download` | Download generated document. |
| `GET` | `/api/v1/documentGeneration/{quoteId}/documents/defaultEmailSettings` | Gets default email settings. |
| `POST` | `/api/v1/documentGeneration/{quoteId}/documents/sendEmail` | Send an email to the customer after the document generation is complete. |
| `GET` | `/api/v1/documentGeneration/{quoteId}/documents/proposalLink` | Get the proposal link for the given quote translated into the specified language. |
| `GET` | `/api/v1/documentGeneration/{quoteId}/documents/attachments` | Gets all available document attachments for the given quote identifier. |
| `POST` | `/api/v1/documentGeneration/uploadAttachments` | Save uploaded cart attachments |
| `GET` | `/api/v1/documentGeneration/specialFiles` | Gets available special files for user |
| `POST` | `/api/v1/documentGeneration/specialFiles` | Upload special file |
| `DELETE` | `/api/v1/documentGeneration/specialFiles/{filename}` | Deletes a special user file identified by the specified filename. |
| `POST` | `/api/v1/documentGeneration/{quoteId}/preview` | Preview template file |
| `GET` | `/api/v1/documentGeneration/preview/{fileName}/{templateId}` | Preview document file for given quote number |
| `POST` | `/api/v1/documentGeneration/integrations/{quoteId}/sendToCommerce` | Releases quote and proposal to Sap Commerce. |
| `POST` | `/api/v1/documentGeneration/integrations/{quoteId}/attachDocumentToOpportunityAndSalesQuote/{actionId}` | Attach document to opportunity, sales quote, or both. |
| `POST` | `/api/v1/documentGeneration/integrations/{quoteId}/sendDocumentToSiebelCRM` | Send document to Siebel CRM. |
| `POST` | `/api/v1/documentGeneration/integrations/{quoteId}/sendToAdobeSign` | Send document to AdobeSign. |
| `POST` | `/api/v1/documentGeneration/integrations/{quoteId}/sendToDocuSign` | Send document to DocuSign. |
| `GET` | `/api/v1/documentGeneration/integrations/{quoteId}/availableSigners` | Gets available signers for AdobeSign and DocuSign integrations. |
| `GET` | `/api/v1/documentGeneration/integrations/availableCounterSigners` | Gets available counter signers for DocuSign integrations. |
| `GET` | `/api/v1/documentGeneration/integrations/{quoteId}/docuSignSettings` | Get DocuSign integration settings. |

## api/v1/markets
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/v1/markets` | Get markets |

## api/v1/quote
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/v1/quote/visibility` | Get all quote visibility conditions. |
| `POST` | `/api/v1/quote/visibility` | Add quote 20 visibility rule. |
| `GET` | `/api/v1/quote/visibility/{id}` | Get quote 2.0 visibility rule by its ID. |
| `PUT` | `/api/v1/quote/visibility/{id}` | Update Quote 2.0 Visibility rule. |
| `DELETE` | `/api/v1/quote/visibility/{id}` | Delete quote 20 visibility rule. |
| `GET` | `/api/v1/quote/visibility/permissionsPriority` | Get quote 2.0 visibility permissions type priority. |
| `PUT` | `/api/v1/quote/visibility/permissionsPriority` | Update quote 2.0 visibility permissions type priority. |

## api/v1/quotes
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/v1/quotes` | Gets Quote List. |
| `POST` | `/api/v1/quotes` | Creates new quote. |
| `GET` | `/api/v1/quotes/{quoteId}/revisions` | Gets quote revisions. |
| `GET` | `/api/v1/quotes/{quoteId}/documents` | Gets the documents generated from the quote. |
| `GET` | `/api/v1/quotes/{quoteId}/attachments` | Gets Quote's attachments |
| `POST` | `/api/v1/quotes/{quoteId}/attachments` | Uploads quote attachments. |
| `GET` | `/api/v1/quotes/{quoteId}/attachments/{attachmentId}` | Gets prepeared attachment for download |
| `DELETE` | `/api/v1/quotes/{quoteId}/attachments/{attachmentId}` | Deletes quote attachment. |
| `GET` | `/api/v1/quotes/{quoteId}/documents/{documentId}/file` | Gets prepared document for download |
| `POST` | `/api/v1/quotes/{quoteId}/actions/{actionId}/invoke` | Executes the action (either standard or custom, both are supported). |
| `POST` | `/api/v1/quotes/{quoteId}/quoteTables/{tableName}/actions/{actionId}/invoke` | Executes the Quote table action (either standard or custom, both are supported). |
| `GET` | `/api/v1/quotes/{quoteId}/quoteTables/{tableName}/actions` | Get custom actions. |
| `GET` | `/api/v1/quotes/{quoteId}/actions` | Gets available standard and custom actions for the quote. |
| `GET` | `/api/v1/quotes/{quoteId}/comments` | Get collaboration comments for the quote. |
| `POST` | `/api/v1/quotes/{quoteId}/comments` | Post collaboration comments for the quote. |
| `GET` | `/api/v1/quotes/{quoteId}/items/{itemId}/comments` | Gets the quote item comments. |
| `POST` | `/api/v1/quotes/{quoteId}/items/{itemId}/comments` | Posts quote item comments. |
| `GET` | `/api/v1/quotes/{quoteId}` | Gets the quote. |
| `DELETE` | `/api/v1/quotes/{quoteId}` | Delete Quote |
| `PATCH` | `/api/v1/quotes/{quoteId}` | Update Quote standard and custom fields |
| `PATCH` | `/api/v1/quotes/{quoteId}/customers/{roleId}` | Updates Customer standard and custom fields on Quote. |
| `GET` | `/api/v1/quotes/{quoteId}/items` | Get the items from the quote. |
| `POST` | `/api/v1/quotes/{quoteId}/items` | Add items to quote |
| `GET` | `/api/v1/quotes/{quoteId}/items/{itemId}` | Get the specific item from the quote. |
| `DELETE` | `/api/v1/quotes/{quoteId}/items/{itemId}` | Delete Quote Item |
| `PATCH` | `/api/v1/quotes/{quoteId}/items/{itemId}` | Update Quote item fields and custom fields. |
| `GET` | `/api/v1/quotes/{quoteId}/productTypes` | Gets product types |
| `GET` | `/api/v1/quotes/{quoteId}/productTypes/$count` | Gets product types count |
| `GET` | `/api/v1/quotes/{quoteId}/quoteTables/{tableName}/rows` | Get Quote Table |
| `POST` | `/api/v1/quotes/{quoteId}/quoteTables/{tableName}/rows` | Inserts new row in quote table. |
| `DELETE` | `/api/v1/quotes/{quoteId}/quoteTables/{tableName}/rows/{rowId}` | Delete Quote Table Row |
| `PATCH` | `/api/v1/quotes/{quoteId}/quoteTables/{tableName}/rows/{rowId}` | Updates single row in quote table. |
| `GET` | `/api/v1/quotes/{quoteId}/quoteTables/{tableName}/rows/$count` | Get Quote Table |
| `GET` | `/api/v1/quotes/{quoteId}/items/$count` | Get the items count from the quote. |
| `GET` | `/api/v1/quotes/{quoteId}/items/{itemId}/selectedAttributes` | Get the selected attributes for the quote item. |
| `GET` | `/api/v1/quotes/{quoteId}/items/{itemId}/pricingConditions` | Gets quote item pricing conditions. |
| `GET` | `/api/v1/quotes/{quoteId}/items/{itemId}/conditions` | Gets quote item conditions from pricing document. |
| `GET` | `/api/v1/quotes/{quoteId}/pricingConditions` | Gets quote header pricing conditions. |
| `GET` | `/api/v1/quotes/{quoteId}/conditions` | Gets quote header conditions from pricing document. |
| `GET` | `/api/v1/quotes/{quoteId}/involvedParties` | Gets the involved parties on the quote. |
| `POST` | `/api/v1/quotes/{quoteId}/involvedParties` | Adds the involved party to the specified quote. |
| `DELETE` | `/api/v1/quotes/{quoteId}/involvedParties/{involvedPartyId}` | Deletes involved party. |
| `PATCH` | `/api/v1/quotes/{quoteId}/involvedParties/{involvedPartyId}` | Updates involved party. |
| `GET` | `/api/v1/quotes/{quoteId}/items/{itemId}/actions` | Gets available actions for quote item. |
| `POST` | `/api/v1/quotes/{quoteId}/items/{itemId}/actions/{actionId}/invoke` | Invokes selected actions on quote item |
| `GET` | `/api/v1/quotes/{quoteId}/approvals/history` | Get quote approval history. |
| `GET` | `/api/v1/quotes/{quoteId}/approvals` | Gets broken rules. |
| `GET` | `/api/v1/quotes/{quoteId}/approvals/responsibilities` | Gets broken rules ready for approval. |

## api/v1/taxation
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/v1/taxation` | Get all taxation records. |
| `POST` | `/api/v1/taxation` | Add taxes in bulk. |
| `PUT` | `/api/v1/taxation/{id}` | Update taxation. |
| `DELETE` | `/api/v1/taxation/{id}` | Remove taxation by taxation Id. |
| `POST` | `/api/v1/taxation/businessPartnerFunction` | Change value of sales tax business partner function param |

## api/workflow/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/api/workflow/v1/actions` | Gets all actions. |
| `POST` | `/api/workflow/v1/actions` | Creates a new custom action. |
| `GET` | `/api/workflow/v1/actions/{actionId}/translations/{dictionaryId}` | Gets action translation data using the action identifier and the dictionary identifier. |
| `GET` | `/api/workflow/v1/actions/{actionId}` | Gets the action using its identifier. |
| `PUT` | `/api/workflow/v1/actions/{actionId}` | Updates an existing action. |
| `DELETE` | `/api/workflow/v1/actions/{actionId}` | Deletes a custom action. |
| `GET` | `/api/workflow/v1/actions/images` | Gets action images. |
| `GET` | `/api/workflow/v1/actions/{actionId}/defaultImage` | Gets default action image by action id. |
| `GET` | `/api/workflow/v1/actions/{actionId}/versions/{versionId}` | Gets the custom action script version via its version identifier. |
| `POST` | `/api/workflow/v1/actions/bulk` | Inserts or updates action details in bulk. |
| `POST` | `/api/workflow/v1/actions/bulk/translations` | Inserts or updates action translation details in bulk. |
| `PUT` | `/api/workflow/v1/actions/{actionId}/translations` | Updates translations for the specified action. |
| `GET` | `/api/workflow/v1/actions/{actionId}/versions` | Get custom action script version history list for the given action identifier. |
| `GET` | `/api/workflow/v1/actions/parameterSettings` | Gets values of application parameters related to actions. |
| `POST` | `/api/workflow/v1/actions/parameterSettings/{parameterName}/{state}` | Saves the value of a specific action-related application parameter. |
| `POST` | `/api/workflow/v1/actions/displayImagesForQuoteActions/{state}` | Sets application parameter value which indicates whether the images for quote actions should be displayed |
| `GET` | `/api/workflow/v1/actions/displayImagesForQuoteActions` | Gets application parameter value which indicates whether the images for quote actions should be displayed |
| `POST` | `/api/workflow/v1/actions/onlyPreviewDocumentIfApprovalNeeded/{state}` | Sets application parameter value which indicates whether users can only preview document, if quote needs approval |
| `GET` | `/api/workflow/v1/actions/onlyPreviewDocumentIfApprovalNeeded` | Gets application parameter value which indicates whether users can only preview document, if quote needs approval |
| `GET` | `/api/workflow/v1/actions/systemId` | Gets a unique System ID based on the provided action name. |
| `GET` | `/api/workflow/v1/approvalBranch` | Gets all approval branches. |
| `POST` | `/api/workflow/v1/approvalBranch` | Creates new approval branch. |
| `GET` | `/api/workflow/v1/approvalBranch/{id}` | Gets the specified approval barnch by its Identifier. |
| `PUT` | `/api/workflow/v1/approvalBranch/{id}` | Updates the specified approval branch. |
| `DELETE` | `/api/workflow/v1/approvalBranch/{id}` | Deletes existing approval branch. |
| `GET` | `/api/workflow/v1/approvalBranch/{id}/translations/{dictionaryId}` | Gets branch translation data by branch's and dictionary’s identifiers. |
| `POST` | `/api/workflow/v1/approvalBranch/{id}/translations` | Saves translations for branch with provided id |
| `GET` | `/api/workflow/v1/approvalRules/{id}` | Gets the specified approval rule by its Identifier. |
| `PUT` | `/api/workflow/v1/approvalRules/{id}` | Updates the specified approval rule. |
| `DELETE` | `/api/workflow/v1/approvalRules/{id}` | Deletes existing approval rule. |
| `GET` | `/api/workflow/v1/approvalRules` | Gets all approval rules. |
| `POST` | `/api/workflow/v1/approvalRules` | Creates new approval rule. |
| `GET` | `/api/workflow/v1/approvalRules/{approvalRuleId}/translations/{dictionaryId}` | Gets approval rule translation details by identifier. |
| `PUT` | `/api/workflow/v1/approvalRules/{approvalRuleId}/translations` | Updates translations for specified approval rule. |
| `POST` | `/api/workflow/v1/approvalRules/bulk/translations` | Inserts or updates approval rule translation details in bulk. |
| `POST` | `/api/workflow/v1/approvalRules/bulk` | Creates or updates approval rules in bulk. |
| `GET` | `/api/workflow/v1/approvers/delegated` | Gets all delegated approvers. |
| `PUT` | `/api/workflow/v1/approvers/delegated/{id}` | Updates the specified delegated approver. |
| `GET` | `/api/workflow/v1/approvers/dynamicRules` | Gets all dynamic approval rules (custom approver selection logic). |
| `POST` | `/api/workflow/v1/approvers/dynamicRules` | Creates a new dynamic approval rule (custom approver selection logic). |
| `GET` | `/api/workflow/v1/approvers/dynamicRules/{id}` | Gets the specified dynamic approval rule (custom approver selection logic) by identifier. |
| `PUT` | `/api/workflow/v1/approvers/dynamicRules/{id}` | Updates the specified dynamic approval rule (custom approver selection logic). |
| `DELETE` | `/api/workflow/v1/approvers/dynamicRules/{id}` | Deletes existing dynamic approval rule (custom approver selection logic) by identifier. |
| `POST` | `/api/workflow/v1/approvers/dynamicRules/bulk` | Creates or updates dynamic approval rules (custom approver selection logic) in bulk. |
| `GET` | `/api/workflow/v1/itemActions` | Get all Item Actions. |
| `GET` | `/api/workflow/v1/itemActions/{itemActionId}` | Gets the Item Action by ID. |
| `GET` | `/api/workflow/v1/itemActions/{itemActionId}/translations/{dictionaryId}` | Gets item action translation data using the item action identifier and the dictionary identifier. |
| `PUT` | `/api/workflow/v1/itemActions/translations` | Updates translations for the specified Item Action. |
| `GET` | `/api/workflow/v1/itemActionsWorkflow/{quoteType}` | Get all Item Actions Workflow for specific Quote Type (tabId). |
| `PUT` | `/api/workflow/v1/itemActionsWorkflow/{quoteType}` | Assign Item Actions to specific status. |
| `GET` | `/api/workflow/v1/likelihoodOfApprovals` | Get all Likelihood of Approvals. |
| `POST` | `/api/workflow/v1/likelihoodOfApprovals` | Creates a new likelihood of approval. |
| `GET` | `/api/workflow/v1/likelihoodOfApprovals/{id}` | Get the likelihood of approval by its identifier. |
| `PUT` | `/api/workflow/v1/likelihoodOfApprovals/{id}` | Updates the specified likelihood of approval. |
| `DELETE` | `/api/workflow/v1/likelihoodOfApprovals/{id}` | Deletes the specified Likelihood of Approval. |
| `GET` | `/api/workflow/v1/likelihoodOfApprovals/fieldTypes` | Gets data for approval probability field type drop down list. |
| `GET` | `/api/workflow/v1/likelihoodOfApprovals/fields/{fieldType}` | Gets data for field drop down list. |
| `GET` | `/api/workflow/v1/likelihoodOfApprovals/productTypes` | Gets data for Product type drop down list. |
| `GET` | `/api/workflow/v1/notifications` | Gets all notifications. |
| `POST` | `/api/workflow/v1/notifications` | Creates a new notification. |
| `GET` | `/api/workflow/v1/notifications/{notificationId}` | Get the notification by its identifier. |
| `PUT` | `/api/workflow/v1/notifications/{notificationId}` | Updates the specified notification. |
| `DELETE` | `/api/workflow/v1/notifications/{notificationId}` | Deletes the specified notification by identifier. |
| `POST` | `/api/workflow/v1/notifications/bulk` | Bulk creating/updating of notifications. |
| `GET` | `/api/workflow/v1/notifications/{notificationId}/content` | Get all notification contents associated to the specified notification. |
| `POST` | `/api/workflow/v1/notifications/{notificationId}/content` | Creates a new notification content for the specified notification. |
| `GET` | `/api/workflow/v1/notifications/content/{contentId}` | Gets the specified notification content by Identifier. |
| `PUT` | `/api/workflow/v1/notifications/{notificationId}/content/{contentId}` | Updates the specified notification content for the specified notification. |
| `DELETE` | `/api/workflow/v1/notifications/{notificationId}/content/{contentId}` | Deletes the specified notification content by identifier. |
| `POST` | `/api/workflow/v1/notifications/content/bulk` | Bulk creating/updating of notification contents. |
| `GET` | `/api/workflow/v1/orderStatuses` | Get all statuses. |
| `POST` | `/api/workflow/v1/orderStatuses` | Creates new status. |
| `GET` | `/api/workflow/v1/orderStatuses/{statusId}` | Get order status details by identifier. |
| `PUT` | `/api/workflow/v1/orderStatuses/{statusId}` | Updates existing status. |
| `DELETE` | `/api/workflow/v1/orderStatuses/{statusId}` | Deletes existing status. |
| `POST` | `/api/workflow/v1/orderStatuses/bulk` | Updates existing or creates new status from provided collection. |
| `PUT` | `/api/workflow/v1/orderStatuses/{statusId}/translations` | Creates new or updates translations for the name of the specified status. |
| `GET` | `/api/workflow/v1/orderStatuses/{statusId}/translations/{dictionaryId}` | Get status translation details by identifier. |
| `POST` | `/api/workflow/v1/orderStatuses/bulk/translations` | Inserts or Updates status translation details. |
| `GET` | `/api/workflow/v1/workflow` | Gets all Workflow Actions. |
| `GET` | `/api/workflow/v1/workflow/quoteType/{quoteTypeId}/startStatus/{startStatusId}/endStatus/{endStatusId}` | Gets the Workflow Action by QuoteTypeId, StartStatusId and EndStatusId. |
| `PUT` | `/api/workflow/v1/workflow/quoteType/{quoteTypeId}/startStatus/{startStatusId}/endStatus/{endStatusId}` | Updates Workflow actions. |
| `POST` | `/api/workflow/v1/workflow/bulk` | Bulk create workflow actions. |
| `DELETE` | `/api/workflow/v1/workflow/quoteType/{quoteTypeId}/startStatus/{startStatusId}/endStatus/{endStatusId}/actions/{actionId}` | Deletes a workflow action. |
| `DELETE` | `/api/workflow/v1/workflow/quoteType/{quoteTypeId}` | Deletes all workflow actions for the given Quote Type. |
| `GET` | `/api/workflow/v1/permissions` | Get workflow permissions. |
| `POST` | `/api/workflow/v1/permissions` | Replace the user types assigned to an action with a new set of user types. |
| `DELETE` | `/api/workflow/v1/permissions/action/{actionId}/userType/{userTypeId}` | Deletes the workflow permissions that are assigned to a user type for an action. |

## oauth/currentToken
| Method | Path | Summary |
|--------|------|---------|
| `DELETE` | `/oauth/currentToken` | Revokes current access token and related refresh token if issued. |

## oauth/tokens
| Method | Path | Summary |
|--------|------|---------|
| `DELETE` | `/oauth/tokens` | Revokes all access and refresh tokens issued for current user. |

## oauth/users/{userId}
| Method | Path | Summary |
|--------|------|---------|
| `DELETE` | `/oauth/users/{userId}/tokens` | Revokes all access and refresh tokens issued for user with provided id.
This method requires Access Rights administrator permission. |

## setup/api/v1
| Method | Path | Summary |
|--------|------|---------|
| `GET` | `/setup/api/v1/admin/files/AdditionalFiles` | Get all files |
| `PUT` | `/setup/api/v1/admin/files/AdditionalFiles` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/AdditionalFiles` | Creates new files |
| `POST` | `/setup/api/v1/admin/files/AdditionalFiles/{folderPath}` | Creates new files |
| `GET` | `/setup/api/v1/admin/files/AdditionalFiles/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/AdditionalFiles/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/AdditionalFiles/{id}` | Deletes specified file |
| `GET` | `/setup/api/v1/admin/assetmodal` | Retrieves a list of asset modal column definitions. |
| `PUT` | `/setup/api/v1/admin/assetmodal` | Updates the asset modal column definition with the specified details. |
| `POST` | `/setup/api/v1/admin/assetmodal` | Insert the specified asset modal column definition. |
| `GET` | `/setup/api/v1/admin/assetmodal/nextRank` | Retrieves the next available rank for an asset modal column. |
| `GET` | `/setup/api/v1/admin/assetmodal/rankings` | Retrieves a list of asset modal column rankings. |
| `POST` | `/setup/api/v1/admin/assetmodal/rankings` | Updates the rankings of asset modal columns based on the provided list of ranking items. |
| `GET` | `/setup/api/v1/admin/assetmodal/columnName` | Creates unique column name by label |
| `DELETE` | `/setup/api/v1/admin/assetmodal/{columnId}` | Delete asset column definition |
| `GET` | `/setup/api/v1/admin/assets` | Gets list of Asset Column Definitions |
| `GET` | `/setup/api/v1/admin/assets/columnName` | Creates unique column name by label |
| `GET` | `/setup/api/v1/admin/assets/nextRank` | Gets next free rank for asset column |
| `POST` | `/setup/api/v1/admin/assets/save` | Saves asset column definition |
| `DELETE` | `/setup/api/v1/admin/assets/delete/{columnId}` | Delete asset column definition |
| `GET` | `/setup/api/v1/admin/assets/rankings` | Gets rankings of the asset column definitions |
| `POST` | `/setup/api/v1/admin/assets/rankings` | Update the ranking of the asset column definitions |
| `GET` | `/setup/api/v1/admin/assets/brimPayloadProperties` | Gets Brim payload properties |
| `GET` | `/setup/api/v1/admin/files/AttributeImage` | Get all files |
| `PUT` | `/setup/api/v1/admin/files/AttributeImage` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/AttributeImage` | Creates new files |
| `GET` | `/setup/api/v1/admin/files/AttributeImage/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/AttributeImage/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/AttributeImage/{id}` | Deletes specified file |
| `GET` | `/setup/api/v1/admin/auditTrail/userAction` | Gets the user action audit trail records. |
| `GET` | `/setup/api/v1/admin/auditTrail/adminAction` | Gets the admin action audit trail records. |
| `GET` | `/setup/api/v1/admin/auditTrail/productAction` | Gets the product action audit trail records. |
| `GET` | `/setup/api/v1/admin/auditTrail/pricebookAction` | Gets pricebook audit trail. |
| `GET` | `/setup/api/v1/admin/auditTrail/customTableAction` | Gets the custom table action audit trail records. |
| `GET` | `/setup/api/v1/admin/auditTrail/attributeAction` | Gets the attribute action audit trail records. |
| `GET` | `/setup/api/v1/admin/auditTrail/parametersAction` | Gets the parameters action audit trail records. |
| `POST` | `/setup/api/v1/admin/brimProvider/{isConnected}` | Save BRIM Provider Connected Param |
| `GET` | `/setup/api/v1/admin/brimProvider` | Get BRIM Provider Connected Parameter |
| `GET` | `/setup/api/v1/admin/brimProvider/parameters` | Get Contract Duration Default Parameters |
| `POST` | `/setup/api/v1/admin/brimProvider/parameters` | Save Contract Duration Default Parameters |
| `GET` | `/setup/api/v1/admin/brimProvider/partnerFunctions` | Gets the list of partner functions. |
| `GET` | `/setup/api/v1/admin/brimProvider/cancellation` | Gets all cancellation mappings. |
| `POST` | `/setup/api/v1/admin/brimProvider/cancellation` | Saves cancellation mapping. |
| `GET` | `/setup/api/v1/admin/brimProvider/cancellation/{id}` | Gets cancellation mapping by Id. |
| `DELETE` | `/setup/api/v1/admin/brimProvider/cancellation/{id}` | Deletes cancellation mapping. |
| `POST` | `/setup/api/v1/admin/brimProvider/translations` | Gets cancellation mapping by Id. |
| `POST` | `/setup/api/v1/admin/businessPartnerImportExport/export` | Schedules business partner export job. |
| `POST` | `/setup/api/v1/admin/businessPartnerImportExport/import/{identifier}` | Schedules business partner import job by identifier.
Identifier values:
    *1 = Business Partner ID
    *2 = Business Partner System ID |
| `GET` | `/setup/api/v1/admin/businessPartnerImportExport/identifiers` | Gets list of identifiers |
| `POST` | `/setup/api/v1/admin/businessPartnerImportExport/jobs/cancel/{jobId}` | Cancels the job. |
| `GET` | `/setup/api/v1/admin/businessPartnerImportExport/template` | Download business partner template |
| `POST` | `/setup/api/v1/admin/businessPartnerImportExport/jobs` | Gets business partners import/export request details. |
| `GET` | `/setup/api/v1/admin/businessPartnerImportExport/file/{jobId}` | Download processed import or export file |
| `POST` | `/setup/api/v1/admin/businessPartnerImportExport/jobs/{jobId}/mail/{requestEmail}` | Changes the request email. |
| `GET` | `/setup/api/v1/admin/categories` | Gets categories |
| `GET` | `/setup/api/v1/admin/files/CategoryImage` | Get all files |
| `PUT` | `/setup/api/v1/admin/files/CategoryImage` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/CategoryImage` | Creates new files |
| `GET` | `/setup/api/v1/admin/files/CategoryImage/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/CategoryImage/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/CategoryImage/{id}` | Deletes specified file |
| `GET` | `/setup/api/v1/admin/certificateManagement` | Gets paged System Certificate Settings |
| `GET` | `/setup/api/v1/admin/certificateManagement/dkim` | Gets paged DKIM Settings |
| `POST` | `/setup/api/v1/admin/certificateManagement/dkim/{id}/status/{isActive}` | Updates active status of DKIM settings to active/inactive. |
| `POST` | `/setup/api/v1/admin/certificateManagement/{id}/status/{isActive}` | Updates active status of System Certificate settings to active/inactive. |
| `GET` | `/setup/api/v1/admin/certificateManagement/dkim/getKeyString` | Gets DKIM settings certificate as string. |
| `GET` | `/setup/api/v1/admin/certificateManagement/getKeyString` | Gets System Certificate settings certificate as string. |
| `GET` | `/setup/api/v1/admin/certificateManagement/details/{id}` | Gets all tenants with their HF Url |
| `DELETE` | `/setup/api/v1/admin/certificateManagement/dkim/{id}` | Deletes DKIM settings. |
| `DELETE` | `/setup/api/v1/admin/certificateManagement/{id}` | Deletes System Certificate settings. |
| `GET` | `/setup/api/v1/admin/certificateManagement/purposes` | Gets data types lookup |
| `POST` | `/setup/api/v1/admin/certificateManagement/enabled/{enabledState}` | Updates status of DKIM feature. |
| `GET` | `/setup/api/v1/admin/certificateManagement/enabled` | Updates status of System Certificates feature. |
| `POST` | `/setup/api/v1/admin/certificateManagement/save` | Insert/Update Certificate settings entry. |
| `POST` | `/setup/api/v1/admin/certificateManagement/dkim/save` | Insert/Update DKIM settings entry. |
| `GET` | `/setup/api/v1/admin/certificateManagement/client-certificates` | Gets paged Client Certificate settings. |
| `DELETE` | `/setup/api/v1/admin/certificateManagement/client-certificates/{id}` | Deletes Client Certificate settings. |
| `POST` | `/setup/api/v1/admin/certificateManagement/client-certificates/save` | Create Client Certificate settings. |
| `POST` | `/setup/api/v1/admin/certificateManagement/client-certificates/{id}/status` | Updates active status of Client Certificate settings. |
| `GET` | `/setup/api/v1/admin/certificateManagement/client-certificates/details/{id}` | Gets all tenants with their HF Url |
| `GET` | `/setup/api/v1/admin/certificateManagement/client-certificates/usermapped/{userId}` | Checks if user with provided id has been already mapped to some client certificate. |
| `GET` | `/setup/api/v1/admin/certificateManagement/client-certificates/enabled` | Gets enabled status for client certiicate authentication |
| `POST` | `/setup/api/v1/admin/certificateManagement/client-certificates/enabled/{enabledState}` | Sets enabled status for client certificate authentication |
| `GET` | `/setup/api/v1/admin/changeSets/{id}` |  |
| `GET` | `/setup/api/v1/admin/changeSets` | Gets data for change set datatable |
| `POST` | `/setup/api/v1/admin/changeSets` | Saves change set. |
| `GET` | `/setup/api/v1/admin/changeSets/lookups` | Gets list of change set lookups |
| `GET` | `/setup/api/v1/admin/changeSets/filterLookups` | Gets list of change set lookups |
| `POST` | `/setup/api/v1/admin/changeSets/{id}/status/{isActive}` | Set status |
| `POST` | `/setup/api/v1/admin/changeSets/{id}/selected` | Select change set. |
| `GET` | `/setup/api/v1/admin/changeSets/selected` | Gets the selected change set. |
| `GET` | `/setup/api/v1/admin/changeSets/getTenantEnv` | Get connected environments for send deploy change sets |
| `POST` | `/setup/api/v1/admin/changeSets/sendChangeSets/{envId}` | Send change sets to target environment |
| `POST` | `/setup/api/v1/admin/changeSets/deployChangeSets` | Deploy change sets from other environment |
| `GET` | `/setup/api/v1/admin/companies` | Gets filtered, paged and sorted companies with total number of companies. |
| `POST` | `/setup/api/v1/admin/companies` | Saves company |
| `GET` | `/setup/api/v1/admin/companies/{companyId}` | Gets data of company with provided id |
| `GET` | `/setup/api/v1/admin/companies/{id}/permissions` | Gets administration permissions for company with provided id |
| `DELETE` | `/setup/api/v1/admin/companies/{id}` | Deletes company with provided id |
| `GET` | `/setup/api/v1/admin/companies/crmAccount` | Should use CRM account |
| `GET` | `/setup/api/v1/admin/companies/SystemId` | Gets system id |
| `GET` | `/setup/api/v1/admin/files/CompanyLogo` | Get all files |
| `PUT` | `/setup/api/v1/admin/files/CompanyLogo` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/CompanyLogo` | Creates new files |
| `GET` | `/setup/api/v1/admin/files/CompanyLogo/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/CompanyLogo/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/CompanyLogo/{id}` | Deletes specified file |
| `GET` | `/setup/api/v1/admin/files/ContentFile` | Get all files DEPRECATED |
| `PUT` | `/setup/api/v1/admin/files/ContentFile` | Updates existing or Create new files DEPRECATED |
| `POST` | `/setup/api/v1/admin/files/ContentFile` | Creates new files DEPRECATED |
| `GET` | `/setup/api/v1/admin/files/ContentFile/{id}` | Gets specified file DEPRECATED |
| `PUT` | `/setup/api/v1/admin/files/ContentFile/{id}` | Updates specified file DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/files/ContentFile/{id}` | Deletes specified file DEPRECATED |
| `GET` | `/setup/api/v1/admin/customers/{id}` | Gets customer with provided id |
| `GET` | `/setup/api/v1/admin/files/CustomImage` | Get all files |
| `PUT` | `/setup/api/v1/admin/files/CustomImage` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/CustomImage` | Creates new files |
| `GET` | `/setup/api/v1/admin/files/CustomImage/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/CustomImage/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/CustomImage/{id}` | Deletes specified file |
| `GET` | `/setup/api/v1/admin/customSections` | Get all custom sections. |
| `POST` | `/setup/api/v1/admin/customSections` | Creates new custom section. |
| `GET` | `/setup/api/v1/admin/customSections/{id}/translations/{dictionaryId}` | Get translation for  custom section. |
| `GET` | `/setup/api/v1/admin/customSections/{id}` | Gets custom section for provided identifier. |
| `PUT` | `/setup/api/v1/admin/customSections/{id}` | Update custom section. |
| `DELETE` | `/setup/api/v1/admin/customSections/{id}` | Remove custom section. |
| `PUT` | `/setup/api/v1/admin/customSections/{id}/translations` | Update custom section translations. |
| `GET` | `/setup/api/v1/admin/dataDeletionSettings` | Gets all data deletion settings |
| `POST` | `/setup/api/v1/admin/dataDeletionSettings` | Saves defined data deletion settings |
| `GET` | `/setup/api/v1/admin/dataDeletionSettings/quote` | Gets quote lookups |
| `GET` | `/setup/api/v1/admin/dataProtectionLog` |  |
| `POST` | `/setup/api/v1/admin/erpProvider/{isConnected}` | Save ERPProviderConnectedParam. |
| `GET` | `/setup/api/v1/admin/erpProvider` | ErpProvider Connected Param |
| `GET` | `/setup/api/v1/admin/eventSubscription` | Gets the paged webhooks. |
| `POST` | `/setup/api/v1/admin/eventSubscription` | Saves the webhook. |
| `GET` | `/setup/api/v1/admin/eventSubscription/{id}` | Gets the webhook. |
| `DELETE` | `/setup/api/v1/admin/eventSubscription/{id}` | Deletes the webhook. |
| `GET` | `/setup/api/v1/admin/eventSubscription/lookups/events` | Gets the domain event lookups. |
| `GET` | `/setup/api/v1/admin/favoritesPermissions` | Gets favorites permissions settings. |
| `PUT` | `/setup/api/v1/admin/favoritesPermissions` | Saves favorites permissions settings. |
| `GET` | `/setup/api/v1/admin/files/Fonts` | Get all files |
| `PUT` | `/setup/api/v1/admin/files/Fonts` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/Fonts` | Creates new files |
| `GET` | `/setup/api/v1/admin/files/Fonts/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/Fonts/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/Fonts/{id}` | Deletes specified file |
| `GET` | `/setup/api/v1/admin/formulaBuilder/variables` | Get variables |
| `GET` | `/setup/api/v1/admin/formulaBuilder/sequenceOperators` | Get sequences |
| `GET` | `/setup/api/v1/admin/formulaBuilder/operators` | Get operators |
| `GET` | `/setup/api/v1/admin/formulaBuilder/actions` | Get actions |
| `GET` | `/setup/api/v1/admin/formulaBuilder/cartActions` | Get cart actions |
| `GET` | `/setup/api/v1/admin/formulaBuilder/conditions` | Get conditions |
| `GET` | `/setup/api/v1/admin/formulaBuilder/productAttributes` | Gets a product attributes |
| `GET` | `/setup/api/v1/admin/formulaBuilder/productAttributeValues` | Gets values for product attribute |
| `GET` | `/setup/api/v1/admin/formulaBuilder/actionAttributeValues` | Gets values for action attributes for a product |
| `GET` | `/setup/api/v1/admin/formulaBuilder/sequences` | Gets sequences |
| `GET` | `/setup/api/v1/admin/formulaBuilder/initialCTXTags` | Gets list of CTX tags |
| `GET` | `/setup/api/v1/admin/formulaBuilder/selectedCTXTag` | Gets CTX tag by its index. |
| `GET` | `/setup/api/v1/admin/formulaBuilder/rootQuoteObject` | Gets list of first level quote objects. |
| `GET` | `/setup/api/v1/admin/formulaBuilder/otherQuoteObjects` | Gets list of quote objects starting from second level. |
| `POST` | `/setup/api/v1/admin/formulaBuilder/checkSyntax` | Checks a formula syntax |
| `POST` | `/setup/api/v1/admin/formulaBuilder/checkCartTagSyntax` | Checks syntax for created cart formula |
| `POST` | `/setup/api/v1/admin/formulaBuilder/checkCtxTagSyntax` | Checks syntax for created CTX tag |
| `GET` | `/setup/api/v1/admin/formulaBuilder/visualize` | Get visualize payload |
| `GET` | `/setup/api/v1/admin/formulaBuilder/tables` | Gets all custom tables |
| `POST` | `/setup/api/v1/admin/formulaBuilder/tables` | Tests a created table/list tag |
| `GET` | `/setup/api/v1/admin/formulaBuilder/tables/columns` | Gets all column names for a custom table |
| `GET` | `/setup/api/v1/admin/formulaBuilder/tables/preview` | Gets preview data of a table |
| `GET` | `/setup/api/v1/admin/guestUser/lookup` | Gets guest user's lookup |
| `GET` | `/setup/api/v1/admin/guestUser` | Gets guest user settings |
| `POST` | `/setup/api/v1/admin/guestUser` | Saves guest user settings |
| `GET` | `/setup/api/v1/admin/guestUser/requiredFields` | Gets required fields for user registration |
| `GET` | `/setup/api/v1/admin/ironPythonContext/properties/{fullName}/{assemblyName}` | Gets the scripting properties. |
| `GET` | `/setup/api/v1/admin/ironPythonContext/properties/firstLevel/{mode}` | Gets the first level data. |
| `POST` | `/setup/api/v1/admin/ironPythonContext/syntax` | Checks syntax of a script through CPQScriptEngine and returns errors if any. |
| `GET` | `/setup/api/v1/admin/lookups/user` | Gets user lookups |
| `GET` | `/setup/api/v1/admin/lookups/user/sso` | Gets SSO user lookups |
| `GET` | `/setup/api/v1/admin/lookups/userCustomFieldAttributes` | Gets all user custom fields as attributes |
| `GET` | `/setup/api/v1/admin/lookups/attributes` | Gets attribute lookups |
| `GET` | `/setup/api/v1/admin/lookups/attributes/type/{typeCsv}` | Gets attribute lookups |
| `GET` | `/setup/api/v1/admin/lookups/customer` | Gets customer lookups |
| `GET` | `/setup/api/v1/admin/lookups/businessPartner` | Gets business partner lookups |
| `GET` | `/setup/api/v1/admin/lookups/businessPartnersWithInvolvedParties` | Gets business partner with involved parties lookups based on the provided query. |
| `GET` | `/setup/api/v1/admin/lookups/quoteStatuses` | Gets all quote statuses |
| `GET` | `/setup/api/v1/admin/lookups/userCustomFieldAttributes/{userId}/values/{customFieldId}` | Gets values for attribute user custom field |
| `GET` | `/setup/api/v1/admin/lookups/businessPartners/{businessPartnerId}/customFields/{customFieldName}/attributes/values` | Gets values for attribute business partner custom field |
| `GET` | `/setup/api/v1/admin/lookups/businessPartnerType` | Gets user type lookups |
| `GET` | `/setup/api/v1/admin/lookups/userTypes` | Gets user type lookups |
| `GET` | `/setup/api/v1/admin/lookups/companies` | Gets company lookups. |
| `GET` | `/setup/api/v1/admin/lookups/brands` | Gets brand lookups. |
| `GET` | `/setup/api/v1/admin/lookups/markets` | Gets market lookups. |
| `GET` | `/setup/api/v1/admin/lookups/pricebooks` | Gets pricebook lookups. |
| `GET` | `/setup/api/v1/admin/lookups/tab` | Gets tab lookups |
| `GET` | `/setup/api/v1/admin/lookups/tabFiles` | Gets tab file lookups |
| `GET` | `/setup/api/v1/admin/lookups/customFields` | Gets custom field lookups |
| `GET` | `/setup/api/v1/admin/lookups/status` |  |
| `GET` | `/setup/api/v1/admin/lookups/productTypes` | Gets Product Types (translated) |
| `GET` | `/setup/api/v1/admin/lookups/productTypesNames` | Gets Product Types Id Name pairs (translated) |
| `GET` | `/setup/api/v1/admin/lookups/marketNames` | Gets Markets Id Name pairs |
| `GET` | `/setup/api/v1/admin/lookups/statusesNames` | Gets Statuses Id Name pairs (translated) |
| `GET` | `/setup/api/v1/admin/lookups/productCategories` | Gets Product Categories (translated) |
| `GET` | `/setup/api/v1/admin/lookups/productWizards` | Gets Product Wizard Types (translated) |
| `GET` | `/setup/api/v1/admin/lookups/productAttributeDisplayTypes` | Gets Product Attribute Display types |
| `GET` | `/setup/api/v1/admin/lookups/productAttributeTabs` | Gets Product Attribute Tabs |
| `GET` | `/setup/api/v1/admin/lookups/multiListBox/quoteTabs` | Gets Quote Tabs for Multi-List Box component |
| `GET` | `/setup/api/v1/admin/lookups/quoteTabsForCustomFields` | Gets quote tabs which can contain custom fields |
| `GET` | `/setup/api/v1/admin/lookups/productAttributeNames/{productId}` | Get product attribute names with productId |
| `GET` | `/setup/api/v1/admin/lookups/countries` | All countries |
| `GET` | `/setup/api/v1/admin/lookups/territories` | All territories |
| `GET` | `/setup/api/v1/admin/lookups/states/{countryName}` | Gets all states lookups for given country Name |
| `GET` | `/setup/api/v1/admin/lookups/statesLookups` | Gets all states lookups |
| `GET` | `/setup/api/v1/admin/lookups/states` | Gets all states with a country identifier |
| `GET` | `/setup/api/v1/admin/lookups/dictionaries` | Gets all dictionaries |
| `GET` | `/setup/api/v1/admin/lookups/defaultDictionaries` | Gets default system dictionaries |
| `GET` | `/setup/api/v1/admin/lookups/customTables` | Get custom tables |
| `GET` | `/setup/api/v1/admin/lookups/quoteTables` | Get custom tables |
| `GET` | `/setup/api/v1/admin/lookups/attributesDataTypes` | Get attribute data types |
| `GET` | `/setup/api/v1/admin/lookups/attribute/products/{productIds}/attributes/{displayTypeId}` | Get all attributes from products that attribute contains |
| `POST` | `/setup/api/v1/admin/lookups/attribute/products/attributes/{displayTypeId}` | Get all attributes from products that attribute contains.
This should be used when productIds is longer then 260 characters |
| `GET` | `/setup/api/v1/admin/lookups/promotionsDetails` | Gets the promotion details relevant lookups |
| `POST` | `/setup/api/v1/admin/lookups/quoteItemCustomFields` | Gets quote item custom field lookups |
| `POST` | `/setup/api/v1/admin/lookups/quoteCustomFields` | Gets quote custom field lookups |
| `POST` | `/setup/api/v1/admin/lookups/productNames` | Gets translated Product names by Ids |
| `GET` | `/setup/api/v1/admin/lookups/attributes/{displayTypeId}` | Gets attributes lookup |
| `GET` | `/setup/api/v1/admin/lookups/quoteVisibility/advancedConditionObjectTypes` | Gets the quote visibility lookups for advanced conditions object types |
| `GET` | `/setup/api/v1/admin/lookups/quoteVisibility/advancedConditionProperties` | Gets the quote visibility lookups for advanced conditions properties |
| `GET` | `/setup/api/v1/admin/lookups/quoteVisibility/advancedConditionOperators` | Gets the quote visibility lookups for advanced conditions operators |
| `GET` | `/setup/api/v1/admin/lookups/quoteVisibility/ruleLogicTypes` | Gets the quote visibility lookups for rule logic types |
| `GET` | `/setup/api/v1/admin/lookups/quoteVisibility/advancedConditionSelection` | Gets the quote visibility lookups for advanced conditions selections |
| `GET` | `/setup/api/v1/admin/lookups/user/customFields` | Gets the user custom field lookups |
| `GET` | `/setup/api/v1/admin/lookups/quote/customFields` | Gets the quote custom field lookups |
| `GET` | `/setup/api/v1/admin/lookups/businessPartner/customFields` | Gets the business partner custom field lookups |
| `GET` | `/setup/api/v1/admin/lookups/partnerFunction` | Gets the partner functions lookups |
| `GET` | `/setup/api/v1/admin/lookups/partnerFunctionIdNameLookup` | Gets partner function lookups where Id is set to Key and MlName is set to Value |
| `GET` | `/setup/api/v1/admin/lookups/promotions/advancedCondition` | Gets promotions relevant lookups |
| `GET` | `/setup/api/v1/admin/lookups/quoteFields/events` | Gets the quote item custom field calculation events. |
| `GET` | `/setup/api/v1/admin/lookups/quoteVisibility/advancedCondition` | Gets the quote visibility relevant lookups |
| `GET` | `/setup/api/v1/admin/lookups/quoteMigration/dateOperators` | Gets the quote migration lookups for date operators |
| `GET` | `/setup/api/v1/admin/lookups/quoteMigrationStatuses` | Gets the quote migration job statuses lookup |
| `GET` | `/setup/api/v1/admin/lookups/salesArea/salesOrganization` | Retrieves a lookup of sales organizations, including sales organization codes and names. |
| `GET` | `/setup/api/v1/admin/lookups/salesArea/salesOrg` | Retrieves a lookup of business partner sales areas, including sales organization codes and names. |
| `GET` | `/setup/api/v1/admin/lookups/salesArea/distributionChannel` | Retrieves a lookup of business partner sales areas, including distribution channel codes and names. |
| `GET` | `/setup/api/v1/admin/lookups/salesArea/division` | Retrieves a lookup of business partner sales areas, including division codes and names. |
| `GET` | `/setup/api/v1/admin/lookups/salesArea/divisionIds` | Retrieves a lookup of business partner sales areas, including division ID, codes and names. |
| `GET` | `/setup/api/v1/admin/lookups/salesArea/distributionChannelIds` | Retrieves a lookup of business partner sales areas, including distribution channel ID, codes and names. |
| `GET` | `/setup/api/v1/admin/lookups/approvalBranches` | Gets Approval Branch lookups. |
| `GET` | `/setup/api/v1/admin/lookups/asyncDomains` | Gets async domains lookup for default tenant |
| `GET` | `/setup/api/v1/admin/lookups/domains` | Gets domains lookup, only for default tenant |
| `GET` | `/setup/api/v1/admin/files/MarginHealthVisibilityImage` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/MarginHealthVisibilityImage` | Updates margin health visibility image by type |
| `GET` | `/setup/api/v1/admin/files/MarginHealthVisibilityImage/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/MarginHealthVisibilityImage/{id}` | Updates specified file |
| `GET` | `/setup/api/v1/admin/menu/items/hidden` | Gets key for hidden items in menu for new setup |
| `GET` | `/setup/api/v1/admin/menu/items/disabled` | Gets keys of all menu items which should be disabled for CpqLite |
| `GET` | `/setup/api/v1/admin/files/NotificationAttachment` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/NotificationAttachment` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/NotificationAttachment` | Creates new files |
| `GET` | `/setup/api/v1/admin/files/NotificationAttachment/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/NotificationAttachment/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/NotificationAttachment/{id}` | Deletes specified file |
| `GET` | `/setup/api/v1/admin/pageRecommendations` | Gets filtered, paged and sorted recommended pages with total number of pages. |
| `GET` | `/setup/api/v1/admin/pageRecommendations/pages` | Gets landing page name based on User Type. |
| `GET` | `/setup/api/v1/admin/permissionGroups` | Get all permissions for data table |
| `POST` | `/setup/api/v1/admin/permissionGroups` | Saves manually created permission group |
| `POST` | `/setup/api/v1/admin/permissionGroups/users` | Gets all users which belongs to selected permission groups |
| `GET` | `/setup/api/v1/admin/permissionGroups/permissions` | Get all permissions |
| `GET` | `/setup/api/v1/admin/permissionGroups/permissions/companies` | Get all companies permissions |
| `GET` | `/setup/api/v1/admin/permissionGroups/permissions/group` | Get all permissions for permission groups |
| `GET` | `/setup/api/v1/admin/permissionGroups/permissions/userTypeGroup` | Get all permissions for permission groups |
| `GET` | `/setup/api/v1/admin/permissionGroups/permissions/admin` | Gets all permission groups for admin users |
| `GET` | `/setup/api/v1/admin/permissionGroups/{permissionId}` | Get permission by Id |
| `GET` | `/setup/api/v1/admin/permissionGroups/users/{userId}/id` | Get permission id of user with provided id |
| `GET` | `/setup/api/v1/admin/permissionGroups/name` | Get name by Id for user permission groups |
| `GET` | `/setup/api/v1/admin/permissionGroups/SystemId` | Gets system id |
| `DELETE` | `/setup/api/v1/admin/permissionGroups/{id}` | Deletes permission group with provided id |
| `GET` | `/setup/api/v1/admin/permissionGroups/permissions/{permissionId}` | Gets permission group details with selected permissions |
| `GET` | `/setup/api/v1/admin/files/ProductImage` | Get all files |
| `PUT` | `/setup/api/v1/admin/files/ProductImage` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/ProductImage` | Creates new files |
| `GET` | `/setup/api/v1/admin/files/ProductImage/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/ProductImage/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/ProductImage/{id}` | Deletes specified file |
| `GET` | `/setup/api/v1/admin/products` | Gets Products DEPRECATED |
| `POST` | `/setup/api/v1/admin/products` | Saves product DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/export` | Exports filtered products DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{ProductSystemId}/versions` | Gets filtered, paged and sorted products with total number of products DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productSystemId}/versions/vc/currentlyActive` | Gets version number curently active, in case of products synced from back-office, DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/Version/{productSystemId}/{productVersionId}` | Creates new product version DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/version/upgradeAlias/isAvailable/{productVersionId}` | Checks if product version has alias and has available upgrades DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/version/upgradeAlias/{productVersionId}` |  DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/products/Version/{productId}` | Gets filtered, paged and sorted products with total number of products DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/Version/NextVersionNumber/{productSystemId}` | Gets filtered, paged and sorted products with total number of products DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/Version/ProductSystemId` | Get Product system id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productSystemId}/versions/active/name` | Gets the name of the active product version. DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productSystemId}/versions/count` | Gets the product versions count. DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/attributes/available` | Gets filtered, paged and sorted products with total number of products DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/attributes` | Gets paged and filtered attributes for product DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/attributes/{productAttributeId}/isRequired/{isRequired}` | Updates is required field for product attribute DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/attributes/{productAttributeId}/isLineItem/{isLineItem}` | Updates is line item for product attribute DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/aliases/{aliasId}/attributes` | Gets paged and filtered attributes for product alias DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{id}` | Gets product with provided id DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/products/{id}` | Deletes the product with provided id. DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/aliases/{aliasId}` | Gets product alias with provided id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/isAlias/{productId}` | Is product with provided id alias DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/aliases/{productAliasId}/attributes/{productAttributeId}` | Gets product alias attribute id DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/aliases/{productAliasId}/attributes` | Saves attribute for product alias with provided id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/attributes/{productAttributeId}/values` | Gets product attribute values lookup list DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/bySystemId/{systemId}` | Gets product with provided systemId DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/definition/lookup` | Gets product defn DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/attributes/{standardAttributeCode}/lookup` | Gets attributes lookup for product with provided id and attribute with provided standard attribute code DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/attributes/{standardAttributeCode}` | Gets product attribute with provided id DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/products/{productId}/attributes/{standardAttributeCode}` | Deletes the product attribute with provided id. DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/attributes/{attributeId}/usage` | Gets usage information for the product attribute with the provided ID. DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/attributes/{standardAttributeCodes}` | Adds attributes with provided standard attribute codes as csv string to product with provided id DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/productAttributes` | Saves product attribute DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/attributes/attributeValueRefProduct` | Gets product with price data for displaying in attribute values table if attribute value has ref product with custom pricing DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/rules/advanced/{ruleId}` | Gets advanced rule with provided id DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/rules/advanced` | Saves advanced rule for product with provided id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/productAttributes/{productAttributeId}/trigger` | Gets attribute trigger definition for product attribute with provided id DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/productAttributes/trigger` | Saves attribute triggers and definition DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/validationMessages/{messageId}` | Gets validation message with provided id DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/validationMessages` | Gets validation message for product with provided id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/SystemEventScripts/global` | Gets global system event scripts DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/productScripts/{scriptId}` | Gets product script with provided id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/productScripts/events` | Gets product system event lookups DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/productScripts/systemId` | Get new system id for product script DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/advancedRules/systemId` | Gets new system ID for advanced rule DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/productScripts/events/name` | Get Product event names DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/productScripts/eventHandlers/{eventId}` | Gets event handler scripts attached to event with provided id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/productScripts/eventHandlers` | Gets event handler scripts for provided system event ids as csv string DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/productScripts/events/infoMessage/{eventId}` | Gets info message for event DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/productScript` | Save product script DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/products/{productId}/productScripts/{scriptId}/events/{eventIds}` | Detaches script with provided id from product with provided id for events with provided ids DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/eventHandlers` | Saves event handlers for product with provided id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/productScript/history/{scriptId}` | Gets a script history DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/productScript/{scriptId}/history/{scriptRecordId}` | Gets script record which represents a details of some history record DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/productScript/{scriptId}/history/compare` | Gets list of script records details for comparing a script versions DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/productAttributes/hasABSCategories/{productAttributeId}` | Checks whether product attribute with provided id has ABS categories DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/lookup` | Gets product lookups DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/aliases` | Saves product alias DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{originalProductId}` | Creates new product as a copy of product with provided id and applies data from provided product. DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/aliases/{originalAliasId}` | Creates new alias as a copy of alias with provided id and applies data from provided alias. DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/AttributeValuesList` | Saves attribute values list DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/shippings` | Gets available shippings costs DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/AttributeValuesList/Product` | Saves attribute values list for product DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/LineItemInfoCustomColumnCount` | Gets count of line item info custom columns DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/layout` | Gets layout for product with provided id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{wizardId}/layout/tabs/templates` | Gets tab template lookups DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/products/{productId}/scripts/{scriptId}` | Deletes product's script DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/layout/tabs/templates` | Gets tab responsive template lookups DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/layout/responder/templates` | Gets responder responsive template lookups DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/layout/attributes` | Returns all product attributes that can be added to configurator layout DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/layout/configurator/attributes/{attributeIds}` | Gets configurator attributes for product with provided id and standard attribute codes provided as csv string DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/layout/responder/attributes/{attributeIds}` | Gets responder attributes for product with provided id and standard attribute codes provided as csv string DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/attributesForProduct` | Retrieves list of attribute names for product DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/productType` | Saves Product type DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/Attributes/{productAttributeId}/configuration` | Update attribute configuration DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productIds}/valueCodeAndDisplayValue` | Checks if products have Value Code and Display Value DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/containerTransferSettings/{containerId}` | Gets Container transfer settings for data table DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/attributes/{standardAttributeCode}/usesProducts` | Checks if an attribute with the type of Container uses Products DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/containerAttributes` | Gets filtered, paged and sorted attributes with total number of attributes
that can be pushed to container product attributes
for a given product Id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/containerTransferSettings/{containerId}` | Gets container transfer settings for each given attribute id DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/tab/{tabName}` | Create new Tab DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/simpleRules` | Gets paged, filtered and sorted Product Simple Rules for a given Product Id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/formulaRules` | Gets paged, filtered and sorted Product Formula (Scripting) Rules for a given Product Id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/triggers` | Gets paged, filtered and sorted Product Attribute Triggers for a given Product Id DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/products/{productId}/Triggers/{attributeId}/{type}` | Removes Attribute trigger DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/products/{productId}/FormulaRules/{ruleId}` | Removes Formula Rule DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/FormulaRulesRankings` | Returns ranked Formula rules for product DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/FormulaRulesRankings` | Updates Formula rules ranks for product DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/rules/simple/{ruleId}` | Gets simple rule with provided id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/simpleRules/systemId` | Get new system id for simple rule DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/rules/simple/attributeValues/{productId}` | Get attribute values in lookup shape for conditions and dependance DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/rules/simple` | Saves a simple rule DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/rules/simple/ruleTypes` | Get rule types DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/SimpleRulesRankings` | Returns ranked Simple rules for product DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/SimpleRulesRankings` | Updates Simple rules ranks for product DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/products/{productId}/SimpleRules/{ruleId}` | Removes Simple Rule DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productSystemId}/salesUnitOfMeasure` | Gets paged, filtered and sorted units of measure for a given product system ID. DEPRECATED |
| `PUT` | `/setup/api/v1/admin/products/{productSystemId}/salesUnitOfMeasure` | Updates list of sales units of measures. DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/Messages` | Gets product messages DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/products/Messages/{id}` | Deletes Product Message by Id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/productMessages/systemId` | Get new system id for product message DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/scripts` | Gets paged and filtered scripts for a product DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/MessagesRankings` |  DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/MessagesRankings` | Updates Messages ranks for product DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/SystemId` | Gets system id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/ProductType/SystemId` | Gets system id for product type DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/codeMatches` | Gets code matches for product with provided id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/salesAreas` | Get products sales areas by product id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/salesArea/{salesAreaId}` | Get product sales area by id DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/salesArea` | Saves Sales Area DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/products/salesArea/{productSalesAreaId}` | Delete Sales Area by product sales area id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/salesArea/lookup/xDistributionChannelStatuses` | Gets lookups for Sales Area Distribution Channel DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/translation/{dictionaryId}` | Gets translations for product with provided id in dictionary with provided id DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/translation` | Saves translations for product with provided id DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/visibilityRestrictions` | Get product visibility restrictions by product id. DEPRECATED |
| `POST` | `/setup/api/v1/admin/products/{productId}/visibilityRestrictions` | Save product visibility restriction. DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/visibilityRestrictions/rankings` | Returns ranked visibility restrictions for product. DEPRECATED |
| `PUT` | `/setup/api/v1/admin/products/{productId}/visibilityRestrictions/rankings` | Updates ranking of the visibiltiy restrictions. DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/visibilityRestrictions/{visibilityRestrictionId}` | Get visibility restriction by restriction id. DEPRECATED |
| `GET` | `/setup/api/v1/admin/products/{productId}/visibilityRestrictions/lookups` | Get visibility restriction lookups. DEPRECATED |
| `DELETE` | `/setup/api/v1/admin/products/{productId}/visibilityRestrictions/{visibilityRestrictionId}` | Delete visibility restriction. DEPRECATED |
| `GET` | `/setup/api/v1/admin/files/ProductTemplates` | Get all files |
| `PUT` | `/setup/api/v1/admin/files/ProductTemplates` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/ProductTemplates` | Creates new files |
| `GET` | `/setup/api/v1/admin/files/ProductTemplates/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/ProductTemplates/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/ProductTemplates/{id}` | Deletes specified file |
| `POST` | `/setup/api/v1/admin/productTranslationImportExport/export` | Schedules product translation export job. |
| `POST` | `/setup/api/v1/admin/productTranslationImportExport/import/{identifier}` | Schedules product translation import job by identifier.
Identifier values:
    *1 = CPQ ID
    *2 = Part Number |
| `POST` | `/setup/api/v1/admin/productTranslationImportExport/jobs` | Gets product transaltions import/export request details. |
| `POST` | `/setup/api/v1/admin/productTranslationImportExport/jobs/cancel/{jobId}` | Cancels the job. |
| `POST` | `/setup/api/v1/admin/productTranslationImportExport/jobs/{jobId}/mail/{requestEmail}` | Changes the request email. |
| `GET` | `/setup/api/v1/admin/productTranslationImportExport/template` | Download product translation template |
| `GET` | `/setup/api/v1/admin/productTranslationImportExport/file/{jobId}` | Download processed import or export file |
| `GET` | `/setup/api/v1/admin/productTranslationImportExport/identifiers` | Gets list of identifiers |
| `GET` | `/setup/api/v1/admin/files/QuoteActionImage` | Get all files |
| `PUT` | `/setup/api/v1/admin/files/QuoteActionImage` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/QuoteActionImage` | Creates new files |
| `GET` | `/setup/api/v1/admin/files/QuoteActionImage/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/QuoteActionImage/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/QuoteActionImage/{id}` | Deletes specified file |
| `GET` | `/setup/api/v1/admin/sb/ratePlansByProduct` | Get all rate plans by product ID |
| `GET` | `/setup/api/v1/admin/sbprovider` | Web API GET - get details about SAP SB Subscription Billing Provider parameters |
| `POST` | `/setup/api/v1/admin/sbprovider/save` | Web API POST - set parameters through JSON file |
| `PATCH` | `/setup/api/v1/admin/sbprovider/integrationEnabled/{state}` | Web API PATCH - sets if the integration SAP Subscription Billing is enabled or disabled |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/menuLinkGroups` | Get all menu link info groups |
| `POST` | `/setup/api/v1/admin/segregationOfDuties/applied/{areSegregationSettingsApplied}` | Sets apply segregation settings state |
| `POST` | `/setup/api/v1/admin/segregationOfDuties/rightsPreference/{isEditingRightPreferred}` | Sets permissive rights prevail state |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}` | Gets visible menu link info ids for permission group with provided id |
| `POST` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}` | Saves visible menu info links for permission group with provided id |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/subitems/{permissionId}/{menuLinkInfoId}` | Gets submenu items where itemsId contains their id list for menu link by menu link id (example for menu link "Custom Tables" this returns custom tables) |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/adminSegregationUsers` | Gets segregation admins |
| `POST` | `/setup/api/v1/admin/segregationOfDuties/adminSegregationUsers` | Sets admin segregation users state |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/isReadOnlySection/{urlKey}` | Gets information if user is a part of any permission group that has read only access to users section |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/id/{key}` |  |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/canAccessPage` | If user can access page |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/pricebooks` | Returns all pricebooks per group by market |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/fullMarketPermissions/{permissionId}` | Gets all markets that have all pricebooks available |
| `POST` | `/setup/api/v1/admin/segregationOfDuties/fullMarketPermissions` | Saves all markets that have all pricebooks available |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/configuredPermissions` | Gets all permissions that has at least one page configured. |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/accessRightsCriteria/{userId}` | Gets user's access rights criteria |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/configuredProductSegregationPermissions` | Gets all permissions that has product segregation configured. |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/productSegregation` | Gets product segregation settings for permission group with provided id. |
| `PUT` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/productSegregation` | Saves product segregation settings for permission group with provided id. |
| `DELETE` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/productSegregation` | Deletes product segregation settings for permission group with provided id. |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/customTableSegregation` | Gets custom table segregation settings. |
| `PUT` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/customTableSegregation` | Saves Custom table additional segregation settings. |
| `DELETE` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/customTableSegregation/{id}` | Deletes custom table additional settings.
<remarks>
Deletes custom table additional settings by identifier
</remarks> |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/bulkQuoteDeleteSegregation` | Gets bulk quote delete segregation settings. |
| `PUT` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/bulkQuoteDeleteSegregation` | Saves bulk quote delete segregation settings for permission group with provided id. |
| `DELETE` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/bulkQuoteDeleteSegregation` | Deletes bulk quote delete additional settings.
<remarks>
Deletes bulk quote delete additional settings by identifier
</remarks> |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/bulkQuoteDeleteSegregation/canUserDeleteAllQuotes` | Determines if the current user can delete all quotes. |
| `GET` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/actionSegregation` | Gets additional Action segregation settings. |
| `PUT` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/actionSegregation` | Saves additional Action segregation settings. |
| `POST` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/actionSegregation` | Saves additional Action segregation settings. |
| `DELETE` | `/setup/api/v1/admin/segregationOfDuties/{permissionId}/actionSegregation` | Deletes additional Action settings.
<remarks>
Deletes additional Action settings for provided permission identifier.
</remarks> |
| `GET` | `/setup/api/v1/admin/subscriptionBilling/ratePlanTemplates` | Gets filtered, paged and sorted products with total number of products |
| `GET` | `/setup/api/v1/admin/subscriptionBilling/ratePlanTemplate/{uuid}` | Gets rate plan template details |
| `GET` | `/setup/api/v1/admin/subscriptionBilling/ratePlanTemplateByProduct/{productId}` | Gets rate plan details for product |
| `GET` | `/setup/api/v1/admin/subscriptionBilling/ratePlan/{productId}/{marketId}` | Gets rate plan details |
| `GET` | `/setup/api/v1/admin/subscriptionBilling/ratePlans/{productId}` | Gets the market rate plans. |
| `GET` | `/setup/api/v1/admin/files/Temp` | GET |
| `PUT` | `/setup/api/v1/admin/files/Temp` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/Temp` | POST |
| `GET` | `/setup/api/v1/admin/files/Temp/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/Temp/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/Temp/{id}` | Deletes specified file |
| `GET` | `/setup/api/v1/admin/tenant` | Gets infor about tenant settings |
| `GET` | `/setup/api/v1/admin/tenant/systemDictionaries` |  |
| `GET` | `/setup/api/v1/admin/tenant/timezones` | Gets time zones |
| `GET` | `/setup/api/v1/admin/files/TopMenuImage` | Get all files |
| `PUT` | `/setup/api/v1/admin/files/TopMenuImage` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/TopMenuImage` | Creates new files |
| `GET` | `/setup/api/v1/admin/files/TopMenuImage/{id}` | Gets specified file |
| `PUT` | `/setup/api/v1/admin/files/TopMenuImage/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/TopMenuImage/{id}` | Deletes specified file |
| `POST` | `/setup/api/v1/admin/translations/translate` | Get a values from current dictionary for keys param |
| `GET` | `/setup/api/v1/admin/users/{id}` | Gets user with provided ID |
| `DELETE` | `/setup/api/v1/admin/users/{id}` | Deletes the user with provided ID |
| `GET` | `/setup/api/v1/admin/users` | Gets the filtered, paged and sorted list of users with their total number |
| `POST` | `/setup/api/v1/admin/users` | Saves the user |
| `GET` | `/setup/api/v1/admin/users/current/data` | Gets the info about the current, logged-in user |
| `GET` | `/setup/api/v1/admin/users/names` | Gets names of users with provided IDs
Example: /setup/api/v1/admin/users/names?userIds=[1,2] |
| `POST` | `/setup/api/v1/admin/users/names` | Gets names of users with provided IDs |
| `GET` | `/setup/api/v1/admin/users/admins/names` | Gets the ID/names of active and non-blocked administrators |
| `GET` | `/setup/api/v1/admin/users/{userId}/usage` | Gets list of objects in which this user is used. |
| `GET` | `/setup/api/v1/admin/users/lookups/brands` | Gets branding lookups |
| `GET` | `/setup/api/v1/admin/users/lookups/companies` | Gets company lookups |
| `GET` | `/setup/api/v1/admin/users/tabs/general/default` | Gets default values for the General tab |
| `GET` | `/setup/api/v1/admin/users/address` | Gets the user address lookup |
| `GET` | `/setup/api/v1/admin/users/tabs/dateAndMarket` | Gets the date and market lookup |
| `GET` | `/setup/api/v1/admin/users/tabs/additionalSettings/{marketId}` | Gets the lookup for the Additional Settings tab |
| `GET` | `/setup/api/v1/admin/users/tabs/pricebooks/{marketId}` | Gets pricebook lookups by marketId |
| `GET` | `/setup/api/v1/admin/users/customFields` | Gets user custom fields |
| `GET` | `/setup/api/v1/admin/users/shouldSendEmailToUser` | Checks if an email is sent to new users |
| `GET` | `/setup/api/v1/admin/users/blockedUsers` | Gets a blocked users' IDs |
| `POST` | `/setup/api/v1/admin/users/{id}/permissionGroup` | Adds a user to permission groups |
| `DELETE` | `/setup/api/v1/admin/users/{id}/permissionGroup` | Deletes a user from permission groups |
| `GET` | `/setup/api/v1/admin/userCustomFields` | Get user custom fields |
| `POST` | `/setup/api/v1/admin/userCustomFields` | Save User custom field |
| `GET` | `/setup/api/v1/admin/userCustomFields/{userCustomFieldDefnId}` | Get user custom field definition by provided id |
| `GET` | `/setup/api/v1/admin/userCustomFields/ranks` |  |
| `POST` | `/setup/api/v1/admin/userCustomFields/ranks` |  |
| `GET` | `/setup/api/v1/admin/userCustomFields/types` | Gets user custom field types |
| `GET` | `/setup/api/v1/admin/userCustomFields/attributes` | Get user custom field attributes |
| `DELETE` | `/setup/api/v1/admin/userCustomFields/{id}` | Deletes user custom field with provided id |
| `GET` | `/setup/api/v1/admin/userCustomFields/names` |  |
| `GET` | `/setup/api/v1/admin/userCustomFields/lookups` | Gets user custom fields lookup list |
| `POST` | `/setup/api/v1/admin/userCustomFields/translations` | Save User custom field |
| `GET` | `/setup/api/v1/admin/userTypes` | Gets filtered, paged and sorted user types with total number of user types. |
| `POST` | `/setup/api/v1/admin/userTypes` | Saves the user type. |
| `GET` | `/setup/api/v1/admin/userTypes/{id}` | Gets user type by id |
| `DELETE` | `/setup/api/v1/admin/userTypes/{id}` | Deletes user type with provided id. |
| `GET` | `/setup/api/v1/admin/userTypes/CatalogueViews` | Gets catalogue views |
| `GET` | `/setup/api/v1/admin/userTypes/SystemId` | Gets system id |
| `GET` | `/setup/api/v1/admin/userTypes/ui/lookups/pages` | Gets page lookups for user type ui design |
| `GET` | `/setup/api/v1/admin/userTypes/ui/lookups/templates/{pageId}` | Gets template lookups for page |
| `GET` | `/setup/api/v1/admin/userTypes/ui/lookups/customTemplates/{templateId}` | Gets custom template lookups for page |
| `GET` | `/setup/api/v1/admin/userTypes/ui/customTemplates/{userTypeId}` | Gets custom templates for data table |
| `GET` | `/setup/api/v1/admin/userTypes/ui/customTemplate/{customTemplateId}` |  |
| `GET` | `/setup/api/v1/admin/viewExportPII/users/{id}/quotes` | Gets paged quotes linked with user, with provided id |
| `GET` | `/setup/api/v1/admin/viewExportPII/customers/{id}/quotes` | Gets paged quotes linked with customer, with provided id |
| `GET` | `/setup/api/v1/admin/viewExportPII/businesspartners/{id}/quotes` | Gets paged quotes linked with business partner, with provided id |
| `GET` | `/setup/api/v1/admin/viewExportPII/users/{id}/quoteCustomFields` | Gets paged quote custom fields for provided user identifier |
| `GET` | `/setup/api/v1/admin/viewExportPII/customers/{id}/quoteCustomFields` | Gets paged quote custom fields for provided customer identifier |
| `GET` | `/setup/api/v1/admin/viewExportPII/businesspartners/{id}/quoteCustomFields` | Gets paged quote custom fields for provided business partner identifier |
| `GET` | `/setup/api/v1/admin/viewExportPII/users/{id}/customTables` | Gets custom tables for provided user identifier |
| `GET` | `/setup/api/v1/admin/viewExportPII/customers/{id}/customTables` | Gets custom tables for provided customer identifier |
| `GET` | `/setup/api/v1/admin/viewExportPII/businesspartners/{id}/customTables` | Get Custom Tables for Business Partner |
| `GET` | `/setup/api/v1/admin/viewExportPII/users/{id}/quoteTables` | Gets quote table records associated with user |
| `GET` | `/setup/api/v1/admin/viewExportPII/customers/{id}/quoteTables` | Gets quote table records associated with customer |
| `GET` | `/setup/api/v1/admin/viewExportPII/businesspartners/{id}/quoteTables` | Gets quote table records associated with business partner |
| `GET` | `/setup/api/v1/admin/viewExportPII/users/{id}/quoteItemCustomFieldTables` | Gets protected quote item custom field table entries records associated with user |
| `GET` | `/setup/api/v1/admin/viewExportPII/customers/{id}/quoteItemCustomFieldTables` | Gets protected quote item custom field table entries records associated with customer |
| `GET` | `/setup/api/v1/admin/viewExportPII/businesspartners/{id}/quoteItemCustomFieldTables` | Gets protected quote item custom field table entries records associated with business partner |
| `GET` | `/setup/api/v1/admin/viewExportPII/users/{id}/userCustomFields` | User custom fields on another users |
| `GET` | `/setup/api/v1/admin/viewExportPII/customers/{id}/userCustomFields` | User custom fields for customer |
| `GET` | `/setup/api/v1/admin/viewExportPII/businesspartners/{id}/userCustomFields` | Gets user custom fields for provided business partner identifier |
| `GET` | `/setup/api/v1/admin/viewExportPII/users/{id}/customerCustomFields` | Customer custom fields on another users |
| `GET` | `/setup/api/v1/admin/viewExportPII/customers/{id}/customerCustomFields` | Customer custom fields for customer |
| `GET` | `/setup/api/v1/admin/viewExportPII/businesspartners/{id}/businessPartnerCustomFields` | Business partner custom fields for business partner |
| `GET` | `/setup/api/v1/admin/viewExportPII/users/{id}/businessPartnerCustomFields` | Business partner custom fields for user |
| `GET` | `/setup/api/v1/admin/viewExportPII/businesspartners/{id}/involvedPartyCustomFields` | Involved Party custom fields for business partner |
| `GET` | `/setup/api/v1/admin/viewExportPII/users/{id}/involvedPartyCustomFields` | Involved Party custom fields for user |
| `POST` | `/setup/api/v1/admin/viewExportPII/log` | Logs PII search in admin audit trail |
| `POST` | `/setup/api/v1/admin/viewExportPII/exportData` | Gets file for download |
| `GET` | `/setup/api/v1/admin/viewExportPII/businesspartners/{id}` | Get business partner by the business partner ID. |
| `GET` | `/setup/api/v1/admin/wsdlManagement` | Gets the paged records of mapped WSDL settings. |
| `POST` | `/setup/api/v1/admin/wsdlManagement` | Create new WSDL mapping, fails if there is already mapped url |
| `GET` | `/setup/api/v1/admin/wsdlManagement/{id}` | Gets the mapped WSDL settings. |
| `DELETE` | `/setup/api/v1/admin/wsdlManagement/{id}` | Deletes WSDL settings by id. |
| `GET` | `/setup/api/v1/admin/wsdlManagement/{id}/file` | Downloads WSDL file by settings id. |
| `GET` | `/setup/api/v1/admin/files/Xslt` | Get By Type |
| `PUT` | `/setup/api/v1/admin/files/Xslt` | Updates existing or Create new files |
| `POST` | `/setup/api/v1/admin/files/Xslt` | Post By Type |
| `GET` | `/setup/api/v1/admin/files/Xslt/{id}` | Get By Type and id |
| `PUT` | `/setup/api/v1/admin/files/Xslt/{id}` | Updates specified file |
| `DELETE` | `/setup/api/v1/admin/files/Xslt/{id}` | Delete By Type and id |
