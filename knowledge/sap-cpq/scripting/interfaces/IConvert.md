# IConvert

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/318c62e2-22a2-3a2f-2fc6-b81a21e811bc.htm

## Overview

Helper string conversion class.

## Methods

### Base64Decode(String value)
- **Returns:** String
- **Description:** Converts the specified string, which encodes binary data as base-64 digits, back to its original form.

### Base64Encode(String value)
- **Returns:** String
- **Description:** Converts a string to its equivalent string representation that is encoded with base-64 digits.

### FromBase64String(String value)
- **Returns:** Byte[]
- **Description:** Converts the specified string, which encodes binary data as base-64 digits, to an equivalent 8-bit unsigned integer array.

### GetBytes(String value, Encodings encoding)
- **Returns:** Byte[]
- **Description:** Encodes all the characters in the specified string into a sequence of bytes.

### ToBase64String(Byte[] value)
- **Returns:** String
- **Description:** Converts an array of 8-bit unsigned integers to its equivalent string representation that is encoded with base-64 digits.
