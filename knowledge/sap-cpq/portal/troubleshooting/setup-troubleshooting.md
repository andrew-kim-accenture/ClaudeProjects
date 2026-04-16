# Setup Troubleshooting | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/665a9ee212394653a84a393035090802/2dd2646d746249e18cdec8329e96eff5.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ TroubleshootingVersion: 2603English
Provide feedback on our search

	
SAP CPQ Troubleshooting
	
Integrations Troubleshooting
	
Configurator Troubleshooting
	
Document Generation Troubleshooting
	
Catalog Troubleshooting
	
Quote Troubleshooting
	
User Interface Troubleshooting
	
Setup Troubleshooting
	
Login Troubleshooting
	
Scripting Troubleshooting
	
Performance Troubleshooting
Setup Troubleshooting

This section provides more information about common issues that may occur in Setup.

1. What could be causing an error message to appear when importing products via XML?

When products are being imported via API, the XML note with the language name cannot contain brackets. For example, Portuguese (Brasil) should be written as PortugueseBrasil.

2. When exporting custom tables, what is the best way to prevent trailing zeros from being removed from text type columns in custom table column definition?

The application parameter Export All Custom Table Data as Strings by Default needs to be set to True. That way, all data is treated as text data by the spreadsheet application. This parameter only influences data formatting when exporting custom tables.

Related Information
Custom Tables
Yes
No