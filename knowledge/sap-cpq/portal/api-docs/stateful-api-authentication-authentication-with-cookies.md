# Stateful API Authentication (authentication with cookies) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/0a4b874d705a4fb8ac17aa75a9983f25.html?locale=en-US&state=PRODUCTION&version=2603
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


	
SAP CPQ REST API Authentication


	
JWT Bearer Token API Authentication
	
Stateful API Authentication (authentication with cookies)
	
Basic API Authentication
	
Token API Authentication
	
Obsoleted Token Endpoints Guide
	
SAP CPQ to Third Party Authentication
	
Script API
	
SCIM API
	
Configurations API
	
Custom Table API
	
Rate Plans API
	
REST API for Updating Ship To, Bill To, and End User
	
API for Content Upload
	
REST API Error Codes
	
Custom API (Global Scripts Consumed as REST API Web Services)
	
User Interface API
	
Product Integration REST API
	
Headless SAP CPQ Configurator
Stateful API Authentication (authentication with cookies)

This authentication type is used for responsive design APIs. If you are calling an API from a SAP CPQ page using JavaScript, no additional steps are required as you are already authenticated. However, if you are calling the API from a third-party tool, you should first log in calling the method /api/rd/v1/Core/LogIn. This creates a session and gets the CSRF header token.

This call will set two cookies that you should set with these API calls:

ASP.NET_SessionId

Webcom-lbal (or Webcom-ID - the name varies depending on the environment)

Note

To check the supported authorization for an endpoint in Swagger, click the  (padlock) icon.

If the POST method is executed, the CSRF token needs to be sent as well.



baseUrl = 'https://default-us1-sbx-01.cpq.cloud.sap//api/rd/v1/'
loginResponse = RestClient.Post(baseUrl + 'Core/LogIn?username=usernameGoesHere&password=passwordGoesHere&domain=domainGoesHere', "", {}, True)

# Set cookies that we received as a response to the login request.
headers = {	'Cookie': ';'.join([x.Key + '=' + x.Value for x in loginResponse.Cookies])}
response = RestClient.Get(baseUrl + 'QuoteList/GetInitData?tabId=1', headers)
Trace.Debug(response)


Using this technique creates a session (SAP CPQ currently relies primarily on sessions) and returns a CSRF token which is used for POST methods.

In case you want to send cookies through a POST request, use the example below:


baseUrl = 'https://default-us1-sbx-01.cpq.cloud.sap//api/rd/v1/' 
loginResponse = RestClient.Post(baseUrl + 'Core/LogIn?username=usernameGoesHere&password=passwordGoesHere&domain=domainGoesHere', "", {}, True) 

# Set cookies that we received as a response to the login request. 

headers = { 'Cookie': ';'.join([x.Key + '=' + x.Value for x in loginResponse.Cookies]),
            'X-CSRF-Token' : loginResponse.Body
           }           

response = RestClient.Post(baseUrl + 'Catalog/Reset', '', headers)

Note

If the CSRF token returns null even though you've followed the instructions provided in this topic, contact the SAP CPQ Support team.

When calling the stateful API in a customized responsive design template, you don't have to log in to get the CSRF token, but you can reuse the browser cookie from the active session and get the token from the JavaScript global variable csrfToken.

Example


$.ajax({            
	url:'../api/rd/v1/Catalog/Reset',
	type:"POST",
	headers: { "X-CSRF-Token": csrfToken },
	success: function(data) { 
		//something that will handle API successful response 
	},
	error: function() {
		// something that will handle API error response
	}
});
Yes
No