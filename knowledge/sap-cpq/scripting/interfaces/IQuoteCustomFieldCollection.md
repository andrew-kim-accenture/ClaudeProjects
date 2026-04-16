# IQuoteCustomFieldCollection

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/b2ac60ac-7c91-040f-cfb5-55c7c7c8061f.htm

## Overview

Quote custom field collection.

## Methods

### Allow(String[] fieldNames)
- **Returns:** void
- **Description:** Allows custom field(s) by strong name(s).

### Disallow(String[] fieldNames)
- **Returns:** void
- **Description:** Disallows custom field(s) by strong name(s).

### AllowValue(String fieldName, String valueSystemId)
- **Returns:** void
- **Description:** Allows the value by value system id.

### AllowValues(String fieldName, String[] valueSystemIds)
- **Returns:** void
- **Description:** Allows the value(s) by value system id(s).

### AllowValueByValueCode(String fieldName, String valueCode)
- **Returns:** void
- **Description:** Allows the value by value code.

### AllowValuesByValueCodes(String fieldName, String[] valueCodes)
- **Returns:** void
- **Description:** Allows the value(s) by value code(s).

### DisallowValue(String fieldName, String valueSystemId)
- **Returns:** void
- **Description:** Disallows the value by value system id.

### DisallowValues(String fieldName, String[] valueSystemIds)
- **Returns:** void
- **Description:** Disallows the value(s) by value system id(s).

### DisallowValueByValueCode(String fieldName, String valueCode)
- **Returns:** void
- **Description:** Disallows the value by value code.

### DisallowValuesByValueCodes(String fieldName, String[] valueCodes)
- **Returns:** void
- **Description:** Disallows the value(s) by value code(s).

### AssignValue(String fieldName, String textValue)
- **Returns:** void
- **Description:** Assigns the specified text to custom field.

### DisallowAllValuesExcept(String fieldName, String[] valueSystemIds)
- **Returns:** void
- **Description:** Disallows all custom fields values except values with specified value system id(s).

### DisallowAllValuesExceptByValueCodes(String fieldName, String[] valueCodes)
- **Returns:** void
- **Description:** Disallows all custom fields values except values with specified value code(s).

### SelectValue(String fieldName, String valueSystemId)
- **Returns:** void
- **Description:** Selects the value by value system id.

### SelectValueByValueCode(String fieldName, String valueCode)
- **Returns:** void
- **Description:** Selects the value by specified value code.

### Reset(String[] fieldNames)
- **Returns:** void
- **Description:** Resets the custom field(s).

### SetOptional(String[] fieldNames)
- **Returns:** void
- **Description:** Sets the specified custom field(s) optional.

### SetRequired(String[] fieldNames)
- **Returns:** void
- **Description:** Sets the specified custom field(s) required.

## Code Examples

```python
# Allow custom fields
Quote.CustomFields.Allow("Custom Field Name 1")
Quote.CustomFields.Allow("Custom Field Name 1", "Custom Field Name 2", "Custom Field Name 3")

# Select value by system ID
Quote.CustomFields.SelectValue("Custom Field Name 1", "Custom_Field_1_Value_1_cpq")

# Select value by code
Quote.CustomFields.SelectValueByValueCode("Custom Field Name 1", "Value 1")

# Set field requirement
Quote.CustomFields.SetRequired("Custom Field Name 1")
Quote.CustomFields.SetOptional("Custom Field Name 1")
```
