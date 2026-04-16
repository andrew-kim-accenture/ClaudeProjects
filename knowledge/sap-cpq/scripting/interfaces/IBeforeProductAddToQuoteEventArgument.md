# IBeforeProductAddToQuoteEventArgument

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/a6071a01-ccc5-4223-fc25-d9f2429c3063.htm

## Overview

Context available for the event raised before product is being added/updated to the quote. Also raised after the item is being reconfigured and before updated back to the quote. Used for Quote 2.0 engine.

## Properties

| Name | Type | Description |
|------|------|-------------|
| BreakAddingProductToQuoteExecution | Boolean | A flag indicating whether the action should continue adding product to the Quote |
| IsReconfigure | Boolean | Is triggered from reconfigure action |
| Product | IProduct | Product in the context |
| Quote | IQuote | Quote to which Product is being added |
