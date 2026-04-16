# SqlDbType

**Namespace:** Scripting
**Type:** Enumeration
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/1831dcdd-7dd5-805c-1497-55751e21a475.htm

## Overview

Specifies SQL Server-specific data types for use with the `ISqlParameter` interface in SAP CPQ scripting.

## Members

| Member Name | Value | Description |
|-------------|-------|-------------|
| Bit | 2 | An unsigned numeric value that can be 0, 1, or null |
| DateTime | 4 | Date and time data ranging in value from January 1, 1753 to December 31, 9999 to an accuracy of 3.33 milliseconds |
| Decimal | 5 | A fixed precision and scale numeric value between -10^38 - 1 and 10^38 - 1 |
| Int | 8 | A 32-bit signed integer |
| NVarChar | 12 | A variable-length stream of Unicode characters ranging between 1 and 4,000 characters. Implicit conversion fails if the string is greater than 4,000 characters. Explicitly set the object when working with strings longer than 4,000 characters |
| Date | 31 | Date data ranging in value from January 1, 1 AD through December 31, 9999 AD |
