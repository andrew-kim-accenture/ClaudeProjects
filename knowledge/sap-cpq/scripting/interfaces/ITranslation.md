# ITranslation

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/0e7333b6-790e-bb71-628a-d4efbb8f4901.htm

## Overview

Enables dictionary key/value translation functionality for retrieving translated values from dictionaries within SAP CPQ scripting contexts.

## Methods

### Get(String key)
- **Returns:** String
- **Description:** Gets translated value from the current dictionary by key.

### Get(Int32 dictionaryId, String key)
- **Returns:** String
- **Description:** Gets translated value from the given dictionary by key.

### GetFormatted(String key, String[] variables)
- **Returns:** String
- **Description:** Gets formatted translated value from the dictionary by key.

### GetFormatted(Int32 dictionaryId, String key, String[] variables)
- **Returns:** String
- **Description:** Gets formatted translated value from the given dictionary by key.

## Code Examples

```python
# Get translation from dictionary ID 2 (German)
translatedValue = Translation.Get(2, 'CustomDictionary.CurrentlyLoggedUser')

# Get formatted translation with single placeholder
result = Translation.GetFormatted('CustomDictionary.CurrentlyLoggedUser', 'user', User.Name)

# Get formatted translation with multiple placeholders from specific dictionary
result = Translation.GetFormatted(2, 'CustomDictionary.CurrentlyLoggedUser', 'user', User.Name, 'userName', User.UserName)
```
