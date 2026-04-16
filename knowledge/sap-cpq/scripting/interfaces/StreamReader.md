# StreamReader

**Namespace:** Scripting
**Type:** Class
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/e96efff9-09c7-59ad-8d8f-c179a590727d.htm

## Overview

Wrapper of `System.IO.StreamReader` for IronPython Scripting with limited set of features.

**Inheritance:** System.Object → StreamReader
**Implements:** IDisposable

## Constructors

| Constructor | Parameters | Description |
|-------------|-----------|-------------|
| StreamReader | Stream | Initializes new instance for specified stream |
| StreamReader | StreamReader | Initializes new instance of StreamReader |
| StreamReader | Stream, Encodings | Initializes with stream and character encoding |
| StreamReader | Stream, Boolean | Initializes with stream and byte order mark detection |
| StreamReader | Stream, Int32 | Initializes with stream and character encoding |
| StreamReader | Stream, Encoding | Initializes with stream and encoding (**Obsolete**) |
| StreamReader | Stream, Encodings, Boolean | Initializes with stream, encoding, and BOM detection |
| StreamReader | Stream, Int32, Boolean | Initializes with stream, encoding, and BOM detection |
| StreamReader | Stream, Encoding, Boolean | Initializes with stream, encoding, BOM detection (**Obsolete**) |
| StreamReader | Stream, Encodings, Boolean, Int32 | Initializes with stream, encoding, BOM detection, and buffer size |
| StreamReader | Stream, Int32, Boolean, Int32 | Initializes with stream, encoding, BOM detection, and buffer size |
| StreamReader | Stream, Encoding, Boolean, Int32 | Initializes with stream, encoding, BOM detection, buffer size (**Obsolete**) |

## Properties

| Name | Type | Description |
|------|------|-------------|
| BaseStream | Stream | Returns the underlying stream |
| CurrentEncoding | Encoding | Gets the current character encoding that the current StreamReader object is using |
| EncodingCodePage | Int32 | Gets the current code page id of the character encoding being used by the StreamReader object |
| EndOfStream | Boolean | Gets a value that indicates whether the current stream position is at the end of the stream |

## Methods

| Method | Parameters | Return Type | Description |
|--------|-----------|-------------|-------------|
| Close | (none) | void | Closes the System.IO.StreamReader object and the underlying stream, and releases any system resources |
| DiscardBufferedData | (none) | void | Allows a StreamReader object to discard its current data |
| Dispose | (none) | void | Closes the underlying stream, releases unmanaged resources used by the System.IO.StreamReader |
| Peek | (none) | Int32 | Returns the next available character but does not consume it |
| Read | (none) | Int32 | Reads the next character from the input stream and advances the character position by one |
| Read | Char[], Int32, Int32 | Int32 | Reads a maximum of count characters from the current stream into buffer, beginning at index |
| ReadBlock | (none) | Int32 | Reads the block |
| ReadLine | (none) | String | Reads a line of characters from the current stream and returns the data as a string |
| ReadToEnd | (none) | String | Reads the stream from the current position to the end of the stream |
