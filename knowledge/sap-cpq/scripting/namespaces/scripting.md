# Scripting Namespace

**Source:** `https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/1108d588-79c8-10e8-eb99-6e9d196af277.htm`
**Version:** 2603

## Overview

The core CPQ scripting namespace. Contains 150+ interfaces, 7 classes, and 6 enumerations covering every aspect of quote automation, product configuration, HTTP/REST communication, database access, and utility operations.

> For full method signatures and properties, see individual files in `../interfaces/`.

## Classes

| Class | Description |
|-------|-------------|
| `AddItemArgument` | Argument representation for item collection additions |
| `ByteArrayContent` | Wrapper for `System.Net.Http.ByteArrayContent` |
| `HttpContent` | Wrapper for `System.Net.Http.HttpContent` |
| `MultipartFormDataContent` | Wrapper for `System.Net.Http.MultipartFormDataContent` |
| `StreamContent` | Wrapper for `System.Net.Http.StreamContent` |
| `StreamReader` | Wrapper of `System.IO.StreamReader` with limited features |
| `StringContent` | Wrapper for `System.Net.Http.StringContent` |

## Enumerations

| Enumeration | Description |
|-------------|-------------|
| `AssetStatus` | Asset state values |
| `AttributeAccess` | Attribute access level options |
| `Encodings` | Supported encoding types |
| `GenDocFormat` | Document generation format options (PDF, etc.) |
| `HMACHashFunction` | HMAC hash algorithm options |
| `SqlDbType` | SQL parameter type mappings |

## Interfaces — Quote & Item Management

| Interface | Description |
|-----------|-------------|
| `IQuote` | Main quote object — actions, items, custom fields, documents, approvals |
| `IQuoteItem` | Abstract base for main and line items |
| `IMainItem` | Primary quote item with pricing and configuration |
| `ILineItem` | Secondary items within main items |
| `IQuoteCustomField` | Quote-level custom field storage and retrieval |
| `IQuoteItemCustomField` | Item-level custom field (text, number, currency, date) |
| `IQuoteCustomFieldCollection` | Collection of quote custom fields |
| `IQuoteItemCustomFieldCollection` | (see `IItemCustomFieldCollection`) |
| `IAdditionalDiscount` | Discount with percentage and description |
| `IAdditionalDiscountCollection` | Collection of additional discounts |
| `IQuoteTotal` | Quote total values |
| `IQuoteTotalCustomField` | Custom field on quote totals |
| `IQuoteOrderStatus` | Order status representation |
| `IQuoteActionId` | Available action IDs on the quote |
| `IItemActionId` | Available action IDs on items |
| `IAction` | Individual quote action |
| `IActionCollection` | Collection of quote actions |
| `IItemAction` | Individual item action |
| `IItemActionCollection` | Collection of item actions |
| `IItemInfo` | Item information |
| `IMainItemCollection` | Collection of main items |
| `ILineItemCollection` | Collection of line items |
| `IQuoteItemCollection` | Collection of all quote items |

## Interfaces — Product Configuration

| Interface | Description |
|-----------|-------------|
| `IProduct` | Product information and attribute management |
| `IProductHelper` | Global product utilities (`CreateProduct`, `AddToQuote`) |
| `IProductAttribute` | Attribute definition with values |
| `IProductAttributeCollection` | Collection of product attributes |
| `IProductAttributeValue` | Selectable attribute value |
| `IProductAttributeValueCollection` | Collection of attribute values |
| `IProductType` | Product type categorization |
| `IProductTypeItem` | Quote-level product type representation |
| `IProductTypeItemCollection` | Collection of product type items |
| `IProductInfo` | Product metadata |
| `IProductMessages` | Validation messages on a product |
| `IProductErrorMessages` | Error messages on a product |
| `IReadOnlyProductMessages` | Read-only product messages |
| `IProductValidationMessage` | Individual validation message |
| `IProductValidationMessageCollection` | Collection of validation messages |
| `IProductTab` | Product configuration tab |
| `IProductTabCollection` | Collection of product tabs |
| `IProductTabChangedArgument` | Event args for tab navigation |
| `IProductAddEditArgument` | Args for product add/edit |
| `IProductBeforeAddToQuoteEventArgument` | Event args before product added to quote |
| `IBeforeAddToQuoteEventArguments` | Pre-add event context |
| `IBeforeConfigureEventArguments` | Pre-configure event context |
| `IBeforeProductAddToQuoteEventArgument` | Before product add event argument |
| `IAddItemArgument` | Argument for adding items |
| `IKeyAttribute` | Key attribute on a product |
| `IKeyAttributeCollection` | Collection of key attributes |
| `IAliases` | Product aliases |

## Interfaces — Customer & Business Partners

| Interface | Description |
|-----------|-------------|
| `ICustomer` | Customer information and address details |
| `ICustomerHelper` | Customer lookup utilities |
| `IBusinessPartner` | Partner relationship management |
| `IBusinessPartnerRepository` | Data retrieval for business partners |
| `IPartnerFunction` | Functional role definition |
| `IPartnerFunctionRepository` | Partner function data access |
| `IPartnerFunctionTranslation` | Translated partner function labels |
| `ICompany` | Company representation |
| `IUser` | CPQ user object |
| `IUserCustomField` | User-level custom field |
| `IUserCustomFieldCollection` | Collection of user custom fields |
| `IUserCustomFieldAttributeValue` | User custom field attribute value |
| `IUserCustomFieldAttributeValueCollection` | Collection of user CF attribute values |
| `IUserPersonalizationHelper` | Format values per user locale |
| `IUserType` | User type classification |

## Interfaces — REST & HTTP Communication

| Interface | Description |
|-----------|-------------|
| `IRestClient` | Basic RESTful service communication |
| `IAuthorizedRestClient` | REST with credentials-based authorization |
| `IAsyncRestClient` | Asynchronous REST operations |
| `IAsyncAuthorizedRestClient` | Async REST with basic auth header |
| `ImutualTLSRestClient` | Client certificate (mTLS) authentication |
| `IAsyncMTLSRestClient` | Async mutual TLS operations |
| `IRestServiceHelper` | REST service helper utilities |
| `IApiResponse` | API response wrapper |
| `IApiResponseFactory` | Factory for creating API responses |
| `IHttpUtility` | URL encoding and decoding |
| `IHttpWebClientProtocol` | HTTP web client protocol |
| `ISoapHttpClientProtocol` | SOAP HTTP client protocol |
| `IWebServiceHelper` | Web service helper |
| `INetworkCredential` | Network credential storage |
| `IRequest` | HTTP request representation |
| `IRequestContext` | HTTP request-scoped data storage |
| `IRequestItems` | Items in a request |
| `IPostedFile` | File posted via HTTP |

## Interfaces — Data & Database

| Interface | Description |
|-----------|-------------|
| `ISqlHelper` | SQL SELECT, INSERT, UPDATE, DELETE operations |
| `ISqlParameter` | Parameterized SQL query construction |
| `ISqlHelperInfo` | Result info from SQL operations |
| `ITableInfo` | Table definition with columns and metadata |
| `ITableDataRow` | Row data for INSERT/UPDATE/DELETE |
| `ITableColumnInfo` | Column definition within a table |
| `IJsonHelper` | JSON serialization/deserialization |
| `IXmlHelper` | XML parsing and manipulation |
| `IWorkbook` | Excel workbook access |
| `IWorkbookSheet` | Excel worksheet access |
| `IWorkbookCells` | Excel cell access |
| `ISelectedDictionary` | Key-value dictionary |

## Interfaces — Containers

| Interface | Description |
|-----------|-------------|
| `IContainer` | Configuration container |
| `IContainerColumn` | Container column definition |
| `IContainerColumnCollection` | Collection of container columns |
| `IContainerRow` | Container row |
| `IContainerRowCollection` | Collection of container rows |
| `IContainerProperty` | Property within a container |
| `IContainerPropertyCollection` | Collection of container properties |
| `IQuoteItemContainer` | Container attached to a quote item |
| `IQuoteItemContainerColumn` | Column in a quote item container |
| `IQuoteItemContainerColumnCollection` | Collection of quote item container columns |
| `IQuoteItemContainerRow` | Row in a quote item container |
| `IQuoteItemContainerRowCollection` | Collection of quote item container rows |
| `IQuoteItemContainerProperty` | Property in a quote item container |
| `IQuoteItemContainerPropertyCollection` | Collection of quote item container properties |

## Interfaces — Assets

| Interface | Description |
|-----------|-------------|
| `IAssetAttribute` | Asset attribute |
| `IAssetConfiguration` | Asset configuration |
| `IAssetContainer` | Asset container |
| `IAssetContainerRow` | Row within an asset container |
| `IAssetItem` | Asset item |
| `IAssetMainItem` | Main item representation of an asset |

## Interfaces — Messaging & Email

| Interface | Description |
|-----------|-------------|
| `IMailMessage` | Email composition with attachments |
| `IMailAddress` | Sender/recipient address |
| `ISmtpClient` | Email transmission |
| `IAttachment` | Email attachment |
| `IAttachedDocument` | Document attached to a quote |
| `IAttachedDocumentCollection` | Collection of attached documents |
| `IGeneratedDocument` | Generated quote document |
| `IGeneratedDocumentCollection` | Collection of generated documents |

## Interfaces — Utilities & Helpers

| Interface | Description |
|-----------|-------------|
| `ILog` | Logging functionality |
| `ITrace` | Debug message writing |
| `IConvert` | String conversion utilities |
| `ICryptography` | Cryptography utility methods |
| `ISession` | Persist objects across script executions |
| `IScriptExecutor` | Execute scripts from other scripts with parameters |
| `IWorkflowContext` | Client-side script injection |
| `IWorkflowExecutor` | Workflow execution |
| `IFileHelper` | File operations |
| `IRandom` | Random number generation |
| `ITranslation` | Translation helpers |

## Interfaces — Pricing & Configuration

| Interface | Description |
|-----------|-------------|
| `IDocumentPricingResponse` | Response from document pricing |
| `IVCCondition` | Visual configurator condition |
| `IVCConditionsWithPurpose` | VC conditions with associated purpose |
| `IVCPricingResponse` | Visual configurator pricing response |
| `IVCResponseItem` | Item in a VC response |
| `IVCSubtotal` | Subtotal in a VC response |
| `IApproversResponsibility` | Approver responsibility definition |
| `IApproversResponsibilityCollection` | Collection of approver responsibilities |

## Interfaces — Market & Territory

| Interface | Description |
|-----------|-------------|
| `IMarket` | Market representation |
| `IScriptingMarket` | Market in scripting context |
| `IScriptingMarketCollection` | Collection of scripting markets |
| `ITerritory` | Territory representation |
| `ISalesArea` | Sales area |
| `IShipping` | Shipping options |

## Interfaces — Security & Federation

| Interface | Description |
|-----------|-------------|
| `ISamlAssertionProvider` | SAML assertion generation |
| `IFederationUtility` | Federation helper methods |
| `ISapPassport` | SAP passport authentication |
| `IAssert` | Assertion helper for scripts/tests |

## Interfaces — Tag Parsing

| Interface | Description |
|-----------|-------------|
| `ITagParserProduct` | Parse tags on products |
| `ITagParserQuote` | Parse tags on quotes |
| `ITechnicalDocumentation` | Technical documentation access |

## Interfaces — Events

| Interface | Description |
|-----------|-------------|
| `ICrmLandingEventArguments` | CRM integration event context |
| `ICustomFieldChangedArgument` | Custom field change event argument |
