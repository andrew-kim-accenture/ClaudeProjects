# IStreamReader

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/7a13f2d7-1918-1e87-3287-ff65ed7e91bd.htm

## Overview

Wrapper of System.IO.StreamReader for IronPython Scripting with limited set of features.

## Properties

| Name | Type | Description |
|------|------|-------------|
| BaseStream | Stream | Returns the underlying stream |
| CurrentEncoding | Encoding | Gets the current character encoding that the current IStreamReader object is using |
| EndOfStream | Boolean | Gets a value that indicates whether the current stream position is at the end of the stream |

## Methods

### Close()
- **Returns:** void
- **Description:** Closes the StreamReader object and the underlying stream, and releases any system resources associated with the reader.

### DiscardBufferedData()
- **Returns:** void
- **Description:** Allows a IStreamReader object to discard its current data.

### Dispose()
- **Returns:** void
- **Description:** Closes the underlying stream, releases the unmanaged resources used by the StreamReader, and optionally releases the managed resources.

### Peek()
- **Returns:** Int32
- **Description:** Returns the next available character but does not consume it.

### Read()
- **Returns:** Int32
- **Description:** Reads the next character from the input stream and advances position by one character.

### Read(Char[] buffer, Int32 index, Int32 count)
- **Returns:** Int32
- **Description:** Reads a maximum of count characters from the current stream into buffer, beginning at index.

### ReadBlock()
- **Returns:** Int32
- **Description:** Reads the block.

### ReadLine()
- **Returns:** String
- **Description:** Reads a line of characters from the current stream and returns the data as a string.

### ReadToEnd()
- **Returns:** String
- **Description:** Reads the stream from the current position to the end of the stream.
