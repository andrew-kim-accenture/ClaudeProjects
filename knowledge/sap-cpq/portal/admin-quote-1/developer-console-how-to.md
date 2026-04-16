# Developer Console How-To | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/1a2ac2db18724c02a67b5823b9c530f2.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools


	
Log
	
Developer Console


	
Developer Console Actions
	
Developer Console Trace
	
Developer Console Groups
	
Developer Console How-To
	
Debugging with Developer Console
	
Audit Trail
	
SAP CPQ Tags
Developer Console How-To

Here are listed some frequent how-to scenarios about the Developer Console with detailed explanations.

How and where can I see when an attribute gets its values?

In the Developer Console, find the action ChangeAttributeValue, click on the eye icon to view it, and in the Logger field, search for ProductAttributeValue and select it. You can also search via the fields Label and Message.

The display pattern for the ChangeAttributeValue is: Change attribute, Name: {Attribute name}, stdAttrCode: {Standard attribute code}, Value {Attribute value} is selected. For example, if you want to find when an attribute gets a specific value, you can type in the Message search field: Change attribute, Name: *, stdAttrCode: * Value specific_value is selected.

Also, you can search by the attribute name, and in that case, replace * with the name of the attribute. To check all assignments to attribute specific_name, just type in the Message search field: Change attribute, Name: specific_name.

The same applies for the standard attribute code.

How can I see the names of all scripts that are executed within an action?

When you click view (the eye icon) for an action, you should enter Script Execution to filter the Message column. You can also see here the total duration of all scripts for the selected action. By selecting the Slowest first checkbox, you can see which script takes the longest time to execute.
Note

When a script crashes, you can check the log to see clear information about the problem.

How can I see when the value of a property is changed via scripting?

Pin the message of the script and all traces related to this script are displayed. The traces contain information about the change that has been done by the script.

How can I see the total number of database queries within an action?

In the Developer Console, select the full mode and after that execute any action in SAP CPQ (for example, Save Quote). In the Developer Console, you should see the logs for that action. Click the view (the eye icon), and you should see more details about the selected action. In Logger, enter DBGateway and in Labels enter Database and you should see all database queries.

How can I see the number of evaluated formulas?

When you click the view (eye icon) for an action, you can filter it by entering ProductLogic in Logger and RuleEngine in Label . Or you can enter CartLogic in the Logger and QuoteParser in Label.

How to download trace XLSX from the developer console?

Note

Only the administrator is able to provide developer console exports and console features in general.

How to check the performance details for more information?

In the Developer Console there is the Performance button for some actions. If you click the button, a popup with more information about the performance displays.

How to check the duration when we call the Salesforce SOAP API?

In the Developer Console, select the full mode and after that execute an action that calls the Salesforce SOAP API from SAP CPQ (for example, Update opportunity). To filter the results, enter Webcom.Configurator.SFPartnerWSDL.SforceService in Logger. For the filtered trace messages, the Labels column displays external API call, Salesforce.

How can I use breadcrumbs in the Developer Console?

This is a useful feature that allows you to see exactly which actions are executed, which user performed the action, and provides you with information about the quote and the tab (in the example, it is for ExecuteAction). You have access to all the IDs and you can find the object in the database and check all the information regarding the action, the user, the tabs and the quote.

Related Information
Performance Troubleshooting
User Interface Troubleshooting
Scripting Troubleshooting
Yes
No