# IScriptExecutor

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/8c85c3fb-fa3b-2d9c-37c1-1362b41e192c.htm

## Overview

Provides the ability to execute scripts from within another script. The target script must be in an active state to execute successfully. Returns `None` if script name is invalid or script is inactive. Called scripts return values via a variable named `Result`. Input parameters are accessed through the `Param` variable in called scripts.

## Methods

### Execute(String scriptName)
- **Returns:** Object
- **Description:** Executes a specified script without input parameters.

### Execute(String scriptName, IDictionary params)
- **Returns:** Object
- **Description:** Executes a script with input parameters passed as dictionary.

### Execute(String scriptName, String param)
- **Returns:** Object
- **Description:** Executes a script by specified name with a string parameter.

### ExecuteGlobal(String scriptName)
- **Returns:** Object
- **Description:** Executes a specified global script without input parameters.

### ExecuteGlobal(String scriptName, IDictionary params)
- **Returns:** Object
- **Description:** Executes a global script with input parameters.

### ExecuteGlobal(String scriptName, String param)
- **Returns:** Object
- **Description:** Executes a global script by specified name with a string parameter.

## Code Examples

```python
# Basic execution
ScriptExecutor.Execute("My_Script")
result = ScriptExecutor.ExecuteGlobal("My_Global_Script")

# With parameters
result = ScriptExecutor.Execute("My_Script", {'ID':5, 'Name': 'John'})
```
