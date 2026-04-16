# Data Loading | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/a81d194d373f4b3a902fd97ae922a22e.html?locale=en-US&state=PRODUCTION&version=2603
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
Data Loading

Initial Data Load

This section describes how to execute the initial data load of material, customer master and Pricing Condition data from your SAP ERP system to the SAP CPQ system.

Customer Master

Open transaction BD12.

Input as following:

Field

	

Description

	

Example




Customer

	

Customer Number which is to be replicated to SAP CPQ system

	

0000100000

0000100001

0000100002

0000100003

0000100004




Output Type

	 	

DEBMAS_CFS




Logical System

	

SAP CPQ Logical System

	

<Logical system name of the SAP CPQ>




Number of Customers per Process

	

Parallel processing value

	

20

Choose Execute.

Product Master

Open transaction BD10.

Maintain the following values.

Field

	

Description

	

Value




Material

	

Trading Material to be replicated to CfS

	

<Material name>

For example: H10

H11

H12

H20

H21




Message Type(Standard)

	

MATMAS_CFS

	

<message name> For example: MATMAS_CFS




Logical System

	

SAP CPQ Logical System

	

<Logical system name of the SAP CPQ>




Send Material in Full

	 	

X




Number of Materials per Process

	

Parallel processing parameter

	

For example: 20

Click Execute.

Product Pricing

Access the transaction SE38.

Enter the report name RCOD_CONDITIONS_EXTRACT and click on Execute.

Enter the following details and click Execute:

Enter the following details:

Field

	

Value




Sales Organization

	

For example: 1000




Distribution Channel

	

For example: 10




Valid from

	

A valid date


 	

A valid date




Logical System

	

<Logical system of the SAP CPQ>




Test Mode

	

Unchecked




Table

	

304(Material with release status)

The condition records created with the provided data are replicated to SAP CPQ.

Execute the report by changing the scale type to B (retaining the other inputs) for which IDoc filtering is not maintained.

Note

Go to Tcode BD87 in SAP ERP system to process the Idoc if it is not triggered automatically.

Yes
No