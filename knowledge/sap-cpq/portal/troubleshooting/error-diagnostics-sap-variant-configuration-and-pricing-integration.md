# Error Diagnostics - SAP Variant Configuration and Pricing Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/665a9ee212394653a84a393035090802/5a8631a7d3154fc086fae98c9d9e2c8a.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ TroubleshootingVersion: 2603English
Provide feedback on our search

	
SAP CPQ Troubleshooting
	
Integrations Troubleshooting


	
SAP Cloud for Customer Integration Troubleshooting
	
Variant Configuration Integration Troubleshooting


	
Error Diagnostics - SAP Variant Configuration and Pricing Integration
	
Error Codes from SAP Variant Configuration and Pricing
	
Configurator Troubleshooting
	
Document Generation Troubleshooting
	
Catalog Troubleshooting
	
Quote Troubleshooting
	
User Interface Troubleshooting
	
Setup Troubleshooting
	
Login Troubleshooting
	
Scripting Troubleshooting
	
Performance Troubleshooting
Error Diagnostics - SAP Variant Configuration and Pricing Integration

Use the Developer Console to troubleshoot the communication between SAP CPQ and SAP Variant Configuration and Pricing.

Context

SAP CPQ only interprets the SAP Variant Configuration and Pricing response and applies it in the Configurator. If there is an issue (for example, if an attribute is not visible or missing, or the price is not as expected), it is necessary to check if the SAP Variant Configuration and Pricing response matches what is happening in SAP CPQ. If a match exists, the issue is on the SAP ERP/SAP Variant Configuration and Pricing side. If it doesn't match, the issue is in SAP CPQ.

Procedure
Before trying to configure a product, open the Developer Console in full mode.
Filter a trace with the logger CPSCommunicator.

The initial configuration request and response display in records from the Configurator trace.

The initial pricing request and response display in records from the GetModel trace.

When you change an attribute value, the pricing request and response display in records from the ChangeAttributeValue trace.

If no logs display when using the CPSCommunicator filter, make sure that the integration is properly set up.
On this page
Context
Procedure
Yes
No