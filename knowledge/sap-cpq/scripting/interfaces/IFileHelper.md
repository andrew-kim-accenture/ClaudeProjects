# IFileHelper

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/4698a1de-4373-3c7b-7bc8-9082b27640c8.htm

## Overview

Provides file handling capabilities for SAP CPQ scripting.

## Methods

### GetStreamFromBytes(Byte[] bytes)
- **Returns:** Stream
- **Description:** Gets the stream from bytes.

### GetStreamFromPath(String path)
- **Returns:** Stream
- **Description:** Gets the stream from path.

### LoadBinaryFile(String path)
- **Returns:** Byte[]
- **Description:** Loads the binary file.

### LoadTextFile(String path)
- **Returns:** String
- **Description:** Loads the text file.

### Save(Stream stream, String path)
- **Returns:** void
- **Description:** Saves the specified stream to file.
