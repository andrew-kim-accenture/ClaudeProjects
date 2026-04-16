# IXmlHelper

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/36fe27c6-1b9a-b02d-92f9-2d86ca8fc1b0.htm

## Overview

XML helper for XML document manipulation within SAP CPQ scripting.

## Methods

### CreateXmlNode(String nodeName, Object nodeValue)
- **Returns:** XmlNode
- **Description:** Creates XML node with specified node name and node value.

### CreateXmlNode(String nodeName, XmlNode childNodes)
- **Returns:** XmlNode
- **Description:** Creates XML node with specified node name and node child(ren).

### Load(Stream stream)
- **Returns:** XmlDocument
- **Description:** Loads XML document from the specified stream.

### Load(String xmlText)
- **Returns:** XmlDocument
- **Description:** Loads XML document from the specified text.

### SerializeObject\<T\>(Object obj)
- **Returns:** String
- **Description:** Serializes the specified System.Object and writes the XML document to a System.String.

### SetAttribute(XmlNode node, String attributeName, String attributeValue)
- **Returns:** void
- **Description:** Set attribute to specified node.
