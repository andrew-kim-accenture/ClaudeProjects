# MS Dynamics CRM (2011 version) and SAP CPQ Integration Instructions | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/1d2efc2e1c474b55aec76566d2d21b50.html?locale=en-US&state=PRODUCTION&version=2603
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
MS Dynamics CRM (2011 version) and SAP CPQ Integration Instructions

SAP CPQ can be integrated with MS Dynamics CRM (2011 version).

CRM Setup
Note

All mapping of entities in the two systems should be handled via IronPythin scripting, and not in the SAP CPQ Setup.

Note

If you are using custom scripts to integrate with MS Dynamics, have in mind that you must first configure the general CRM settings and create an administrative account in SAP CPQ. Without these settings, you will see errors in the Log and the integration won't work properly.

In order to access SAP CPQ Quotes through MS CRM opportunity, you need to log in to MS CRM with administrative account. After you have logged in follow these steps:

click on Settings

in the left menu click on Customizations

click on Customize the System

Among entities find the Opportunity object and click on it

Click on Forms and then find the form that you want to edit (one used in opportunity)

You can define SAP CPQ as either Iframe that will be displayed on opportunity page in particular section, or as a new tab where Iframe with SAP CPQ will be displayed. In order to add Iframe either to tab or to section, click on IFRAME under the Insert tab. Add an IFRAME form is displayed. Follow next steps to set up an SAP CPQ IFRAME.

Under name field write CPQ.

Under URL field write https:/CpqApplicationName/sso/mscrm.aspx?domain_name=DomainName

Replace CpqApplicationName and DomainName with the CPQ instance URL (for example yourdomain.cpq.cloud.sap) and with the name of your domain, respectively.

Under label field type CPQ

Be sure to check Pass record object-type code and unique identifier as parameters

Under Security, uncheck Restrict cross-frame scripting.

Click on tab Formatting and set the number of rows to 35. Make sure that checkbox Automatically expand to use available space is selected.

Save Iframe.

Click on Form Properties.

On tab Events, under Event List  Form Libraries, click on Add

Under Name, put CPQScript

For Type, pick Script(JScript)

Click on Text Editor, and add following code:


function SetUrlForCpq()
{
    var IFrame = Xrm.Page.ui.controls.get("IFRAME_CPQ");
	var Url = IFrame.getSrc() + "&userId=" + Xrm.Page.context.getUserId();
	IFrame.setSrc(Url);
}


Save the script and publish it. At the screen top, under dropdown Actions, click on Publish.

On the same tab Events, under section Event Handlers, for Control : Form and Event : OnLoad, click on Add and for Library select new_CPQScript. Leave flag Enabled selected and enter SetUrlForCpq for Function, since that is the function from our script. Click OK. Save form and publish it.
SAP CPQ Setup
Log into your SAP CPQ domain and go to Setup  CRM Integration  General. Under CPQ is integrated with dropdown list choose Microsoft CRM. Under CRM Webservice Discovery URL enter:
For CRM Online customers:

For North America : https://dev.crm.dynamics.com/MSCRMServices/2007/Passport/CrmDiscoveryService.asmx

For EMEA : https://dev.crm4.dynamics.com/MSCRMServices/2007/Passport/CrmDiscoveryService.asmx

For APAC : https://dev.crm5.dynamics.com/MSCRMServices/2007/Passport/CrmDiscoveryService.asmx

For CRM On-premise customers:

If you are using SPLA authentication : https://{yourservername}/MSCRMServices/2007/SPLA/CrmDiscoveryService.asmx

If you are using Passport authentication : https://{yourservername}/MSCRMServices/2007/Passport/CrmDiscoveryService.asmx

If you are using Active Directory authentication : https://{yourservername}/MSCRMServices/2007/AD/CrmDiscoveryService.asmx

Under Your company name in CRM, enter your company name.

Under Domain name (enter if using Active Directory), enter your domain name only if you are using Active Directory.

Under Organization URI enter: https://{YourCompanyName}.crm.dynamics.com/XRMServices/2011/Organization.svc

Under Endpoint type enter LiveId.

Define an administrative account
Now you must define an administrative account. To do so, follow next steps.

Go to Setup   CRM Integration  CRM Administrator Account

Click Add New to create a new administrator account.

In the form, choose Microsoft CRM under CRM Name, then fill out other fields based on your data and needs and click Save.
Dynamics CRM Integration using IronPython scripting
You can find instructions on how to integrate SAP CPQ with MS CRM on the following help page: Integrate with MS CRM.
Related Information
MS Dynamics CRM and SAP CPQ Integration
Dynamics CRM Integration Instructions for MS CRM 4.0
On this page
CRM Setup
SAP CPQ Setup
Dynamics CRM Integration using IronPython scripting
Related Information
Yes
No