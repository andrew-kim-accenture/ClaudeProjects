# IRandom

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/f92c17a2-096e-da56-0601-f19dc7a069f1.htm

## Overview

The Random object is used to generate random numbers through scripting.

## Methods

### Next()
- **Returns:** Int32
- **Description:** Returns a non-negative random integer.

### Next(Int32 maxValue)
- **Returns:** Int32
- **Description:** Returns a non-negative random integer that is less than the specified maximum.

### Next(Int32 minValue, Int32 maxValue)
- **Returns:** Int32
- **Description:** Returns a random integer that is within a specified range.

### NextDouble()
- **Returns:** Double
- **Description:** Returns a random floating-point number that is greater than or equal to 0.0, and less than 1.0.
