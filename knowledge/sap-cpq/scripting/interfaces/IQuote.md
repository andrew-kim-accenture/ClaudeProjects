# IQuote

**Namespace:** Scripting
**Type:** Interface
**Source:** `https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/598345de-54e5-d213-e290-1bab8a4dcb3e.htm`

## Overview

Main quote interface. Always available in scope as the global `Quote` object. Provides access to all quote data — items, custom fields, actions, documents, approvals, customers, and pricing.

## Properties

| Name | Type | Description |
|------|------|-------------|
| `Actions` | `IActions` | Gets the actions |
| `AdditionalDiscounts` | `IAdditionalDiscounts` | Gets the additional discounts |
| `BillToCustomer` | `Customer` | Gets or sets the bill-to customer |
| `CompositeNumber` | `String` | Gets or sets the composite number (setter will be removed) |
| `CompositeNumberCrypted` | `String` | Gets crypted composite number |
| `CustomFields` | `IQuoteCustomFields` | Gets the custom fields |
| `DateClosed` | `DateTime` | Gets or sets the date closed |
| `DateCreated` | `DateTime` | Gets or sets the date created |
| `DateModified` | `DateTime` | Gets or sets the date modified |
| `DateOrdered` | `DateTime` | Gets or sets the date ordered |
| `DiscountExceeded` | `Boolean` | Gets or sets whether discount exceeded |
| `DocumentTypeCode` | `String` | Gets the document type |
| `EffectiveDate` | `DateTime` | Gets effective date of the quote |
| `EndUserCustomer` | `Customer` | Gets or sets the end user customer |
| `ExternalQuoteId` | `String` | Gets the external ID of the quote |
| `ExternalQuoteOrigin` | `String` | Gets the origin of the external quote |
| `IncludeTaxInTotalPrice` | `Boolean` | Gets or sets if calculated tax should be included in total price |
| `IsNewCreated` | `Boolean` | Gets flag indicating if quote is newly created |
| `IsShippingLoadedForAllItems` | `Boolean` | Gets whether shipping is loaded for all items |
| `ItemActionId` | `Int32` | Gets the item action id |
| `Items` | `IQuoteItems` | Gets all items within the quote |
| `MainItems` | `IQuoteItems` | Gets the main items |
| `MappedOpportunityStatus` | `String` | Gets the mapped opportunity status |
| `MarketFactor` | `Decimal` | Gets or sets the market factor |
| `Messages` | `IMessages` | Gets the messages |
| `OpportunityId` | `String` | Gets or sets the opportunity id |
| `OpportunityName` | `String` | Gets or sets the opportunity name |
| `OrderId` | `String` | Gets the order identifier |
| `OrderStatus` | `String` | Gets the order status |
| `PricebookId` | `String` | Gets or sets the pricebook identifier |
| `ProductTypes` | `IProductTypes` | Gets the product types |
| `QuoteActionId` | `QuoteActionIds` | Gets the quote action id |
| `QuoteId` | `String` | Gets the quote id |
| `QuoteTables` | `IQuoteTables` | Gets the quote tables |
| `RevisionNumber` | `Int32` | Gets or sets the revision number |
| `RootSystemMainItems` | `IQuoteItems` | Gets the system main items |
| `SelectedMarket` | `IMarket` | Gets the selected market |
| `SelectedShipping` | `IShipping` | Gets the selected shipping |
| `ShipToCustomer` | `Customer` | Gets or sets the ship-to customer |
| `Total` | `Decimal` | Gets the total |
| `UserId` | `String` | Gets the user id |

## Methods

### Action & Status

#### `ExecuteAction(Int32 actionId)`
- **Returns:** `void`
- **Description:** Executes a quote action by ID. Checks if user can execute — throws if action is unavailable. Preserves cart and upgrades products.

#### `ExecuteAction(Int32 actionId, Boolean upgradeProducts)`
- **Returns:** `void`
- **Description:** Executes action with explicit upgrade control. Respects action settings if `upgradeProducts` is false.

#### `ChangeQuoteStatus(String status)`
- **Returns:** `void`
- **Description:** Changes quote status to the specified status name.

#### `Approve()`
- **Returns:** `void`
- **Description:** Approves the quote.

#### `Reject()`
- **Returns:** `void`
- **Description:** Rejects the quote.

#### `Reconfigure()`
- **Returns:** `void`
- **Description:** Reconfigures the quote.

### Item Management

#### `AddItem(Int32 productId)`
- **Returns:** `void`
- **Description:** Adds item with quantity 1. Throws validation exception if add item cannot execute.

#### `AddItem(String productSystemId)`
- **Returns:** `void`
- **Description:** Adds item by system ID with quantity 1.

#### `AddItem(Int32 productId, Decimal quantity)`
- **Returns:** `void`
- **Description:** Adds item with specified quantity.

#### `AddItem(String productSystemId, Decimal quantity)`
- **Returns:** `void`
- **Description:** Adds item by system ID with specified quantity.

#### `GetItemByQuoteItem(Int32 quoteItemNumber)`
- **Returns:** `IQuoteItem`
- **Description:** Gets item by integer quote item number.

#### `GetItemByQuoteItem(String quoteItemNumber)`
- **Returns:** `IQuoteItem`
- **Description:** Gets item by rolled-up quote item number string (e.g. `"1.1"`).

#### `GetItemByUniqueIdentifier(String uniqueId)`
- **Returns:** `IQuoteItem`
- **Description:** Gets item by GUID unique identifier.

#### `GetItemsByProductTypeSystemId(String productTypeSystemId)`
- **Returns:** `IEnumerable<IQuoteItem>`
- **Description:** Gets all items of a specified product type system ID.

### Product / ProductType Queries

#### `ContainsAnyProduct(params String[] systemIds)`
- **Returns:** `Boolean`
- **Description:** Returns true if quote contains any product matching the given system IDs.

#### `ContainsAnyProductByName(params String[] productNames)`
- **Returns:** `Boolean`
- **Description:** Returns true if quote contains any product matching the given names.

#### `ContainsAnyProductByPartNumber(params String[] partNumbers)`
- **Returns:** `Boolean`
- **Description:** Returns true if quote contains any product matching the given part numbers.

#### `ContainsAnyProductType(params String[] productTypeSystemIds)`
- **Returns:** `Boolean`
- **Description:** Returns true if quote contains any item with matching product type system IDs. Does not consider Optional items.

#### `ContainsAnyProductTypeByNames(params String[] productTypeNames)`
- **Returns:** `Boolean`
- **Description:** Returns true if quote contains any item with matching product type names. Does not consider Optional items.

#### `GetProductType(String productTypeSystemId)`
- **Returns:** `IProductType`
- **Description:** Gets product type by system ID.

#### `GetProductTypeByName(String productTypeName)`
- **Returns:** `IProductType`
- **Description:** Gets product type by name.

### Custom Fields

#### `GetCustomField(String fieldName)`
- **Returns:** `IQuoteCustomField`
- **Description:** Gets a quote custom field by its strong name.

### Additional Discounts

#### `NewAdditionalDiscount()`
- **Returns:** `IAdditionalDiscount`
- **Description:** Creates a new additional discount object.

#### `AddAdditionalDiscount(IAdditionalDiscount discount)`
- **Returns:** `void`
- **Description:** Adds an additional discount to the quote.

#### `GetAdditionalDiscount(String description)`
- **Returns:** `IAdditionalDiscount`
- **Description:** Gets additional discount by description.

#### `RemoveAdditionalDiscount(IAdditionalDiscount discount)`
- **Returns:** `void`
- **Description:** Removes an additional discount from the quote.

### Customer & Opportunity

#### `AttachToQuote(String opportunityId)`
- **Returns:** `void`
- **Description:** Attaches a Salesforce opportunity to the quote.

#### `NewCustomer(String name)`
- **Returns:** `ICustomer`
- **Description:** Creates a new customer.

#### `NewCustomer(String name, String city, String country)`
- **Returns:** `ICustomer`
- **Description:** Creates a new customer with address.

#### `SaveCustomer()`
- **Returns:** `void`
- **Description:** Saves the customer to the database.

#### `CopyToBillToCustomer()`
- **Returns:** `void`
- **Description:** Copies customer data to bill-to customer.

#### `CopyToShipToCustomer()`
- **Returns:** `void`
- **Description:** Copies customer data to ship-to customer.

#### `CopyToEndUserCustomer()`
- **Returns:** `void`
- **Description:** Copies customer data to end user customer.

### Reassignment

#### `Reassign(Int32 userId)`
- **Returns:** `void`
- **Description:** Reassigns quote to user; changes quote status by default.

#### `Reassign(String userId)`
- **Returns:** `void`
- **Description:** Reassigns quote to user by string ID; changes quote status by default.

#### `Reassign(Int32 userId, Boolean changeStatus)`
- **Returns:** `void`
- **Description:** Reassigns quote to user with explicit status change control.

#### `Reassign(String userId, Boolean changeStatus)`
- **Returns:** `void`
- **Description:** Reassigns quote to user by string ID with explicit status change control.

### Calculations

#### `Calculate()`
- **Returns:** `void`
- **Description:** Executes default calculations.

#### `Calculate(Int32 editableGroup)`
- **Returns:** `void`
- **Description:** Executes calculations for a specific editable group (Group # in Cart Fields Administration).

#### `CalculateAndSaveCustomFields()`
- **Returns:** `void`
- **Description:** Calculates and saves quote custom fields. Triggers `OnEveryTimeQuoteChanged` and `OnUserOnQuotationTab` events.

### Save & Persistence

#### `Save()`
- **Returns:** `void`
- **Description:** Saves the current quote to the database.

#### `Save(Boolean triggerEvents)`
- **Returns:** `void`
- **Description:** Saves the quote with control over whether IronPython event pipeline is triggered.

#### `RefreshActions()`
- **Returns:** `void`
- **Description:** Reloads available actions on the quote. Use after `Save()` when action visibility depends on custom field values changed in the script.

### Copy & Revision

#### `Copy()`
- **Returns:** `IQuote`
- **Description:** Copies the quote.

#### `CreateNewRevision()`
- **Returns:** `IQuote`
- **Description:** Creates a new quote revision and sets it active by default.

#### `CreateNewRevision(Boolean setActive)`
- **Returns:** `IQuote`
- **Description:** Creates a new quote revision with explicit active flag.

### Documents

#### `GenerateDocument(String templateName)`
- **Returns:** `void`
- **Description:** Generates quote document in PDF format.

#### `GenerateDocument(String templateName, GenDocFormat format)`
- **Returns:** `void`
- **Description:** Generates quote document in specified format.

#### `GetLatestGeneratedDocumentFileName()`
- **Returns:** `String`
- **Description:** Gets the filename of the latest generated document.

#### `GetLatestGeneratedDocumentId()`
- **Returns:** `String`
- **Description:** Gets the ID of the latest generated document.

#### `GetLatestGeneratedDocumentInBytes()`
- **Returns:** `Byte[]`
- **Description:** Gets the latest generated document as a byte array.

#### `GetLatestGeneratedDocumentStream()`
- **Returns:** `Stream`
- **Description:** Gets the latest generated document as a stream.

#### `GetGeneratedDocumentList()`
- **Returns:** `IEnumerable<IDocument>`
- **Description:** Gets all generated documents.

#### `GetGeneratedDocumentList(String templateName)`
- **Returns:** `IEnumerable<IDocument>`
- **Description:** Gets generated documents filtered by template name.

#### `GetAttachedDocumentList()`
- **Returns:** `IEnumerable<IDocument>`
- **Description:** Gets all attached documents.

#### `GetAttachedDocument(Int32 documentId)`
- **Returns:** `IDocument`
- **Description:** Gets an attached document by ID.

#### `ReplaceExistingGeneratedDocument(Stream documentStream)`
- **Returns:** `void`
- **Description:** Replaces the existing generated document with a new PDF stream.

### Shipping & Market

#### `LoadShippings()`
- **Returns:** `void`
- **Description:** Loads shipping options for the quote.

#### `SetMarket(IMarket market)`
- **Returns:** `void`
- **Description:** Sets the market for the current quote.

### Globals & Field State

#### `GetGlobal(String globalName)`
- **Returns:** `String`
- **Description:** Gets a global value by name.

#### `SetGlobal(String globalName, String value)`
- **Returns:** `void`
- **Description:** Sets a global value by name.

#### `IsFieldEditable(String columnName)`
- **Returns:** `Boolean`
- **Description:** Returns whether a quote column is editable.

#### `IsFieldModified(String columnName)`
- **Returns:** `Boolean`
- **Description:** Returns whether a quote column has been modified.

### Approvals

#### `GetApproversResponsibilities()`
- **Returns:** `IApproversResponsibilities`
- **Description:** Gets the approvers responsibilities.

### Utilities

#### `GetQuoteInXML()`
- **Returns:** `String`
- **Description:** Returns the quote object serialized as XML.

#### `Dispose()`
- **Returns:** `void`
- **Description:** Disposes the quote object.

## Code Examples

```python
# Execute a quote action
Quote.ExecuteAction(Quote.QuoteActionId.PlaceOrderId)

# Change status
Quote.ChangeQuoteStatus("Waiting for Approval")

# Check for products
if Quote.ContainsAnyProduct("SMB_Desktop_computer_cpq", "Laptop_IBM_cpq"):
    Quote.CustomFields.DisallowValues("Custom Field Name 1", "Value 1", "Value 2")

# Get item by number
if Quote.GetItemByQuoteItem(1) is not None:
    Quote.GetCustomField("CF1").Content = Quote.GetItemByQuoteItem(1).AsMainItem.RolledUpExtendedAmount

# Get items by product type
quoteItems = Quote.GetItemsByProductTypeSystemId("Hardware_cpq")
for item in quoteItems:
    totalHardwarePrice = totalHardwarePrice + item.ListPriceInMarket

# Add additional discount
discount = Quote.NewAdditionalDiscount()
discount.Description = "Loyalty discount"
discount.DiscountPercent = 5
Quote.AddAdditionalDiscount(discount)

# Save and refresh actions
Quote.GetCustomField("YesNoCF").Content = "Yes"
Quote.Save()
Quote.RefreshActions()

# Generate and retrieve a document
Quote.GenerateDocument("ProposalTemplate")
fileName = Quote.GetLatestGeneratedDocumentFileName()
fileBytes = Quote.GetLatestGeneratedDocumentInBytes()

# Create new revision
newRevision = Quote.CreateNewRevision()
```
