# Order Item Type | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ef9e69cc24a347bb9da845fa91b7b8f1.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	Integrations

	
Order Item Type
	
Standalone Subscription Products
	
Standalone Service Contract Products
	
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
Order Item Type

Order Item Type is introduced primarily to enable mapping of complex product types coming from back-end systems.

The value in the Order Item Type field determines the product model in SAP CPQ (which fields are available for product administration, what columns are available on quote items and the type of order that is created out of quote items when SAP CPQ is integrated with a backend system, such as SAP S/4HANA).

Note

The Order Item Type field is available only in Quote 2.0.

Order Item Type Values

Sales - products that can be created either in SAP CPQ or imported from a back-end system (IsSyncedFromBackOffice set to either TRUE or FALSE, respectively). They use the standard product model is expanded with three system attributes: SAP CPQ product model. In the integrated scenario with SAP S/4HANA, this type of product corresponds to physical products.

Subscription - the standard SAP CPQ product model is expanded with three system attributes: Contract Duration, Billing Cycle and Contract Extension Period which is consequently reflected in a different layout on quotes. Depending on the value of isSyncedFromBackOffice, there are two groups of subscription products in SAP CPQ:

If isSyncedFromBackOffice is set to TRUE, the product is originating in SAP Billing and Revenue Innovation Management.

If isSyncedFromBackOffice is set to FALSE, this is a standalone SAP CPQ subscription product.

Subscription Billing - IsSyncedFromBackOffice is always FALSE. These products are created in SAP CPQ and used in the integration with SAP Subscription Billing. Product model is defined via rate plans.

Service Contract - the standard SAP CPQ product model is expanded with the following system attributes: Service Profile, Response Profile, Settlement Period, Billing Date and Service Contract Duration which is consequently reflected in a different layout on quotes. IsSyncedFromBackOffice can have either of the two possible values:

TRUE - the product is coming from SAP Billing and Revenue Innovation Management and it is created via the ImportMaterialsFromERP API.

FALSE - SAP CPQ standalone service contract product.

Once a product is created or imported into SAP CPQ, the value of Order Item Type can’t be changed neither via the API nor in the application, except when the integration with SAP Subscription Billing is enabled. In that case, it is possible to change the Order Item Type value from Sales to Subscription Billing (and provide a rate plan for the product).

Yes
No