# Assignment of Pricing Procedure (SSCUI ID: 101117) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/ced96707e42e4f359a41e4e55dd3603a.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order


	
Preparation


	
System Information
	
Prerequisites
	
Maintain Pricing Procedure in SAP S/4HANA Cloud


	
Set Condition Types for Pricing (SSCUI ID: 101120)
	
Assignment of Pricing Procedure (SSCUI ID: 101117)
	
Set Customer Pricing Procedures (SSCUI ID: 101202)
	
Set Pricing Procedure Determination (SSCUI ID: 101118)
	
Configuration in SAP CPQ
	
Configuration in SAP Event Mesh
	
Configuration in SAP Master Data Integration
	
Configuration for Integration in SAP S/4 HANA Cloud
	
SAP Cloud Integration Configuration
	
Data Replication
	
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
Assignment of Pricing Procedure (SSCUI ID: 101117)

To assign the Condition type you would have to create a Z entry of delivered standard pricing procedure for Solution Order (A17024 for US and A10024 for DE) and copy all the dependent entries to Z Pricing procedure. Once the Z Pricing Procedure is created, make the following changes to created pricing procedure.

Test Step #

	

Test Step Name

	

Instruction

	

Expected Result

	

Pass/Fail/Comment




1

	

Log On

	

Log on to the SAP Fiori Launchpad with your user credentials as Configuration Expert - Business Process Configuration role assigned.

	

The Fiori Launchpad is displayed.

	 


2

	

Access the Manage Your Solution App

	

Open Manage Your Solution and then choose Configure Your Solution.

	

The Manage Your Solution screen is displayed.

	 


3

	

Access App Make Specifications

	

Search with following criteria:

Application Area: Sales

Sub Application Area: Price Management

Choose the group Set Pricing Procedures.

Choose the Delivered pricing Procedure and choose Copy As.
Note

Choose Copy All when the pop-up appears.

	

The "Set Pricing Procedures": Change screen is displayed.

	 


4

	

Assign Condition type

	

Select the Created Pricing Procedure and choose Procedures – Control Data

Delete the Entries with Steps 060, 113, 835

For the Step 140, Condition Type DM01, Select Manual - Manual only

Choose New Entries and maintain the following:

Step: 295

Counter: 0

Condition Type: Z Condition Type Created in the previous step

Description: Description maintained above

Print Type: a

Account Key: ERS

Choose New Entries:

Step: 030

Counter: 0

Condition Type: PVA0

Description: Variant Price

Account Key: ERL

Choose New Entries:

Step: 210

Counter: 0

Condition Type: DRN1

Description: % Net Amount 1

Print Type: a

Account Key: ERS

Choose Save

	

New Pricing Procedure is created

	 
Yes
No