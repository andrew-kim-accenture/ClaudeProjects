# Sales Units of Measure | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/7c10d9460c5d41d2b3b9a0e04a32df3c.html
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey
	
Load Existing Quotes
	
Quote


	
Quote and Item Actions
	
Pricing Details on Items
	
Sales Units of Measure
	
Discounts and Multipliers
	
Other Discounts
	
Quote Markets
	
Adding Products to Quote
	
Documents
	
Customer Information
	
MRC Quote Calculations
	
Quote Tabs and Fields
	
Alternative and Variant Configurations
	
Application Parameter for Preventing Users to Add Simple Products to a Quote
	
Adding Products from Quote (Quick Add)
	
Parallel Work on Quote 1.0 (User Side)
	
Multi-User Quote Collaboration
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
Sales Units of Measure

Note

To use this functionality, please contact your support representative.

The SAP S/4HANA system maintains a list of alternative (sales) units of measure (UoM) in the Unit of Measure column. With the SAP CPQ integration, the SAP Variant Configuration Pricing backend can now use the numerator and denominator provided by SAP CPQ to calculate pricing based on alternative UoM.

The use of alternative units of measure is now integrated as a standard feature in SAP CPQ. It is supported for all types of products. The conversion tables for alternative UoM are replicated from SAP S/4HANA to SAP CPQ through the integration flow process.

Remember

To synchronize the table of possible alternative UoM, you need to initiate a product replication from SAP S/4HANA to SAP CPQ.

Each line item includes the alternative unit name and the corresponding quantity that relates to the same unit of measure.

The SAP CPQ system provides complete conversion tables with all possible alternative units of measure (UoM) values. These tables are sent to the SAP Variant Configuration Pricing backend in two scenarios: during the configuration process or on quote pricing.

In the Configurator: The base unit of measure will be used as the UoM.

In the quote: You can change the sales unit of measure for simple and configurable products only. This applies to physical products, service contracts, and subscription products. However, you can't change the UoM for multi-level (parent/child) products.

Note

All UoM values must be in ISO format.

For more information, see Sales Unit of Measure in the SAP CPQ Setup and Administration Guide.

Yes
No