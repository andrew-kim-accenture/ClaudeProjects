# Pricing/ Discounting Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/674bef97a2d149068ca074f530872a44.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Integration with SAP S/4HANA


	
SAP S/4HANA Sales Order Integration for Quote 1.0


	
Purpose
	
Preparation
	
Configuration


	
Configuration in SAP S/4HANA
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ


	
Define Provider settings
	
Create CPQ Communication User
	
Product Replication Setup
	
Customer Replication Setup
	
Pricing/ Discounting Setup
	
Pricing Procedure Mapping
	
Sales Quote to Order Setup
	
Initial Data Load
	
Manual Build Steps
	
SAP S/4HANA Sales Order Integration for Quote 2.0
	
SAP Billing and Revenue Innovation Management Integration
	
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
Pricing/ Discounting Setup

Do the following steps to setup the pricing and discount:

Create Markets
Purpose

A market is created in SAP CPQ against every Sales Organization of SAP S/4HANA system. This will help in pricing determination in Sales Quote in CPQ system.

Procedure

Login to your SAP CPQ system using an Administrator User.

Click on SETUP in menu bar and choose Setup.

In left navigation bar, select Markets under Pricing/Calculations.

Click on Add New Button.

Enter the Market Code field as a Sales Organization of S/4HANA system.

Enter Marketing Name, Currency, and Market Factor.\

Market Code

	

Market Name

	

Currency

	

Market Factor




1710

	

Sales Org US

	

USD

	

1




1010

	

Sales Org DE

	

EUR

	

1

Click Save.

In left navigation bar, select Market Visibility under Pricing/Calculations.

Click on Add New Button.

Select Market Name created in above step in Step 2 Section.

In Step 3 section enter Visibility Condition as 1.

Click Save.

Create Pricebooks
Purpose

Pricing in the Sales Quote is determined based on market, pricebook and product in CPQ system. Pricebook comprises of Distribution Channel and Product entries with their respective prices.

Procedure

In left navigation bar, select Pricebooks under Pricing/Calculations.

Under Pricebooks tab, search for the Market Name created in above steps.

Click on Add New Pricebook button.

Enter the Pricebook name.

Enter the Distribution Channel similar to the distribution Channel of S/4HANA system against the Sales Organization. Example: 10

Check the Visible to everyone checkbox.

Click Save.

Pricing for the products in Entries tab will be created by Pricing Replication IDoc from S/4HANA system.

Discounting
Purpose

One of the major functionalities of SAP CPQ is on the fly discounts based on products, product types, product categories, users and user types. You can setup discounting in Sales Quote in your SAP CPQ system following below procedure.

Procedure

In left navigation bar, select Discounts/Multipliers under Pricing/Calculations.

Click on Add New button.

Click on Select button to maintain USER TYPE as Sales in Step 1 section.

Note

The above selection will allow users with user type ‘Sales’ to give discounts in Sales Quote which we will be defining in next step. You can create any condition for discount selection with User, User Type, Product, Product Type or Category.

In Step 2 section, maintain multiplier as 1 for Minimal Value, Default Value, and Maximum Value.

Maintain Maximum Value for Discount as 10. It will allow your Sales User to give maximum of 10 percent discount. Above 10 percent will be subject to approval.

In Step 3 section, maintain Condition as 1. You can create conditions using scripting language also.

Click Save.

Discounting Priorities
Purpose

In SAP CPQ, you can provide discount to customer in Sales Quote based on User, User Type, Product, Product Type or Product Category conditions. There might come a case with two or more valid conditions. In such situation, which condition will take priority.

Procedure

In left navigation bar, select Discounting Priorities under Pricing/Calculations.

As we want Product to have highest Priority. Select Rank as 1.

Further Select Rank for Product Type as 2, Category as 3, User as 4, and User Type as 5.

Click Save.

On this page
Create Markets
Create Pricebooks
Discounting
Discounting Priorities
Yes
No