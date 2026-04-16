# Error Diagnostics - SAP Cloud for Customer Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/665a9ee212394653a84a393035090802/8d2cedb66ba3423abfd8d8ec9b37080f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ TroubleshootingVersion: 2603English
Provide feedback on our search

	
SAP CPQ Troubleshooting
	
Integrations Troubleshooting


	
SAP Cloud for Customer Integration Troubleshooting


	
Error Diagnostics - SAP Cloud for Customer Integration
	
Variant Configuration Integration Troubleshooting
	
Configurator Troubleshooting
	
Document Generation Troubleshooting
	
Catalog Troubleshooting
	
Quote Troubleshooting
	
User Interface Troubleshooting
	
Setup Troubleshooting
	
Login Troubleshooting
	
Scripting Troubleshooting
	
Performance Troubleshooting
Error Diagnostics - SAP Cloud for Customer Integration

If there is an error when saving a new sales quote in SAP Cloud for Customer while landing to SAP CPQ, or if you want to see the payload received in SAP CPQ, use the Developer Console to troubleshoot the communication between SAP CPQ and SAP Cloud for Customer or SAP Cloud Integration.

Procedure
At least once, land from SAP Cloud for Customer to SAP CPQ, so that you get logged in (even if there is an error on landing).
In another tab of the same browser window, open the SAP CPQ environment with which the SAP Cloud for Customer environment is integrated.
Open the Developer Console in SAP CPQ in full mode.
In the browser tab where SAP Cloud for Customer is open, try to open the sales quote again.
In the browser tab where the Developer Console is open, find the action Proceed to Quote.
In the filter field Logger, use SAPCommunicator.
Click the Info icon next to the highlighted message.

You are now able to see the data SAP CPQ received from SAP Cloud for Customer.

Yes
No