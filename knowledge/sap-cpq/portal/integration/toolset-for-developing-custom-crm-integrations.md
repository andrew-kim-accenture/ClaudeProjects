# Toolset for Developing Custom CRM Integrations | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/34fa18889f4a4bf0bf543e3fe3f16b9f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Toolset for Developing Custom CRM Integrations

Using a dedicated set of endpoints and other SAP CPQ elements, you can develop a custom integration between SAP CPQ and an external CRM solution.

The toolset for developing custom CRM integrations allows you to develop integrations based on your specific business needs, in both Quote 1.0 and Quote 2.0. You can use the provided API endpoints, IronPython scripting, events, and custom actions to integrate SAP CPQ with third-party CRM systems for which a standard out-of-the-box integration isn't available. For example, you may benefit from this toolset if you want to integrate Quote 2.0 with a CRM system for which a standard integration exists only in Quote 1.0. A custom integration created this way can be adapted to your specific business flows and processes. The resources available for developing custom CRM integrations are described here through the most common scenarios which you can develop and use in the scope of an integration.

Scenarios for Custom CRM Integrations

In a typical CRM integration flow, the user creates a quote from the CRM system and lands on that quote to work on it, and afterwards continues working in the CRM system. It is also possible to create or edit CRM objects from SAP CPQ.

Create SAP CPQ Quote from CRM

The most common scenario in CRM integrations is triggering the creation of a quote from a CRM system, and landing on that quote to continue your work.

The first step in this scenario is to create a quote. A quote should be created with all related objects, which should be mapped from the external system. This mapping should be performed outside SAP CPQ, preferably using middleware such as SAP Cloud Integration.

Quote 1.0

	

Quote 2.0




Use SOAP API to create a new quote in the system. This API supports the X509Certificate, bearer JWT token, and basic authentication. SOAP API documentation is available here.

	

Use Rest API to create a new quote in the system. This API supports the bearer Token, JWT token, and session authentication. REST API documentation is available here.

The URL for the landing page in SAP CPQ is http://{cpq-environment}/integrations/crm/landing. It is possible to land to SAP CPQ via API and to pass query parameters in the request, as seen in this example URL: http://{cpq-environment}/integrations/crm/landing?quoteId=100&opportunityId=2. The query parameters are stored in the context.ExternalParameters scripting variable in a script which needs to be attached to the event OnLandingFromCRM. Only one script can be attached to this event, and that script must contain the redirection URL. Here is an example of the script attached to the OnLandingFromCRM event:


externalParameters = context.ExternalParameters  
compositeNumber = externalParameters['compositeNumber']  
comment = externalParameters['comment']  
quote = QuoteHelper.Get(compositeNumber)  
quote.Comment = comment  
quote.Save()  
redirectionUrl = 'http://cpq/cart/edit?cartCompositeNumber={}'.format(compositeNumber)

The following step is to open the SAP CPQ quote for editing. In addition, it is possible to pass additional parameters in the request. Using these additional parameters, consumers of the endpoint could pass flags used for user interface customization, or another type of custom logic in the system. In a typical CRM integration, the user lands from the CRM to a customized view of the SAP CPQ quote, which is different from how the quote is displayed to users opening it from SAP CPQ.

Quote 1.0

	

Quote 2.0




The quote can be opened for editing in the following ways:

using a Cart Composite Number: https://{cpqEnvironmentUrl}/cart/edit?cartcompositenumber={cartCompositeNumber}

using an Owner ID and Quote ID: https://{cpqEnvironmentUrl}/cart/edit?ownerId={ownerId}&quoteId={quoteId}

This endpoint supports JWT authentication.

	

The quote can be opened for editing in the following ways:

using a Cart Composite Number: https://{cpqEnvironmentUrl}/cart/edit?cartcompositenumber={cartCompositeNumber}

using an Owner ID and Quote ID: https://{cpqEnvironmentUrl}/cart/edit?ownerId={ownerId}&quoteId={quoteId}

using a Quote ID: https://{cpqEnvironmentUrl}/cart/edit?quoteId={quoteId}

This endpoint supports JWT authentication.

You can create user interface customizations by passing additional parameters in the query string in the above-mentioned endpoint. These parameters could be stored in session variables on the event OnUserLogin via an IronPython script.


Log.Info('Reading request parameters start.')

for parameter in RequestContext.QueryString.AllKeys:
    if parameter is not None and parameter != '':
    	value = RequestContext.QueryString.Get(parameter)
    	if value is not None and value != '':
        	Session[parameter] = value
    		Log.Info('Parameter name: {} - Parameter value: {}'.format(parameter, value))

Log.Info('Reading request parameters end.')

These session variables can be used in custom user interface templates and used for creating conditions (for example, if the appropriate flag is set to false, the list of categories won't be displayed). In responsive templates, there should be a call for cpq.server.executeScript which retrieves the appropriate session variables. After the payload is retrieved from the back-end server, this data could be used for customization in responsive templates.


<script>
    cpq.server.executeScript("Script for session variables", null, payload => {
        if (!payload["iscategorylistvisible"])
        {
            document.getElementById("categories").style.display = 'none';
        }
    });
</script>

In an IronPython script that is called from user interface customization, a logic for retrieving session variables used for customization should be added in the first script.


ApiResponse = ApiResponseFactory.JsonResponse({"iscategorylistvisible": Session["iscategorylistvisible"]})

After the user successfully lands on the quote, they can perform any action available in that status on the quote.
In addition to user interface customization, you can use this approach to implement a custom action. The first step is the same as in the case of user interface customization: on the OnUserLogin event, every parameter should be stored in the session. Following that, you should add a custom action (for example, Set Quote Item Field) which contains a code for retrieving the session variable and quote item quantity. Here is the example of a custom action IronPython script:


for item in context.Quote.GetAllItems():
	item.Quantity = float(Session["itemquantity"])
As seen in the example, all items will have the same item quantity passed in the first request. This is how custom actions can be used after the user lands from CRM, replacing the existing logic for this.
Note

All session variables should be entered in lowercase because there are URLs encoded in the first request.

Edit SAP CPQ Quote from CRM
After the quote is created, in a frequent use case, the user lands on an existing quote from the CRM system to edit that quote. There are two ways to edit a quote from the CRM system:

navigate the user to the quote in the Edit mode, so that they can edit the quote directly in the transaction

edit the quote as a background job using an SAP CPQ API

You can develop this scenario using the same endpoint as for creating a quote from the CRM system, and the same applies for the additional parameters that can be sent.

Quote 1.0

	

Quote 2.0




The quote can be opened for editing in the following ways:

using a Cart Composite Number: https://{cpqEnvironmentUrl}/cart/edit?cartcompositenumber={cartCompositeNumber}

using an Owner ID and Quote ID: https://{cpqEnvironmentUrl}/cart/edit?ownerId={ownerId}&quoteId={quoteId}

This endpoint supports JWT authentication.

	

The quote can be opened for editing in the following ways:

using a Cart Composite Number: https://{cpqEnvironmentUrl}/cart/edit?cartcompositenumber={cartCompositeNumber}

using an Owner ID and Quote ID: https://{cpqEnvironmentUrl}/cart/edit?ownerId={ownerId}&quoteId={quoteId}

using a Quote ID: https://{cpqEnvironmentUrl}/cart/edit?quoteId={quoteId}

This endpoint supports JWT authentication.

Create or Edit CRM Object from SAP CPQ Quote

You can also trigger the creation or editing of certain objects in the CRM system from the SAP CPQ quote. You can do this by creating a combination of SAP CPQ scripts, custom actions and events as described here.

A custom action to which an IronPython script is attached needs to be available on the quote. The attached IronPython script calls the external service, which triggers a mechanism to call SAP CPQ again.

Quote 1.0

	

Quote 2.0




The following endpoint should be called to execute the script:

https://{cpqEnvironmentUrl}/customAPI/executeScriptFed?scriptName={scriptName}&quoteCompositeNumber={quoteCompositeNumber}

This endpoint supports JWT authentication.

In the script for Quote 1.0, you must add a code for retrieving quote data. The quote composite number should be passed as a parameter to the custom API when the script is executed. The quote is then loaded in the background when the quote composite number is passed, and following that, there should be a call for retrieving the quote in the XML format:


Quote.GetQuoteInXML()
	

The following REST API endpoint, which returns quote data in the JSON format, should be called:

https://{cpqEnvironmentUrl}/webapihelp/index#!/Quotes/Quotes_GetQuote

This endpoint supports JWT authentication.

Yes
No