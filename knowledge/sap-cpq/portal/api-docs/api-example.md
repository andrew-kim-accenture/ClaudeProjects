# API Example | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/4b1a9bfceb1a4e9eb5205f1d376e41e3.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
API Example

A common use of SAP CPQ’s API is to change the status of a quote. This type of action falls under the set of user side functions.

This set includes the function performCartAction, which performs a workflow action. Based on the Workflow setup, certain actions may be restricted because of a user’s rights and the quote status.

This function is usually preceded by the function getActionList, which returns a list of actions available for the specified quote. One of these actions is then used in the performCartAction function.

To access SAP CPQ’s API, use the following URLs:

<application root>/wsAPI/CPQAPI.asmx - this is the set of user-level functions

<application root>/wsAPI/wssrv.asmx - this is the set of administrator-level functions

For example, to access the functions on the https://www.yourdomain.cpq.cloud.sap installation, the following URLs would be used: https://yourdomain.cpq.cloud.sap/wsAPI/CPQAPI.asmx and https://yourdomain.cpq.cloud.sap/wsAPI/wssrv.asmx. To view the list of functions that an API URL contains, enter the URL into any web browser. Click a function to view the parameters that the function takes.

Using the desired installation’s URL, the performCartAction function will use the following parameters: Username, Password, OrderID, ERPOrderID, and Action.

The Username and Password can be any user created on that installation. If the installation is multitenant, then the domain should be included with the Username preceded by a #. For example, to log in with the username Joe that is in the Webcom domain, Joe#Webcom would be used.

Note

Inactive users can't perform any API calls, since their login data is checked, just as in the standard web-based SAP CPQ application. Don't forget that all API calls are case-sensitive.

SAP CPQ Workflow is applied to this user when performing an API function. In this example, the user needs to have the correct rights to change a quote’s status.

OrderID is the number of the quote that the function will be performed on. SAP CPQ Workflow is applied to the quote used. For this example, the quote needs to be in the correct status in order for a status change to be performed.

The ERPOrderID is an external system’s (SAP ERP) order number that has been assigned to the SAP CPQ OrderID. It is not required but is available if necessary.

The Action parameter is XML that describes the action being performed. The XML includes two elements to describe the action: ActionName and ActionParameters. ActionName is the name of the action that will be performed on the quote. ActionParameters is any parameters the action needs. For this example, CHANGESTATUS is the ActionName and the new status is the ActionParameters.

The following is example XML that changes the status of a quote to Quote Won: <ACTION>-:$ <NAME>CHANGESTATUS</NAME>-:$ <PARAMETER name=“NewStatus” >Quote Won</PARAMETER>-:$ </ACTION>

More than one action may be included in the XML as long as it stays within the Action tag and includes the same elements.

After the performCarAction function is executed, XML is returned that gives the result of the action. If it was performed correctly, an OK will be included within a RESULT tag. If it failed to complete the action, a NOK will be included. The reason it failed will be included within a REASON tag. In addition, the status the function attempted to change the quote to will be included within a STATUS tag.

Yes
No