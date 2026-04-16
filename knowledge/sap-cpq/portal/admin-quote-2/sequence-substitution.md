# Sequence Substitution | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/cb698a170e0c42dcbfa0ec584f6ac9b5.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Product Implementation
	Product Actions
	
Product Categories
	
Attributes
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	Integrations
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Sequence Substitution

Part numbers can become lengthy and sometimes need to be limited in length by the underlining business systems (ERP). Because of this, there’s a need to serialize an entire part number. or a part of it. Intelligent Serialization implies that a part number can be serialized while preserving the part number logic; hence the same configuration always yields the same serial number.

A simple example of this would be four attributes with three values each: Color (Blue, Red, Green), Material (Wood, Aluminum, Steel), Voltage (120, 480, 600), and Size (Small, Medium, Large). If it's necessary to uniquely capture these selections in the part number, then characters to represent these values. In this scenario, a part number can be: Prefix-BW1M for a Medium-sized Blue widget, made out of Wood that works with 120 Volts. However, if restricted to only two characters in the part number to represent these 4 attributes, an intelligent Sequence Substitution would be defined, where any combination of these four attributes would be replaced with a sequence. The sequence would be defined to range from 1 to 81 (34) and an attribute mentioned above.

To define a Sequence Substitution, you first need to define a numeric sequence; for this example we’re using 1–81. You can find the Sequence Substitution page in Setup  Product Catalog  SEQ Substitution.

Here Sequence Substitution can be edited, deleted, or copied by selecting the appropriate button next to the substitution's name. New sequence substitutions can be created by clicking Add New. When you're creating a new sequence substitution, you need to fill in several fields:

Name - The name that is called by the CXSUB function.

Description - More details about the sequence substitution.

Sequence - Selection of sequences that are used in the reference.

Attributes - Selection of attributes that are referenced by the same number when selected.

Once a sequence substitution is defined, it can be used in a formula for building a part number using a special tag called <*CXSUB(sequence substitution name) *>. Using sequence substitution in a product can be performed by entering <*CXSUB(SEQsub)*> in Product Catalogue Code Generator. In this example, SEQsub is the created sequence substitution. To the user, the product number looks like any other product number or a serial code.

Yes
No