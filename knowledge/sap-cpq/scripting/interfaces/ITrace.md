# ITrace

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/c4ee684c-35a3-08fa-e628-1d145bd0cf81.htm

## Overview

ITrace writes messages to trace. Use this class for debugging scripts.

## Properties

| Name | Type | Description |
|------|------|-------------|
| IsOn | Boolean | Indicates whether tracing is enabled in developer console |

## Methods

### Debug(Object data)
- **Returns:** void
- **Description:** Adds object description data to trace. Debug function should be used while trying to figure out IronPython scripts and should be removed in production scripts.

### Write(String message)
- **Returns:** void
- **Description:** Writes the specified message to trace.

### WriteFormat(String format, Object[] args)
- **Returns:** void
- **Description:** Writes the specified formatted message to trace. Formatting is deferred to be done only if tracing is on.

### WriteStep(Object message)
- **Returns:** void
- **Description:** Writes the step to trace; useful for tracing code blocks. Should be used with the WITH block.

### WriteStepFormat(String format, Object[] args)
- **Returns:** void
- **Description:** Writes the step to trace, formats the message; useful for tracing code blocks. Should be used with the WITH block.
