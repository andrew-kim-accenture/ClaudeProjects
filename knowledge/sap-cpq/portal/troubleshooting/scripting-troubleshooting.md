# Scripting Troubleshooting | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/665a9ee212394653a84a393035090802/e43d2f685f4748ba90721a07466e2ceb.html?locale=en-US&state=PRODUCTION&version=2603
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
Scripting Troubleshooting

This section provides more information about common issues that may occur in scripting, and ways to fix them.

1. Why doesn’t inline configuration work after executing Quote.Copy()?

Editing an inline configuration can fail if you previously executed the Quote.Copy() action. This happens because, after making a copy, the Quote.Copy() action loads the new quote, which affects the already initialized variables in the script.

The following script is an example where inline editing will fail:


Quote.ExecuteAction(4)
if Quote.MainItems[0] is not None:
  Quote.MainItems[0].Edit()
  Product.UpdateQuote()
The solution is to execute the Quote.Copy() action first, and then load the new quote instance into a new variable which will be used for inline editing:


copiedQuoteInfo = Quote.Copy()
quote = QuoteHelper.Edit(copiedQuoteInfo.CompositeNumber)

if quote.MainItems[0] is not None:
	p = quote.MainItems[0].EditConfiguration()
	p.UpdateQuote()
	p = None
2. How do I detect and identify performance issues that are caused by Iron Python scripts?

The execution of Iron Python scripts can now be completely disabled in the Developer Console. That way, it is easier to identify performance issues that are caused by Iron Python scripts. When the checkbox Disable Iron Python Script Execution is selected, neither global nor local scripts are executed as long as the Developer Console is open.

3. How to handle cookies with redirects and the HttpWebRequest?

The HttpWebRequest handles redirects automatically, which may get in the way when the web server is setting cookies in the same response in which it's sending a redirect. In this scenario, the HttpWebRequest object will totally discard cookies that are set with a redirect response.

To prevent this, use the following script:



cookieContainer = CookieContainer()

def GetNewRequest(targetUrl):
    print targetUrl
    newRequest = HttpWebRequest.Create(targetUrl)
    newRequest.AllowAutoRedirect = 0
    newRequest.CookieContainer = cookieContainer
    authorization = "credentials"
    authorization = Convert.ToBase64String(UTF8.GetBytes(authorization))
    authorization = "Basic " + authorization
    newRequest.Headers.Add("AUTHORIZATION", authorization)
    newRequest.Method = 'GET'
    newRequest.ContentLength = 0
    newRequest.ContentType = 'application/json'
    return newRequest

rew = GetNewRequest('requestUrl" }')
resp = rew.GetResponse()

while resp.StatusCode == HttpStatusCode.Found:
                resp.Close()
                print resp.Headers["Location"]
                rew = GetNewRequest("baseRequestUrl" + resp.Headers["Location"])
                resp= rew.GetResponse()


4. Scripts that use the Cart API don't work properly after the 2011 release. What might be the reason?

As of the 2011 release, the /api/rd/v1/Cart/ APIs used for executing actions on quotes will work properly only if the quote has been previously loaded. This is applicable whenever the Cart API is used for triggering any of the quote actions that can be executed on the user interface, in all quote tabs.

Note

If you are using any of the Cart APIs for triggering quote actions in your Iron Python scripts, make sure to revise them and adjust them accordingly. To load the quote before executing an action, use GET URL + 'cart/edit?cartCompositeNumber=' + QuoteNumber.

Example Script

To help you adjust your scripts using the Cart API, we have provided an example script with logging and loading the quote:



url = 'https://yourdomain.cpq.cloud.sap/' 
username = 'testuser' 
password = 'abc123' 
domain = 'testdomain' 
quoteNumber = '0123456'

loginResponse = RestClient.Post('{0}api/rd/v1/Core/LogIn?username={1}&password={2}&domain={3}'.format(url, username, password, domain), None, None, True)

# Set cookies that we received as a response to the login request.
headers = {
	'Cookie': ';'.join([x.Key + '=' + x.Value for x in loginResponse.Cookies])
}

loadCartResponseStream = RestClient.GetStream('{0}cart/edit?cartCompositeNumber={1}'.format(url, quoteNumber), headers)
loadCartResponse = StreamReader(loadCartResponseStream).ReadToEnd()
				
				

5. A new DLL file isn't generated automatically after the service has been modified. What can I do to fix this?

You need to edit the line in which the URL path to the WSDL file is stated and add a random additional parameter at the end of the URL. Once the WSDL URL is changed, a new DLL file will be generated. In the example provided below, &v=1 parameter has been added.

ws = WebServiceHelper.Load("Wsdl", "https://qa.connect.test.com/SimulateServicePrice?wsdl&v=1",)

6. The Force Proxy Generation checkbox has been selected in the global script definition, but the proxy class/DLL file hasn't been reset. What can I do to fix this?

Add a small change to the script and the proxy class will be successfully reset.

7. Why does my error log show a different line number than in the original script for the error position?

When debugging an Iron Python stack trace, please be aware of the possibility that the line numbers displayed in the stack trace are not always 100% true. The Iron Python engine does not always give the correct line number, as it is the case with other programming languages. However, those line numbers are very accurate and probably differ from the correct line just by a few numbers.

8. Why does an autocomplete attribute in SAP CPQ show incorrect or updated values when I reload or copy a quote item?

This behavior is controlled by the Always Load Selected Values From Custom Table parameter. When a configuration is created and added to a quote, it becomes a quote item and the system stores the selected configuration as-is. Later, when a quote item is loaded through scripting or copied, the system simply retrieves this persisted configuration without reapplying any rules. Autocomplete attributes pull data from a custom table using unique row IDs. When a value is selected, both the display value and the IDs are saved in the configuration. When the configuration is reopened, the system uses the persisted IDs to look up and display the value. If the custom table rows change after the configuration is saved, the ID may point to a modified row. As a result, the system displays updated or incorrect values instead of the originally persisted ones.

Yes
No