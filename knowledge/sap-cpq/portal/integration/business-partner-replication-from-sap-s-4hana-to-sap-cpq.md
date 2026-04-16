# Business Partner Replication from SAP S/4HANA to SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/b0b5d5b302ef485281efb55df8a26754.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create User
	
Certificate Management in SAP S/4HANA
	
Release Inbound Interfaces
	
Create Business System for SAP S/4HANA
	
Define Logical System
	
Business Partner Replication from SAP S/4HANA to SAP CPQ
	
Material Replication from SAP S/4HANA to SAP CPQ using SOAP
	
Configuration for Filter Values
	
Business Configuration Set
	
Automatically Generate Integration Settings for Data Exchange
	
Pricing Condition Filter
	
Configuration in SAP Cloud Integration
	
Configuration in SAP CPQ
	
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
Business Partner Replication from SAP S/4HANA to SAP CPQ

To replicate your business partners from SAP S/4HANA to SAP CPQ, perform the following steps:

Configure Data Replication Framework

Open transaction DRFIMG.

Navigate to Define Custom Settings for Data Replication  Define Technical Settings  Define Technical Systems for Business Systems.

Choose New Entries to add Business System for SAP CPQ. Add Business System name as logical system and Logical System name using input help. Choose Save.

Select the Business System and double click on Define Bus. Systems, BOs in the Dialog structure.

Choose New Entries and add BO Type 986 (Business Partner including relationships) using input help and check field Sys. Filt. In case this entry exists, skip the step. Select the entry BO type and double click on Define Bus. Systems, BOs, Communication Channel in the left dialog structure.

Select the entry BO type and double click on Define Bus. Systems, BOs, Communication Channel in the left dialog structure.

Choose New Entries to add the Communication Channel as 1 Replication via Services. In case the entry exists, skip this step.

Choose Save.

Navigate back.

Select the IMG activity Define Replication Models.

Choose New Entries and define Replication Model Name, Description, and Log days as 50.

Choose Enter.

Select the entry created and double click on Assign Outbound Implementation.

Choose New Entries.

Select Outbound Implementation as Outbound Impl. for BP/REL via Services (986_3) using the input help and choose Enter.

Enter Sequence as 1.

Select the row added and double click on Assign Target Systems for Repl. Model/Outb.Impl in dialog structure.

Choose New Entries and add the Business system created above using the input help.

Select the Business system row and double click on the node Assign Outbound Parameter in the dialog structure.

Choose New Entries to add the Outbound parameter PACK_SIZE_BULK using the input help, check field Mandatory and enter outbound parameter value as 20.

Note

Outbound Parameter value for PACK_SIZE_BULK can be set as per most efficient package size, which will differ from system to system.

Choose Save, details are saved in the transport request.

Click Activate to activate the replication model after selecting the folder Define Replication Model.

Activate Function Modules

Open transaction SPRO.

In IMG menu structure, navigate to Cross-Application Components  SAP Business Partner  Data Distribution  Activate Function Modules.

Activate the function module MDG_BS_BP_OUTBOUND_DRF by checking the field Call as shown below.

Choose Save.

On this page
Configure Data Replication Framework
Activate Function Modules
Yes
No