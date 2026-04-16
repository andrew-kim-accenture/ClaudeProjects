# ILog

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/b2b3c8b3-6685-3d28-f50d-b5b6f791c32e.htm

## Overview

Writes messages to log.

## Methods

### Error Methods

- `Error(String message)` — Writes specified error to log
- `Error(String title, String message)` — Writes specified error to log
- `Error(String title, String message, Object exception)` — Writes specified error to log
- `ErrorFormat(...)` — Writes formatted error to log
- `ErrorFormatWithException(...)` — Writes formatted error to log
- `ErrorFormatWithTitle(...)` — Writes formatted error to log

### Info Methods

- `Info(String message)` — Writes specified info to log
- `Info(String title, String message)` — Writes specified info to log
- `InfoFormat(...)` — Writes formatted info to log
- `InfoFormatWithTitle(...)` — Writes formatted info to log

### Warning Methods

- `Warning(String message)` — Writes specified warning to log
- `Warning(String title, String message)` — Writes specified warning to log
- `WarningFormat(...)` — Writes formatted warning to log
- `WarningFormatWithTitle(...)` — Writes formatted warning to log

### Write Methods

- `Write(String message)` — Writes specified message to log
- `Write(String title, String message)` — Writes specified message to log
- `WriteFormat(...)` — Writes formatted message to log
- `WriteFormatWithTitle(...)` — Writes formatted message to log
