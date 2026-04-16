# As of 2402: Python Module 'sys' Is No Longer Supported Due to Security Reasons | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/af2b569e08cc48d39065f9ee3af5697f.html?version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ What's NewVersion: 2603English
Provide feedback on our search

	
What's New Library
	
Breaking Changes and Announcements


	
Latest Breaking Changes and Announcements
	
Archive of Breaking Changes and Announcements


	
SAP CPQ 2602 Breaking Changes and Announcements
	
SAP CPQ 2511 Breaking Changes and Announcements
	
SAP CPQ 2508 Breaking Changes and Announcements
	
SAP CPQ 2505 Breaking Changes and Announcements
	
SAP CPQ 2502 Breaking Changes and Announcements
	
SAP CPQ 2411 Breaking Changes and Announcements
	
SAP CPQ 2408 Breaking Changes and Announcements
	
SAP CPQ 2405 Breaking Changes and Announcements
	
SAP CPQ 2402 Breaking Changes and Announcements


	
As of 2402: Add Asset Dialogue Redesigned for a Better User Experience
	
As of 2402: Removal of the Label Field from the Quote Item Custom Fields
	
As of 2402: Pricing Using Item Level Date is Now Possible When Using VCP Pricing Stateless Service
	
As of 2402: Item Price and Service Date Can Now Be Changed for Both Document and Stateless Pricing
	
As of 2402: Python Module 'sys' Is No Longer Supported Due to Security Reasons
	
As of 2402: RestClient.GetStream Method Returns Body As a Stream Object
	
As of 2402: A Scroll Has Been Added to the ItemsTable Template for Quote 1.0, Which Has No Paging Enabled
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2402: Python Module 'sys' Is No Longer Supported Due to Security Reasons

Python module 'sys' is no longer supported due to security reasons. All existing scripts using ‘sys’ module will continue to work, but modification of the same scripts will not be possible unless the module is removed from the script.

To eliminate the usage of the SYS module in IronPython scripts, SAP CPQ has presented an alternative for logging exceptions in the try/except block, by revealing a new overload of the Log.Error interface, which now accepts three arguments. SAP CPQ automatically logs custom Python exceptions with the complete call stack and line numbers where the exception was thrown.


ILog.Error(string title, string message, object exception)
In case exception object of type IronPython.Runtime.Exceptions.PythonExceptions.BaseException is not provided, or different object type is passed method will behave the same as method with the 2 arguments.


ILog.Error(string title, string message)
The example below shows how clients used this with the SYS module:


import sys
try:
    x= 2/0
except Exception as ex:
    exc_type, exc_obj, exc_tb = sys.exc_info()
    Log.Error("Python error", "Python error caught. Type {0} at {1} on line {2}: {3}".format(str(exc_type), exc_tb.tb_frame.f_code.co_name, exc_tb.tb_lineno, str(ex))) 

Description output:


Python error caught. Type <type 'exceptions.ZeroDivisionError'> at <module> on line 3: Attempted to divide by zero.

After removing SYS module and using provided alternative:


try:
    x= 2/0
except Exception as ex:
    Log.Error("Python error", "Python error caught.", ex) 
Description output:


Python error caught.
ZeroDivisionError: Attempted to divide by zero.
Attempted to divide by zero.
    at <module> on line 2 
Yes
No