# Delete Quote Table Row | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/94276ce946e9495497612f8b7feb8e08.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Scripting Events, Properties and Event PipelineVersion: 2603English
Provide feedback on our search

	
Introduction
	
SAP CPQ script plugin
	
Alternatives to CLR Module Import
	
Common properties
	
Iron Python Events
	
How-to Examples
	
Event Pipeline in Quote 1.0


	
Add Simple Product
	
Add Configurable Product
	
Add Parent-Child Product
	
Edit Quote Item Standard or Custom Fields and Trigger Reprice
	
Edit Quote Custom Fields and ENTER (Reprice action)
	
Edit Quote Custom Fields and Manually Trigger Save Quote
	
Copy
	
Reconfigure
	
Add New Quote Table Row
	
Delete Quote Table Row
	
Change Quote Table Cell
	
Event Pipeline in Quote 2.0
	
Script Performance
Delete Quote Table Row


Ordered List ItemCall DeleteQuoteTableRow - receives quote table ID and Row ID
      Execute Delete row Pre-Script action
      Remove Row from quote table
      Execute Delete row Post-Script action
      Save the change in database
      OnEveryTimeQuoteChanged

Yes
No