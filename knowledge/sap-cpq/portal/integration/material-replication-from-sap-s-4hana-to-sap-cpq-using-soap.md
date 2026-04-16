# Material Replication from SAP S/4HANA to SAP CPQ using SOAP | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/30c08d3bf6344b0c8a6d34ce70909784.html?locale=en-US&state=PRODUCTION&version=2603
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
Material Replication from SAP S/4HANA to SAP CPQ using SOAP

To replicate material from SAP S/4HANA to SAP CPQ using SOAP, do the following steps:

Configure Data Replication Framework

Open transaction DRFIMG.

Navigate to Define Custom Settings for Data Replication  Define Technical Settings  Define Technical Systems for Business Systems.

Choose New Entries to add Business System for SAP CPQ. If the Business system is already created, select Business System and Logical System name using input help. Choose Save.

Select the Business System and double click on Define Bus. Systems, BOs in the Dialog structure.

Choose New Entries and add BO Type 194 (Material) using input help and check field Sys. Filt. Select Outp.Mode as Direct Output. In case this entry exists, skip the step.

Note

If Output Mode is selected as Direct Output, idocs will be triggered immediately on Save. In this case, DRFOUT is not required to replicate changes to customer hierarchy. If Output Mode is selected as Pooled Output, idocs are sent using DRF change pointers and DRFOUT has to be executed or scheduled to create and send the Idoc.

Select the entry BO type and double click on Define Bus. Systems, BOs, Communication Channel in the left dialog structure.

Choose New Entries to add the Communication Channel as Replication via Services. In case the entry exists, skip this step.

Choose Save.

Navigate back.

Select the IMG activity Define Replication Models.

Choose New Entries and define Replication Model Name and Description and Log days as 50.

Choose Enter.

Select the entry created and double click on Assign Outbound Implementation.

Choose New Entries.

Select Outbound Implementation as Outbound Impl. for Product via Services (194_3) using the input help and choose Enter.

Select the row added and double click on Assign Target Systems for Repl. Model/Outb.Impl in dialog structure.

Choose New Entries and add the Business system created above using the input help.

Select the Business system row and double click on the node Assign Outbound Parameter in the dialog structure.

Choose New Entries to add the Outbound parameter PACK_SIZE_BULK using the input help. Enter outbound parameter value as 20 and click enter to check field Mandatory.

Choose Save.

Go back to Define Replication Model Screen and Select the row for Define Replication Model.

Click Activate to activate the replication model.

Yes
No