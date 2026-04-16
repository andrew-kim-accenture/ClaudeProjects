# Product Replication Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/eebf69bea8564ea186e2f6c4a8d48238.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems


	
SAP ERP Integration for Quote 1.0


	
Preparation
	
Configuration


	
Configuration in SAP ERP
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ


	
Define SAP Provider Settings
	
Create SAP CPQ Communication User
	
Product Replication Setup
	
Customer Replication Setup
	
Pricing/ Discounting Setup
	
Sales Quote to Order Setup
	
Data Loading
	
Manual Build Steps
	
Troubleshooting Scenario
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
Variant Configuration Integration
	
SAP Sales Cloud Integration
	
SAP Commerce Cloud Integration
	
SAP Subscription Billing Integration for Quote 2.0
	
Integration with SAP Master Data Integration
	
Identity Provisioning Service Integration
	
CX AI Integration
	
Integration with Central Entry Point
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Product Replication Setup

Maintain Product Types
Follow below procedure to create Product Type in SAP CPQ. This Product Type is mapped to SAP ERP Material Group in SAP Cloud Integration middleware.

Login to your SAP CPQ system using an administrator user.

Click on Setup in menu bar and choose Setup.

In left navigation bar, select Product Types under Product Catalog.

Click Add New.

Maintain the Product Type Name and Product Type Rank.

Example:

Product Type

	

Product Type Rank




Metal Processing

	

10




Electronics

	

11

Click Save.

Maintain Product Categories
In below steps, product catalog is created, which will help user to differentiate the product based on their category. If product doesn’t have any Product Category it is considered as DRAFT. The Product Category is mapped with SAP ERP Product Hierarchy in SAP Cloud Integration middleware.

In left navigation bar, select Categories under Product Catalog.

Click Add New.

Maintain the Product Category by giving Category Name, Category Description, Rank and check the Active checkbox.

Example:

Category Name

	

Category Description

	

Rank

	

Active




Machines

	

Machines

	

10

	

X




Vehicles

	

Vehicles

	

11

	

X

Click Save.

Define Preselected Category

A preselected category defines where products, which are synchronized from SAP ERP, will be placed in SAP CPQ catalog.

SAP CPQ administrators can easily locate them and further modify them. Updating a product does not affect the product's category, which means that the product category will be preselected only for the first time, and that only the product itself will be updated.

To define a preselected category:

Go to Setup  General  Application Parameters.

A new page displays.

On the Product Catalog tab, find the parameter Default category name for new products created via API.

In the dedicated field, enter a name for the preselected category (for example, Draft).

Save your changes.

Products will be added to the preselected category only when PreselectInCPQ=True in the <Categories> node in Simple Product Administration API.

If a preselected category is not defined, standard rules for product import will be followed. Products will be imported and assigned to the category that is defined in the simple product import API.
Example
The following is an abridged sample of the XML request payload.


<Products>
	<Product>
		<isSyncedFromBackOffice>True</isSyncedFromBackOffice>
		<Identificator>PartNumber</Identificator>
		<PartNumber><![CDATA[VC_DEMO_PLACEHOLDER]]></PartNumber>
		<UnitOfMeasure><![CDATA[q*3]]></UnitOfMeasure>
		<ProductType>Food</ProductType>
		<ProductSystemId><![CDATA[VC_DEMO_PLACEHOLDER]]></ProductSystemId>
		<Active>TRUE</Active>
		<ProductName>
			<USEnglish>
				<![CDATA[VC_DEMO_PLACEHOLDER30]]>
			</USEnglish>
		</ProductName>
		<Categories PreselectInCPQ="True">
			<USEnglish>
				<![CDATA[Food]]>
			</USEnglish>
		</Categories>
	</Product>
</Products>

Maintain Unit of Measurement

In left navigation bar, select Unit of Measurement under Product Catalog.

Click Add New.

Enter the Description as Measurement Name and Code as Unit of Measurement.

Click Add New.

Click Save.

Product Versions
Every change to the product model in SAP ERP that results in a new knowledge base version will lead to a new product version. Product versions cannot be added or deleted in SAP CPQ, because they are obtained along with their own effectivity periods via knowledge base synchronization. Product versions of Variant Configuration products are permanently active in SAP CPQ as this behavior is controlled by the back-end system and SAP Variant Configuration and Pricing (one product can have multiple active product versions at the same time). If a product has multiple active product versions, you can distinguish them by their different knowledge base versions. In fact, the way to get the most detailed information when examining product versions is to make all the columns visible in Display Settings. In SAP CPQ, the Effective Date fields on the quote and the User Page are used to determine which product versions appear in the catalog. The effectivity period of the product version needs to match the Effective Date on the quote or User Page in order for that product version to appear in the Catalog. Additionally, the price displayed to the user depends on which product version is displayed. See Effective Date for more information about effective dates and product versions.
Note

On the user side, the system compares the effective date of the quote and the product versions and uses the one that was created last (effective date of the product version closest to the effective date of the quote). When a Variant Configuration product is edited in the Setup, the version that is edited is always the initial version of the product, and not the last synchronized version. To edit another version, open Product Versions from the Actions menu and edit any version you need.

On this page
Maintain Product Types
Maintain Product Categories
Define Preselected Category
Example
Maintain Unit of Measurement
Product Versions
Yes
No