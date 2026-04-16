# Pricing/ Discounting Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/aedd9897a11c4f8a8a59369844f5ae10.html?locale=en-US&state=PRODUCTION&version=2603
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
Pricing/ Discounting Setup

Create Markets

A market is created in SAP CPQ for every sales organization of the SAP ERP system.

This will help in pricing determination in Sales Quote in the SAP CPQ system.

Login to your SAP CPQ system using an administrator user.

Click on Setup in menu bar and choose Setup.

In left navigation bar, select Markets under Pricing/Calculations.

Click Add New.

Enter the Market Code field as a Sales Organization of SAP ERP system.

Enter Marketing Name, Currency and Market Factor.

Example:

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

Click Add New.

Select Market Name created in above step in Step 2.

In Step 3 section enter Visibility Condition as 1.

Click Save.

Create Pricebooks
Pricing in the Sales Quote is determined based on market, pricebook and product in SAP CPQ system. Pricebook comprises of distribution channel and product entries with their respective prices.

In left navigation bar, select Pricebooks under Pricing/Calculations.

Under Pricebooks tab, search for the Market Name created in above steps.

Click Add New Pricebook.

Enter the Pricebook name.

Enter the Distribution Channel similar to the distribution channel of SAP ERP system for the sales organization. Example: 10

Check the Visible to everyone checkbox.

Click Save.

Pricing for the products in Entries tab will be created by Pricing Replication IDoc from SAP ERP.

Discounting
One of the major functionality of SAP CPQ is on the fly discounts based on products, product types, product categories, users and user types. You can setup discounting in Sales Quote in your SAP CPQ system following below procedure.

In left navigation bar, select Discounts/Multipliers under Pricing/Calculations.

Click Add New.

Click Select to maintain the User Type as Sales in Step 1 section.

Note

The above selection will allow users with user type Sales to give discounts in the sales quote which we will be defining in the following section. You can create any condition for discount selection with user, user type, product, product type or category.

In Step 2 section, maintain multiplier as 1 for Minimal Value, Default Value and Maximum Value.

Maintain Maximum Value for the discount as 10. It will allow your sales user to give maximum of 10 percent discount. Above 10 percent will be subject to approval.

In Step 3, maintain Condition as 1. You can also create conditions using scripting.

Click Save.

Discounting Priorities
In SAP CPQ, you can provide discount to customer in Sales quote based on user, user type, product, product type or product category conditions. In a case with two or more valid conditions, you need to define which condition will take priority.

In left navigation bar, select Discounting Priorities under Pricing/Calculations.

As we want product to have highest priority. Select Rank as 1.

Further Select Rank for Product Type as 2, Category as 3, User as 4 and User Type as 5.

Click Save.

On this page
Create Markets
Create Pricebooks
Discounting
Discounting Priorities
Yes
No