# Product Replication Setup | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/be35c15b24f3481ea6b8cec71e5db264.html?locale=en-US&state=PRODUCTION&version=2603
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
Product Replication Setup

Do the following steps to replicate the product setup:

Maintain Product Types
Purpose

Follow below procedure to create Product Type in SAP CPQ. This Product Type is mapped to S/4HANA Material Group in SAP CPI middleware.

Procedure

Login to your SAP CPQ system using an Administrator User.

Click on SETUP in menu bar and choose Setup.

In left navigation bar, select Product Types under Product Catalog.

Click on Add New Button.

Maintain the Product Type Name and Product Type Rank.

Example

Product Type

	

Product Type Rank




Metal Processing

	

10




Electronics

	

11

Click Save.

Maintain Product Categories
Purpose

In below steps, product catalog is created, which will help user to differentiate the product based on their category. If product doesn’t have any Product Category, it is considered as DRAFT. The Product Category is mapped with S/4HANA Product Hierarchy in CPI middleware.

Procedure

In left navigation bar, select Categories under Product Catalog.

Click on Add New Button.

Maintain the Product Category by giving Category Name, Category Description, Rank and check the Active checkbox.

Example

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

Maintain Unit of Measurement

In left navigation bar, select Unit of Measurement under Product Catalog.

Click on Add New Button.

Enter the Description as Measurement Name and Code as Unit of Measurement.

Click on Add New Button.

Click Save.

On this page
Maintain Product Types
Maintain Product Categories
Maintain Unit of Measurement
Yes
No