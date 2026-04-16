# Sales Unit of Measure | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/731ec1dda1d34dbcaace465a07c26921.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products
	
Categories
	
Attributes
	
Attribute Visibility Restrictions
	
Unit of Measurement


	
Unit Mapping Table
	
File Import
	
Attribute Type - Unit of Measurement
	
Sales Unit of Measure
	
Unit of Measurement on User Page
	
Unit of Measurement Scopes and Limits
	
Product Types
	
Custom Tables
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	
Custom Configurator XSLT
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Sales Unit of Measure

Note

To use this functionality, contact your support representative.

You can now use the alternative units of measure (UoM) in SAP CPQ as part of the standard integration. The feature is supported for all types of products. The conversion table of alternative UoM is replicated from SAP S/4HANA to SAP CPQ SAP CPQ through the integration flow process.

You need to initiate a product replication from SAP S/4HANA to SAP CPQ to synchronize the table of possible alternative UoM. All UoM values must be in ISO format.

Note

If you use document pricing, the alternative unit of measure Display Unit for Pricing condition should not be used. This is because the backend always returns the base unit, but SAP CPQ might use the sales UoM, which could be different.

The units of measure can be set through scripting on the Before Item Added event. When the item is added to the quote, the corresponding unit of measure is selected, and the quantity unit is then passed to the SAP Variant Configuration and Pricing.

Procedure

Choose next to the original product. A drop-down list displays.

Choose Sales Units of Measures. The product's Sales Units of Measure conversion table displays.

Modify the Sales Units of Measure conversion table if necessary. Be aware that the table needs to match with the data in SAP S4/HANA's backend settings.

Example:

For more information, see Sales Unit of Measure in the SAP CPQ User Guide.

Yes
No