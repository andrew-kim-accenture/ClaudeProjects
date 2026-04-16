# IProductHelper

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/4c110394-1d85-0241-cef4-a30cd47f2abf.htm

## Overview

Helper class which allows global manipulation of products. Available as the global `ProductHelper` variable.

## Methods

### CanAlterQuantity(Int32 productId)
- **Returns:** Boolean
- **Description:** Determines whether product quantity can be altered.

### CanAlterQuantity(String productSystemId)
- **Returns:** Boolean
- **Description:** Determines whether product quantity can be altered. Throws validation error if product does not exist for provided system id.

### CanBeAddedToQuote(Int32 productId)
- **Returns:** Boolean
- **Description:** Determines whether user can add product to the quote.

### CanBeAddedToQuote(String productSystemId)
- **Returns:** Boolean
- **Description:** Determines whether user can add product to the quote. Throws validation error if product does not exist for provided system id.

### CreateExternalProductFromVariantConfiguration(...)
- **Returns:** IProduct
- **Description:** Creates product's instance from variant configuration json.

### CreateProduct(Int32 productId)
- **Returns:** IProduct
- **Description:** Creates product's instance for inline manipulation of product configuration through scripting based on product id.

### CreateProduct(String productSystemId)
- **Returns:** IProduct
- **Description:** Creates product's instance for inline manipulation of product configuration through scripting based on product system id.

### CreateProduct(Int32 productId, String packedCSVPAVID)
- **Returns:** IProduct
- **Description:** Creates product instance with packed CSVPAVID configuration.

### CreateProduct(String quoteItemGuid, Int32 quoteItemId)
- **Returns:** IProduct
- **Description:** Creates product instance (item and sub-items) from existing quote item.

### CreateProduct(String productSystemId, String packedCSVPAVID)
- **Returns:** IProduct
- **Description:** Creates product instance with system id and packed CSVPAVID configuration.

### CreateProduct(Int32 productId, String productConfig, String containerConfig)
- **Returns:** IProduct
- **Description:** Creates product with id, product config, and container config.

### CreateProduct(String productSystemId, String productConfig, String containerConfig)
- **Returns:** IProduct
- **Description:** Creates product with system id, product config, and container config.

### CreateProductWithQuoteContext(Int32 productId, Int32 quoteId)
- **Returns:** IProduct
- **Description:** Creates instance considering quote header field dependencies.

### CreateProductWithQuoteContext(String productSystemId, Int32 quoteId)
- **Returns:** IProduct
- **Description:** Creates instance considering quote header field dependencies.

### CreateVariantProductFromVariantConfiguration(...)
- **Returns:** IProduct
- **Description:** Creates product's instance from variant configuration json.

### IsSimpleProduct(Int32 productId)
- **Returns:** Boolean
- **Description:** Determines whether product is simple.

### IsSimpleProduct(String productSystemId)
- **Returns:** Boolean
- **Description:** Determines whether product is simple. Throws validation error if product does not exist for provided system id.

### IsVisibleToCurrentUser(Int32 productId)
- **Returns:** Boolean
- **Description:** Determines whether product is visible.

### IsVisibleToCurrentUser(String productSystemId)
- **Returns:** Boolean
- **Description:** Determines whether product is visible. Throws validation error if product does not exist for provided system id.
