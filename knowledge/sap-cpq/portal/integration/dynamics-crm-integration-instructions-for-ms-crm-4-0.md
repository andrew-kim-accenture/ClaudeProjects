# Dynamics CRM Integration Instructions for MS CRM 4.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/7aa9591b788b4933baac9d9135156165.html?locale=en-US&state=PRODUCTION&version=2603
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


	
MS Dynamics CRM and SAP CPQ Integration
	
MS Dynamics CRM (2011 version) and SAP CPQ Integration Instructions
	
Dynamics CRM Integration Instructions for MS CRM 4.0
	
Salesforce Integration
	
CRM Integration
Dynamics CRM Integration Instructions for MS CRM 4.0

In order to access Cpq Quotes through MS CRM opportunity, you need to log in to MS CRM with administrative account.

After you have logged in, click on Settings, then in the left menu click on Customization  Customize Entities and among entities find the Opportunity object and click on it. When the window is opened, on the left, click on Forms and Views, and then among All Forms and Views, find Form (Name = Form and Type = Form) and click on it.

On the right, click on Add a Tab, and name the tab 'Cpq Quotes’. For the new tab click on Add a Section, name it ‘CpqSection’ and save it.

Click on Add an IFRAME.

Under name, in the second field write ‘CPQ’.

For the URL write: https://CpqApplicationName/sso/mscrm.aspx?domain_name=DomainName (replace CpqApplicationName and DomainName with the URL of your Cpq application URL (for instance yourdomain.cpq.cloud.sap) and with the name of your domain , respectively).

Be sure to check Pass record object-type code and unique identifier as parameters

Under Security, uncheck Restrict cross-frame scripting.

Click on tab Formatting. Make sure that checkbox Automatically expand to use available space is selected.

Save Iframe.

On the right, click on Form Properties.

Under Events, choose OnLoad and click Edit

Check Event is enabled and it the text area paste the following text :



var xmlhttp = new ActiveXObject("Msxml2.XMLHTTP"); 
xmlhttp.open("POST",  "/mscrmservices/2007/crmservice.asmx", false); 
xmlhttp.setRequestHeader("Content-Type", "text/xml; charset=utf-8"); 
xmlhttp.setRequestHeader("SOAPAction", "http://schemas.microsoft.com/crm/2007/WebServices/Execute"); 
     
var soapBody = "<soap:Body>"+ 
    "<Execute xmlns='http://schemas.microsoft.com/crm/2007/WebServices'>"+ 
    "<Request xsi:type='WhoAmIRequest' />"+ 
    "</Execute></soap:Body>"; 
     
var soapXml = "<soap:Envelope " + 
    "xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/' "+ 
    "xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' "+ 
    "xmlns:xsd='http://www.w3.org/2001/XMLSchema'>"; 
 
soapXml += GenerateAuthenticationHeader(); 
soapXml += soapBody; 
soapXml += "</soap:Envelope>"; 
 
xmlhttp.send(soapXml); 
xmlDoc=new ActiveXObject("Microsoft.XMLDOM"); 
xmlDoc.async=false; 
xmlDoc.loadXML(xmlhttp.responseXML.xml); 
     
var userid = xmlDoc.getElementsByTagName("UserId")[0].childNodes[0].nodeValue; 
var buid = xmlDoc.getElementsByTagName("BusinessUnitId")[0].childNodes[0].nodeValue; 
var orgid = xmlDoc.getElementsByTagName("OrganizationId")[0].childNodes[0].nodeValue; 
 
var params = crmForm.all.IFRAME_CPQ.url;
var newTarget = params.substr(0,params.indexOf('?'));
params = params.substr(params.indexOf('?'));
newTarget = newTarget + params+"&userId=" + userid ;
crmForm.all.IFRAME_CPQ.src = newTarget ;

Save and close the Form. At the screen top, under dropdown Actions, click on Publish.
Related Information
MS Dynamics CRM (2011 version) and SAP CPQ Integration Instructions
MS Dynamics CRM and SAP CPQ Integration
Yes
No