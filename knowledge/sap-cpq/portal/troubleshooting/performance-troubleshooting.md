# Performance Troubleshooting | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/665a9ee212394653a84a393035090802/5b4fc2b4ee544c32bf4c78bc8c91edd0.html?locale=en-US&state=PRODUCTION&version=2603
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
Performance Troubleshooting

SAP CPQ is highly flexible, but extensive modelling can affect the performance. This document lists the methods for troubleshooting performance issues.

Performance Measurement
A way to ensure that the implementation of new features is successful is doing systematic and periodic performance measurement. Performance measurement should be done before and after implementing new features and deploying them to production. In addition, it should be done with meaningful and impactful data (such quotes with exceedingly high numbers of items or quote item custom fields, and so on).
Compiling a Performance Issue Report
When contacting the Support team in regard to a performance issue, your report should contain the following information:

information about the specific performed by the user (with the screenshots and the used data provided)

the ID of the user who is experiencing the issue

the timestamp of the issue

HTTP trace from the browser (HAR file)

a developer console trace XLSX file

a performance analysis, which is performed by you as described below.

Performance Analysis by Clients
This is a list of the questions and tasks that should be addressed in your performance analysis:

Network latency

Check if it’s a location issue. Does it work slowly only from specific locations?

Does an action take significantly more time than it’s shown in the Developer Console (meaning that it covers only server time)?

Check if the browser network tab shows slow network time.

Check network speed in the browser console.

Browser console  Network tab  Name of request (for example, login.aspx)  Timing .

This is an example of poor network quality (1.39 s for 124 kB).

Issues with User Interface Customizations

User interface customizations can cause a slowdown so you should first turn off the customizations in the Developer Console and repeat the measurements. If the problem is solved by removing the customizations, then you should turn them back on and check the performance in the browser (there’s an option to record performance in the Network console. You can check the performance by recording it with and without user interface customizations).

Check if the rendering is slow or if there are additional calls being made to the server from custom JavaScript (ajax calls in browser console/Network).

Also, in the Network console   Performance tab, you can check the time spent on rendering/scripting/loading by recording it:

Developer Console - break down the issue causing the performance slowdown to its components:

Database - total number of database queries (standard and custom queries), total database time, top 10 slowest queries.

Scripting - total number of scripts executed, total script time, top 10 slowest scripts.

Formulas - number of formulas evaluated, total time spent in formula evaluation, top 10 slowest formulas.

External API calls - total number and total duration (for example, RestHelper, SFCommunicator, VCCommunicator...).

Check the Performance details option on the action for more information.

Check Number of errors (there shouldn't be errors).

Check Number of Info because if scripts write in the Log, that could cause slow performance (Labels: Script, Level: Info).

Performance Exploration

Slowest first - If you want to rearrange actions to view the slowest actions first, click Slowest first in the duration (ms) column. This rearranges the trace lines so that traces are sorted by duration (the slowest is displayed first).

Pin a trace - In the trace list, you can click on the pin for a trace so that the other traces are removed from the list, and only the pinned trace and its children traces are displayed. The breadcrumbs display above the list. By pinning, you isolate a group of traces within one action so you can focus on analyzing them only.

Nesting level 1- The results in the Developer Console are nested. When you set the nesting level to 1 you don’t see the children traces and that simplifies the view and allows you to drill down by pinning (same thing you do when you have a large and deep folder structure and you’re trying to figure out how to free hard drive space). You can set the level that you want to see (for example, 1 or 2, or maybe more) and the results are displayed for the selected criteria.

API Usage in Scripting

When creating custom API calls using scripts, it's important to use the same session for all calls. This means using the same session repeatedly for multiple API calls to avoid creating too many sessions, which can slow things down. Although there's no limit on how many sessions can be created, using too many can cause problems and might even result in the authenticated user being disabled.

Tips and Tricks for Performance Troubleshooting
Scripting

In the Developer Console, you can disable in one click all Iron Python scripts by clicking on a checkbox in the Developer Console menu. This way, you can easily calculate the differences in action execution when scripts are enabled and when they’re disabled.

Check if a slow action that maybe isn't necessary is called (for example, Quote Save or any other action related to calculations or reconfiguring).

Check if the event context in which scripts are executed is too broad, if multiple events are unnecessarily hooked to a script, or if events are used incorrectly (for example, if scripts loop when processing items in the OnItemAdded event, which runs for every item separately).

Check if Log.Write is used instead of Trace.Write (logging can cause additional slowdown).

Note

Audit data tables are typically large because they log every activity within the application. Due to their size and ongoing growth, querying these tables directly using T-SQL can result in significant performance degradation. This may include excessive resource consumption, extended execution times, and potential query timeouts.

For optimal performance, querying the Audit tables directly should be avoided.

Catalog

Check if the application parameters for parsing the Catalog are set to FAST (Setup  General  Application Parameters  Product Catalog)

Configurator

(Quote 1.0 only) If the product has attributes with values referencing other products, enable the parameter No Loading of Referenced Products in Product Collection.

Check the size and depth of parent/child structures, since the whole structure is loaded in the memory, and, whenever it is possible, altering the product model should be analyzed and considered.

Check if the console reports a loop in the rules.

Check the number of execution cycles in general.

(Quote 2.0 only) Enable Variant Configuration and Pricing Calls On Demand option is available on the SAP Variant Configuration and Pricing Providers page. Enable this option if you prefer not to call the Variant Configuration and Pricing service in Configurator every time a you make a change.

Quote User Interface

Check if the application parameter Page items (only for Responsive Design) is set to True (Setup  General  Application parameters  Shopping Cart and Quotes  Page items (only for Responsive Design). If this parameter is set to False, the loading of the quote with a lot of items lasts longer.

Check the number of columns in the list of quote items (maybe not all quote item custom fields are visible but JSON file is large).

Check if the slow action is executing Reconfigure.

How to export HTTP trace from the browser (HAR file)?

Read more about getting the HAR file through different browsers: http://www.keycdn.com/support/what-is-a-har-file.

Browser console  Network tab  Export HAR .

The sheer size of a structure might be the issue (the size of a container in the background, a quote table, or the number of items or fields in the quote).

Note
Trace.WriteStep() should be used with the WITH block. The purpose of the WITH block is that the trace object is disposed when the WITH block is finished, and it isn't stored in the memory. All trace objects which are inside the WITH block are treated as child-traces compared to Trace.WriteStep(). Here is an example with the WITH block:


def Divide(a, b):
    Trace.Write('Divide a/b')
    return a/b;

def Multiply(a, b):
    Trace.Write('Multiply a * b')
    return a*b;

def Sum(a, b):
    Trace.Write('Sum a + b')
    return a+b;

def Calculate(a, b):
    with Trace.WriteStep('Starting calculate'):
    	r1 = Sum(a,b);
    	r2 = Multiply(a,b);
    	r3 = Divide(a,b);
    return r1+r2+r3;

c = Calculate(2, 2)

This is the output from the developer console in case the WITH block is used:

Here is an example without the WITH block:



def Divide(a, b):
    Trace.Write('Divide a/b')
    return a/b;

def Multiply(a, b):
    Trace.Write('Multiply a * b')
    return a*b;

def Sum(a, b):
    Trace.Write('Sum a + b')
    return a+b;

def Calculate(a, b):
    Trace.Write('Starting calculate')
    r1 = Sum(a,b);
    r2 = Multiply(a,b);
    r3 = Divide(a,b);
    return r1+r2+r3;

c = Calculate(2, 2)

This is the output from the developer console in case the WITH block isn't used:

Alternatively, you can use the CPQ Python decorator function:



def TraceMethod(message = ''):
	def CPQDecorator(function):
		def CPQWrapper(*args, **kwargs):
			if not Trace.IsOn:
				return function(*args, **kwargs)
			formattedMessage = '';
			if len(message):
				formattedMessage = '{}, {}{}'.format(message, function._name_, args);
			else:
				formattedMessage = '{}{}'.format(function._name_, args);
			with Trace.WriteStep(formattedMessage):
				return function(*args, **kwargs)
		return CPQWrapper
	return CPQDecorator
#Example of usage on the method:
@TraceMethod('test 123')
def Calculate(a, b):
	return a + b;
Calculate(2,3);


You can also find this code inside the Script Workbench under the Python snippets. We recommend that you add this code to a script or module and use it where needed.

The CPQ decorator accepts a message parameter that adds the message to the trace along with the method name and parameters, otherwise the CPQ decorator logs the method name and parameters only. Within the method you can use additional traces that are shown hierarchically.

Additionally, to increase performance, you can use deferred formatting of messages instead of formatting the string in the script using TraceFormat and TraceStepFormat. This way formatting happens only if the tracing is on and when the message is written instead of formatting the message before it reaches the tracing object.

Examples:



Trace.WriteFormat('This {0} is {1}.', 'message','formatted')

and using TraceStepFormat:



with Trace.WriteStepFormat('This {0} is {1}.', 'message',' formatted'):
    Trace.Write('Inside message')
Using the Try/Except Block

The try/except code block shouldn't be used in a normal programming flow. If we know which action could cause an exception, we should prevent it with a check. In addition, the best practice is to use if/else instead of try/except due to the performance impact. Here is an example of a simple piece of code where we use if/else instead of try/except, which results in 10 times faster performance.

Here, if/else is used, and the execution time is about 0.5 seconds.


a = 5
b = 0
r = 0
for i in range(100000):
    if b != 0:
        r = a/b
    else:
        r = 0
Here, try/except is used, and the execution time is about 5.5 seconds.


a = 5
b = 0
r = 0

for i in range(100000):
    try:
        r = a/b
    except:
        r = 0
Related Information
Developer Console
Developer Console How-To
Debugging with Developer Console
On this page
Performance Measurement
Compiling a Performance Issue Report
Performance Analysis by Clients
API Usage in Scripting
Tips and Tricks for Performance Troubleshooting
Related Information
Yes
No