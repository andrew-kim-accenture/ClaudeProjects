# Product Sales Area Tab | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/dc7e9a2171f743f4bf0a63a25b807b25.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Product Implementation


	
Create Products


	
Product Definition Tab
	
Product Sales Area Tab
	
Product Pricing Tab
	
Product Attributes Tab
	Product Rules and Messages Tab
	
Product Scripts Tab
	
Products Layout Tab
	
Products Advanced Settings Tab (Code Matching)
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
Product Sales Area Tab

In the Sales Area tab, you can view, define, or modify product configurations that are specific to a sales area. The tab is visible only if you have enabled the Sales Area feature.

Note

In SAP CPQ, you define a sales area for products using two key entities: a sales organization and a distribution channel.

When you click Add New, a new screen appears. Here, you can define the following product characteristics based on the selected sales organization and distribution channel:

Field/Option

	

Description




Sales Organization (required)

	

The name of a sales organization as defined in SAP S/4HANA. A default sales organization is displayed in the dropdown with the values that have been replicated from SAP S/4HANA.




Distribution Channel (required)

	

The name of a distribution channel replicated from SAP S/4HANA. Based on the selected sales organization, a list of available distribution channels is displayed, according to the Sales Area Assignments table.




Sales Unit

	

Sales unit within a specific sales area. When you select values for a sales organization and distribution channel that define a sales area in a quote, the SAP CPQ system attempts to set the corresponding sales unit for that area.




Item Category Group

	

The item category group for a specific sales area.




DChain-spec. Status

	

The distribution chain special status within a specific sales area as defined in SAP S/4HANA.




DChain-spec. Status Valid From

	

Sets when DChain-spec. Status becomes valid. If the DChain-spec. Status is Error , it determines the effective date starting from which the selected product will no longer be available for purchase in a specific sales area. However, if the DChain-spec. Status is Warning, the product appears in a Catalog with a warning notification and can be added to a quote.




Pricing Ref Matl

	

The part number of a reference material for pricing in a specific sales area. The system sends the value from this field to SAP Variant Configuration and Pricing to be used by the pricing service.




Flag Material for Deletion (DistrCh Level)

	

Controls whether a product (or material in SAP S/4HANA master data) is active or not in a specific sales area.

Note

Values for all fields displayed on this page are replicated from SAP S/4HANA.

Saved configurations for each sales area can be modified or deleted.

When you save a product configuration for a sales area and then open it for viewing or editing, you can't modify the fields for the sales organization and distribution channel, as these two fields are used to define a sales area. All other fields can be modified.

Related Information
Sales Area
Yes
No