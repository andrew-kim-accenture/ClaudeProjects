# IPostedFile

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/d142d348-eda5-bfa9-2bfa-215a04786708.htm

## Overview

Posted File information.

## Properties

| Name | Type | Description |
|------|------|-------------|
| ContentLength | Int32 | Gets the size of an uploaded file, in bytes |
| ContentType | String | Gets the MIME content type of an uploaded file |
| FileName | String | Gets the file name of the file on the client |
| FullFileName | String | Gets the fully qualified name of the file on the client |
| InputStream | Stream | Gets a Stream object that points to an uploaded file to prepare for reading the contents of the file |

## Methods

### GetBytes()
- **Returns:** Byte[]
- **Description:** Gets the object that represents the contents of the file.

### GetText()
- **Returns:** String
- **Description:** Gets a text that represents the contents of the file.
