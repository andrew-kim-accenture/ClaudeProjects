# IUserPersonalizationHelper

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/6eceaf55-1568-04a5-cf11-c01a9af522d7.htm

## Overview

Provides methods to handle format conversions for user-personalized data. IronPython built-in functions used in scripts return values in a format that may differ from the user's selected format — use these methods instead to ensure compatibility with user preferences.

## Methods

### ConvertToNumber(String value)
- **Returns:** Decimal
- **Description:** Converts value string to numeric format using user's number format settings.

### CovertToDate(String value)
- **Returns:** DateTime
- **Description:** Converts value string to date format using user's date format settings.

### IsDateInUserFormat(String value)
- **Returns:** Boolean
- **Description:** Validates whether a date string matches user's date format.

### IsNumberInUserFormat(String value)
- **Returns:** Boolean
- **Description:** Validates whether a number string matches user's number format.

### ToUserFormat(DateTime value)
- **Returns:** String
- **Description:** Converts DateTime to user's preferred format string.

### ToUserFormat(Decimal value)
- **Returns:** String
- **Description:** Converts Decimal to user's preferred format string.
