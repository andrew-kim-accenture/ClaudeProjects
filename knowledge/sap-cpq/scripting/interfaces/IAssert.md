# IAssert

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/444742e8-2886-72cf-9cd6-8ed453373558.htm

## Overview

Contains helper assert methods, primarily for automated testing but also usable in production scripts for guard clauses.

## Methods

### AreEqual(Object expected, Object actual)
- **Returns:** void
- **Description:** Confirms two objects match (both null or same value); throws exception if unequal.

### AreEqual(Object expected, Object actual, String message)
- **Returns:** void
- **Description:** Same as above with custom message parameter.

### AreNotEqual(Object notExpected, Object actual)
- **Returns:** void
- **Description:** Confirms objects differ; throws exception if equal.

### AreNotEqual(Object notExpected, Object actual, String message)
- **Returns:** void
- **Description:** Same as above with custom message parameter.

### Contains(Object element, ICollection collection)
- **Returns:** void
- **Description:** Verifies object exists within a collection.

### Contains(Object element, ICollection collection, String message)
- **Returns:** void
- **Description:** Same as above with custom message parameter.

### IsEmpty(IEnumerable collection)
- **Returns:** void
- **Description:** Confirms collection/array contains no elements.

### IsEmpty(String value)
- **Returns:** void
- **Description:** Confirms string equals string.Empty.

### IsEmpty(IEnumerable collection, String message)
- **Returns:** void
- **Description:** Collection emptiness check with message.

### IsEmpty(String value, String message)
- **Returns:** void
- **Description:** String emptiness check with message.

### IsNotEmpty(IEnumerable collection)
- **Returns:** void
- **Description:** Confirms collection has elements.

### IsNotEmpty(String value)
- **Returns:** void
- **Description:** Confirms string is not string.Empty.

### IsNotEmpty(IEnumerable collection, String message)
- **Returns:** void
- **Description:** Collection non-emptiness with message.

### IsNotEmpty(String value, String message)
- **Returns:** void
- **Description:** String non-emptiness with message.

### IsNull(Object value)
- **Returns:** void
- **Description:** Verifies object is null; throws if not.

### IsNull(Object value, String message)
- **Returns:** void
- **Description:** Same with custom message.

### IsNotNull(Object value)
- **Returns:** void
- **Description:** Verifies object is not null; throws if null.

### IsNotNull(Object value, String message)
- **Returns:** void
- **Description:** Same with custom message.

### IsNullOrEmpty(String value)
- **Returns:** void
- **Description:** Confirms string is null or empty.

### IsNullOrEmpty(String value, String message)
- **Returns:** void
- **Description:** Same with custom message.

### IsNotNullOrEmpty(String value)
- **Returns:** void
- **Description:** Confirms string has content.

### IsNotNullOrEmpty(String value, String message)
- **Returns:** void
- **Description:** Same with custom message.

### IsTrue(Boolean condition)
- **Returns:** void
- **Description:** Confirms condition evaluates true; throws if false.

### IsTrue(Boolean condition, String message)
- **Returns:** void
- **Description:** Same with custom message.

### IsFalse(Boolean condition)
- **Returns:** void
- **Description:** Confirms condition evaluates false; throws if true.

### IsFalse(Boolean condition, String message)
- **Returns:** void
- **Description:** Same with custom message.

### Fail(String message)
- **Returns:** void
- **Description:** Throws exception with provided message.
