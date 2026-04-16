# Scripting General Guidelines | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/91907b16b55f4daba0b34a266b9e7d84.html#best-practices-for-exception-handling-in-scripts
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


	
Create a Script


	
Scripting General Guidelines
	
Global Script Events
	
Custom Actions
	
Custom Calculations
	
Script Workbench
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Scripting General Guidelines

Using IronPython in SAP CPQ is limited as the system does not support standard IronPython modules. You cannot add external .NET and complex IronPython modules to SAP CPQ scripts. However, in basic user scenarios, you can paste the content of a simple module (without dependencies on other modules) into the SAP CPQ script module and the system will process it properly.

Note

The flag ITrace.IsOn, which is available in scripting, indicates whether tracing is turned on or off. With the help of this flag, users can organize the logic that is related to tracing and thus optimize script execution time.

The screenshot below shows the interface when the script syntax is correct:

The following screenshots show the interface when a script contains errors:

Note

The EventLog and ConsoleLog description in scripts can contain no more than 10000 characters.

Saving Quotes on Events

The table below shows which elements of quotes are automatically saved after some events are triggered. The data in the table is useful when creating scripts so you know when to include the Save action.

Events

	

Custom Fields

	

Line Items

	

Product Types

	

Totals

	

Quote Tables




After adding products to quote

	

Saved

	

Saved

	

Saved

	

Saved

	 


After editing products in quote

	

Saved

	

Saved

	

Saved

	

Saved

	 


After deleting products from quote

	

Saved

	 	 	 	 


After copying products in quote

	

Saved

	 	 	 	 


After changing value of custom fields

	 	 	 	 	 


Quote creation

	 	 	 	 	 


Quote edit

	

Saved

	 	 	 	 


On user Login

	 	 	 	 	 


On customer change

	 	 	 	 	 


Document Sent To Customer

	 	 	 	 	 


On Quote Tab Changed

	 	 	 	 	 


On Involved Parties Changed

	

Saved

	

Saved

	

Saved

	

Saved

	

Saved




When Excel is uploaded into a Quote Table

	 	 	 	 	 
Exceptions for Quote.Save() Pipeline Execution

When certain parts of a quote are changed, calculations need to be performed and changes saved. As this does not require all events from the pipeline to be triggered, some of them can be skipped. This is determined by the Quote.Save() parameter. This parameter is by default set to True, which causes the entire pipeline to be executed whenever changes on quote are saved. If the Quote.Save() parameter is set to False, the following events will not be triggered:

Quote creation

Before custom field calculation

After custom field calculation

Every time quote is changed

When user is on quotation tab

Interrupting Product Addition Workflow with Scripting

A new feature allows the WorkflowContext.BreakWorkflowExecution method to interrupt the quick product addition process. This applies to all product types, ensuring that if custom logic determines a product should not be added, the workflow stops immediately, preventing unnecessary actions like product additions or deletions from triggering the entire quote pipeline.

This improvement optimizes performance by reducing processing time and improving the user experience, particularly for complex quotes with custom product restrictions.

Forbidden .NET Classes and Namespaces

The following .NET namespaces and classes are forbidden in IronPython scripts:

System.IO

System.Data

System.Configuration

Webcom.Configurator.Util.ConnectionStringProvider

System.Environment

System.GC

System.Type

System.Web.WebPages.Razor

System.Reflection

System.Web

System.Diagnostics

If there are scripts that contain System import * and Webcom.Configurator.Util import * and any of the words from the forbidden classes, the system disables saving scripts (for example, saving is disabled if there is System import * and Data in the same script).

For troubleshooting, please contact the SAP CPQ Support team.

Best Practices for Exception Handling in Scripts

When extending SAP CPQ functionality with IronPython scripts, placing extensive logic within except clauses should be avoided, especially in loops or operations that occur frequently. This can help prevent the following issues:

Performance Degradation: Large catch blocks with complex logic, database calls, or nested exceptions can severely impact performance.

Memory Pressure: Repeated exceptions in loops can increase memory usage, slow down applications, and potentially cause application restarts.

Maintenance Challenges: Complex exception handlers make scripts difficult to debug and maintain.

Instead of performing substantial operations within the except block, a flag-based approach can be used to indicate an error and handle the logic after the critical section:



error_occurred = False

try:
    # Critical operation
    perform_calculation()
except Exception as e:
    # Set a flag or log minimal information
    error_occurred = True
    log_message("Error in perform_calculation: " + str(e))

# Handle logic outside the catch block
if error_occurred:
    handle_error_safely()


On this page
Saving Quotes on Events
Exceptions for Quote.Save() Pipeline Execution
Interrupting Product Addition Workflow with Scripting
Forbidden .NET Classes and Namespaces
Best Practices for Exception Handling in Scripts
Yes
No