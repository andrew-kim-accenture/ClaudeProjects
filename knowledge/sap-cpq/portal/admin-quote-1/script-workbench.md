# Script Workbench | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/3114396e8409400aa5c3230799efd8e7.html#writing-tests
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
Script Workbench

Script Workbench is available for administrators to help them debug and develop their scripts. It can be accessed through Scripts developing and editing page within SAP CPQ Setup, or from user view under the top menu.

Iron Python Scripts have always been a powerful tool for SAP CPQ customization, so they’re well adopted by SAP CPQ administrators and used frequently to complete a various kinds of tasks. Writing Iron Python (IP) script can be exhaustive due to its syntax and indentation rules. Therefore, SAP CPQ introduces Script Workbench along with some additional features that make writing scripts easier.

Note that if an administrator is in the middle of editing or developing a script, once the link Workbench is clicked, the script is loaded into the workbench. There’s no fear that the script will be lost.

On the setup side, there are two more links beside link for starting the workbench. Clicking on the first link “Open in new window” will open the API explorer in a new window. API explorer is a helpful reference on Scripting API for SAP CPQ administrators. Clicking on the link “Open”, API explorer is open next to the workbench window. “API explorer” represents a helpful Scripting reference with the descriptions on each method that can help you while trying to recall how to retrieve some information.

There are two modes under which the workbench can operate. One mode is “Standard” and another is “Test”. Standard mode should be used when writing, editing and debugging any script, since it provides more useful snippets than the “Test” mode.

“Test” mode should be used when writing tests for your model and when executing them. Note that in this mode, many API objects aren’t available since you’re able to only test your model, not the particular quote. Therefore, if you open workbench in order to help you during writing the script, make sure that you select “Standard” mode. This way you will be able to use all objects that are exposed through Scripting API. If you are in “Test” mode, some objects (for example Quote) are not available and you will get an error when executing the script.

While debugging, useful information is displayed under script edit area. All local variables are automatically traced. Any syntax error you might have in your script is going to be displayed as well. This helps you a lot to find the root cause of script problems, and shortens time to develop the script.

Note

Script execution in the Script Workbench is limited to 3 minutes (180000 ms). Scripts whose execution exceeds this limit are automatically cancelled.

API Snippets

Beside the previously mentioned API explorer, you are introduced with API snippets. In the screenshot below we wrote IP command to retrieve a custom field’s content with the help of “API snippets”. “API snippets” is a practical way to quickly create chunks of API code by selecting through a series of drop down boxes and inserting it to the editor. Note that “API snippets” is available in both, “Test” and “Standard” mode.

Alias Snippets

“Alias snippets” provides you with the most used functions on different SAP CPQ entities (products, attributes, customer, etc.). Similar to “API snippets”, you are able to select the appropriate function from the list and then narrow your selection by selecting through the rest of drop down boxes. As soon as you construct the desired method, you can insert it into the script editor using either “Insert at cursor” or “Add as new line” button.

Python Snippets

“Python snippets” provides you with the list of simple Iron Python language specific constructions that are frequently used while writing a script. For example, if you want to write an “if else if” statement, you can pick it from the list and insert into the editor.

Writing Tests

From time to time, it might be very convenient to have a test that you can execute and therefore test your model. Now you can write a test in the workbench and execute it. Once the execution is complete, you are informed on the execution result. If test fails you are informed on the reason through the information displayed in the workbench. When you write tests, you must be in “Test” mode.

A new Scripting object has been introduced that comprises a list of useful methods for writing tests. The objects name is IAssert. A detailed documentation on this object can be found at this location in SAP CPQ scripting help: IAssert Interface.

Note

Whenever a quote is edited via the Script Workbench, all changes are logged in Audit Trail   User Actions.

On this page
API Snippets
Alias Snippets
Python Snippets
Writing Tests
Yes
No