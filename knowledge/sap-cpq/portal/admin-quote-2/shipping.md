# Shipping | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/bbd044423a7f440a9dee1bfa54826287.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration


	Setup Help

	
Fields, Calculations, Layout


	
Quote 2.0 Calculations
	
Quote Custom Sections
	
Quote Layout
	
Quote Layout Permissions
	
Item Types
	
Shipping
	
Effective Date on Quote Item
	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Fields
	
Quote Tab Permissions
	
Quote List Settings
	
Bulk Quote Deletion
	
Quote Visibility
	
Quote Acceptance Settings
	
Partner Functions
	
Solution Design
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
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
Shipping

Quote 2.0 now includes a Shipping Cost field, enabling shipping management by providing customization and access to shipping cost data. This feature streamlines the process of managing and calculating shipping expenses within the Quotes section of the system.

To view and change the Shipping Cost field, navigate to the Quotes  Fields, Calculations, Layout  Fields and Calculations  Quote Field tab. Here, you can access and edit the Shipping Cost field.

To make the shipping cost editable, navigate to the Field Editability tab of the Fields, Calculations, Layout section under Quotes. Here, you can enable editability for the shipping cost field at different levels: MainItem, LineItem, ProductType, and Totals level, This allows for tailored customization of the shipping cost data as required.

The shipping cost can also be added to the layout and layout permission on the Quote.

Two new calculations Product One-Time Shipping Cost and Total One-Time Shipping Cost, are added as part of shipping costs.

The Shipping Cost values are exposed through CTX, enabling you to access and use the shipping cost data in other areas of the system. Shipping is a non-recurring cost (one-time fee).

To access the Shipping Cost values through CTX, users can utilize the following syntax:

<CTX( Quote.CurrentItem.ShippingCost.Value )>

<CTX( Quote.ProductType(ProductType).ShippingCost.Value )>

<CTX( Quote.Total.ShippingCost.Value )>

The Shipping cost field is Included in the following standard calculations

Calculation

	

Comments




Item_ExtendedAmount

	

Added to the item extended amount.




Item_ExtendedAmount_To_DiscountPercent

	

Subtracted from the item extended amount when discount percent is calculated.




Item_GrossMarginPercent

	

Subtracted from the item extended amount when item gross margin percent is calculated.




ProductType_GrossMarginPercent

	

Subtracted from the product type net price when product type gross margin percent is calculated.




ProductType_NetPrice_To_Items_DiscountPercent

	

Subtracted from the product type net price when item discount percent is calculated from product type net price.




ProductType_NetPrice_To_Items_DiscountPercent_Relative

	

Subtracted from the product type net price when item discount percent is calculated relatively from product type net price.




ProductType_DiscountAmount

	

Subtracted from the product type net price when the product type discount amount is calculated.




Total_NetPrice_To_Items_DiscountPercent

	

Subtracted from the total net price when item gross discount percent is calculated from total net price.




Total_NetPrice_To_Items_DiscountPercent_Relative

	

Subtracted from the total net price when item discount percent is calculated relatively from total net price.




Total_AverageGrossMarginPercent

	

Subtracted from the total net price when the total average gross margin percent is calculated.




Total_ProductDiscountAmount

	

Subtracted from the total net price when the total discount amount is calculated.

Yes
No