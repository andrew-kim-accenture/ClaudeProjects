# MS Dynamics CRM and SAP CPQ Integration | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/bb3e4b9763024d00ba9d5b48b9a212b2.html?locale=en-US&state=PRODUCTION&version=2603
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
MS Dynamics CRM and SAP CPQ Integration

This topic provides you with instructions how to successfully integrate your MS Dynamics CRM with SAP CPQ.

Prerequisites
Federated SSO needs to be set up for the integration to work properly. The following steps need to be taken in order to establish SSO between SAP CPQ and Microsoft Dynamics CRM:

SAML metadata files exchange between IdP and SP side. ADFS or Azure AD is the identity provider (IdP) on the customer side and SAP CPQ is the service provider (SP).

User mapping should be configured on ADFS side and SAP CPQ side.

When SSO is configured, a CRM user will automatically be mapped to a SAP CPQ user after landing from CRM to SAP CPQ and there won't be any need to send the ID of the CRM user in the URL of the SAP CPQ landing page.

Note

All mapping of entities in the two systems should be handled via IronPythin scripting, and not in the SAP CPQ Setup.

Note

If you are using custom scripts to integrate with MS Dynamics, have in mind that you must first configure the general CRM settings and create an administrative account in SAP CPQ. Without these settings, you will see errors in the Log and the integration won't work properly.

Note

No actions are executed by default when landing from MS Dynamics CRM to the SAP CPQ quote.

CRM Setup
To start administering MS CRM, you need to have an administrative account. Log in using administrative credentials and then go to Settings and click Customizations. On the next screen, click Customize the System. A list of components is displayed. The first step is to create a new entity called CPQ_Quote.
Step 1: Create CPQ_Quote entity
Among components from the left pane, select Entities and click New. This brings screen with the form to define Entity. Fill the form as instructed:

Field name

	

Field value

	

Note




Display Name

	

CPQ Quote




Plural Name

	

CPQ Quotes




Name

	

new_cpqquote

	

This field is auto-populated




Areas that display this entity

	

Sales

Click Save and navigate to Fields item under the CPQ Quote entity menu in the left pane. This brings screen where you should add fields that are required for the integration as instructed:

Display Name

	

Data Type

	

Field Type

	

Format

	

Maximum Length

	

IME Mode

	

Target Record Type




CPQ Quote

	

Primary Key

	 


Name

	

Single Line of Text

	

Simple

	

Text

	

100

	

auto

	 


Opportunity

	

Lookup

	 	

Opportunity




Link To Quote

	

Single Line of Text

	

Simple

	

Text

	

100

	

auto

	 
Step 2: Customize Opportunity form
The next step is to customize the Opportunity form the way it displays the list of related SAP CPQ Quotes. To do so, select Opportunity from list of entities and click Forms (in the left pane). From the list of active forms that are displayed in the right pane, click form named Opportunity to edit it. Note that you should edit the Opportunity form that has type Main, not the form that has type Quick Create. Form for adding new tab is displayed. Click on INSERT tab at the top menu, then click on One Column. New tab is created with its default name Tab. Double click on Tab label to open Tab Properties dialog box. Here you can change label from its default value - Tab to Opportunity Quotes. Fill out form fields Name and Label, and click OK. Locate your renamed tab Opportunity Quotes and point mouse cursor over the section inside the tab, then click on Sub-Grid menu item from main menu at the top of the page. Sub-Grid properties window is displayed. Fill out form fields as described:

Field name

	

Field value

	

Note




Name

	

CPQ Quotes

	 


Records

	

Only Related Records

	 


Entity

	

CPQ Quotes (Opportunity)

	 


Label

	

CPQ Quotes (Opportunity)

	

This field is auto-populated, when you select Entity.

Leave the rest of the options as they are, then save the form and publish customizations. You are done with customizing the Opportunity form to display SAP CPQ Quotes. In the next step, you will create action that will be used to create new SAP CPQ Quotes.
Step 3: New CPQ Quote
In this section, we will describe the procedure to create a button that will be used to authorize the MS Dynamics user to open SAP CPQSAP CPQ catalog, browse it and add products to the SAP CPQ Quote. This quote will be connected to your MS Dynamics Opportunity you are currently working on.

Go to Settings  Customizations  Customize the System.

Locate the Opportunity entity at the left pane, then click on Forms submenu, then click on Opportunity (Main) form to edit it.

New page for editing the form is displayed. Locate the Opportunity Quotes area and click on to activate it, then click on tab INSERT at the top menu, and finally click Web Resource.

Add Web Resource dialog box is open. Click on Search icon and then click on Look up More Records.

New dialog box Look Up Record is open. Click New.

New dialog box for adding new Web Resource is open. Fill out fields as instructed.

Field name

	

Field value

	

Note




Name

	

CreateCpqQuote

	

new_ is prepended automatically




Display name

	

Create CPQ Quote

	 


Type

	

Webpage (HTML)

Click Text Editor button to open text editor. Click on Source tab to open it. Copy and paste code provided below and then click OK.



<html><head>
    <title>Create CPQ Quote</title>
    <meta>
    <script type="text/javascript">
        function NewQuote() {
            var entity = window.parent.Xrm.Page.data.entity;
            var id = entity.getId();
            var name = entity.attributes.get("name").getValue();
            var extraqs = "new_opportunity=" + id + "&new_opportunityname=" + name;            
            window.top.location.href = "https://sap600.crm.dynamics.com/main.aspx?etn=new_cpqquote&pagetype=entityrecord&extraqs=" + encodeURIComponent(extraqs);
        }
    </script>
<meta><meta></head>
<body style="word-wrap: break-word;">
    <input type="button" value="Create CPQ Quote" onclick="NewQuote();">
</body></html>

Web Resource details are displayed in the dialog box.

You are done with creating Web Resource. Click OK. Web Resource appears in Opportunity Quotes section. Save Opportunity form, Publish customizations and refresh Opportunity page.

Step 4: Customize SAP CPQ Quote form
Now, we are going to edit SAP CPQ Quote form in order to display SAP CPQ Catalog. To do so, follow next steps.

Go to Settings  Customizations  Customize the System.

Locate the CPQ Quote entity at the left pane, then click on Forms submenu, then click on Information (Main) form to edit it.

Click on INSERT tab, then select area in section CPQ Quote, click One Column and finally click IFRAME button.

Dialog box for adding new Iframe is displayed.

Under General tab fill out the required fields as instructed below.

Field name

	

Field value

	

Note




Name

	

CPQ

	

iframe_ is prepended automatically




URL

	

https://yourdomain.cpq.cloud.sap/MsCrm/Login.aspx?opportunityId=value&quoteNumber=value&action=value

	

opportunityId is the ID of the Opportunity object in CRM. quoteNumber is the composite number of the CPQ quote. Quote composite number can be sent in clear text or masked, using 0xFF XOR mask. action is the quote action. It can take values new, edit or view. new should be used for creating a new quote object. edit should be used for editing an existing quote, and view should be used to access the quote in the read-only mode.




Label

	

CPQ

	 
Under Formatting tab fill out field as instructed:

Field name

	

Field value

	

Note




Number of Rows

	

35

Save changes.

Now, we must add an event that will dynamically set IFrame URL depending on the action triggered. There are two possible actions - new and edit. To do so, follow next steps.

Go to Settings  Customizations  Customize the System.

Locate the CPQ Quote entity at the left pane, then click on Forms submenu, then click on Information (Main) form to edit it.

Under HOME tab click on Form Properties. Form Properties dialog box is displayed.

Click Add under Form Libraries area. This opens another dialog box - Web Resource, where you add new Resource (Form Library). To do so, click New.

This opens a dialog box where you define new Script (JavaScript). Fill out fields as instructed:

Field name

	

Field value

	

Note




Name

	

SetUrlForCpqQuote

	

new_ is prepended automatically




Type

	

Script (JScript)

	

new_ is prepended automatically

Click Text Editor to paste JavaScript code that is provided below into the Script editor. Note that the only thing you should modify in the script is SAP CPQ domain name.


function SetUrlForCpqQuote() {
    opp = Xrm.Page.data.entity.attributes.get("new_opportunity").getValue();   
    var userId = Xrm.Page.context.getUserId();
    var oppId = opp[0].id;
    var newquoteurl = "https://yourdomain.cpq.cloud.sap/sso/mscrm.aspx?domain_name=sap&userId="+userId+"&typename=opportunity&id="+oppId;
    linktoquote = Xrm.Page.data.entity.attributes.get("new_linktoquote").getValue();
    var IFrame = Xrm.Page.ui.controls.get("IFRAME_CPQ");


    if (linktoquote) {
        IFrame.setSrc(linktoquote);
    } else {
        IFrame.setSrc(newquoteurl);
    }
}



Click OK.

Now you can add the Form Library you have just created. To do so, while you are in Form Properties dialog box, click Add under Form Library area, then search for the library and click Add.

Now, add new Event Handler by clicking on Add under Event Handler area.

This opens a new dialog box - Handler Properties. In this dialog enter name of the function (SetUrlForCpqQuote)

Step 5: Navigating back to Opportunity
You can navigate back to the Opportunity form by clicking on Recently Viewed Items from top navigation bar, but the more convenient way is to click on button. This button must be added as a Web Resource first. Follow next steps to create it.

Go to Settings  Customizations  Customize the System.

Locate the CPQ Quote entity at the left pane, then click on Forms submenu, then click on Information (Main) form to edit it.

On next screen, navigate to the INSERT tab, then select area in section CPQ Quote, and finally click Web Resource button.

Add Web Resource dialog box is open. Click on Search icon and then click on Look up More Records.

New dialog box - Look Up Record is open. Click New.

New dialog box for adding new Web Resource is open. Fill out fields as instructed:

Field name

	

Field value

	

Note




Name

	

BackToOpportunity

	

new_ is prepended automatically




Display Name

	

BackToOpportunity

	 


Type

	

Webpage (HTML)

	 
Click Text Editor button to open text editor. Click on Source tab to open it. Copy and paste code provided here and then click OK.


<html><head>
    <title>Back to Opportunity</title>
    <meta>
    <script type="text/javascript">
        function BackToOpportunity() {
            var opp = window.parent.Xrm.Page.data.entity.attributes.get("new_opportunity").getValue();
            var oppId = opp[0].id;
            window.top.location.href = "https://sap600.crm.dynamics.com/main.aspx?etn=opportunity&pagetype=entityrecord&id=" + oppId;
        }
    </script>
    <meta>
<meta></head>
<body style="word-wrap: break-word;">
    <input type="button" value="Back to Opportunity" onclick="BackToOpportunity();">
</body></html>

Web Resource details are displayed in the dialog box. You are done with creating Web Resource. ClickOK. Web Resource appears in Opportunity Quotes section.

Save SAP CPQ Quote form and publish customizations.

SAP CPQ Setup
Step 1: Define general parameters

Beside CRM, you must do some setup steps on SAP CPQ side too. This portion of text describes in detail what you should set in order to make your CRM - SAP CPQ integration operable.

Log into your SAP CPQ domain and go to Setup  CRM Integration  General. Under CPQ is integrated with drop-down list choose Microsoft CRM.

Under CRM Webservice Discovery URL enter:

For CRM Online customers:

For North America: https://dev.crm.dynamics.com/MSCRMServices/2007/Passport/CrmDiscoveryService.asmx

For EMEA: https://dev.crm4.dynamics.com/MSCRMServices/2007/Passport/CrmDiscoveryService.asmx

For APAC: https://dev.crm5.dynamics.com/MSCRMServices/2007/Passport/CrmDiscoveryService.asmx

For CRM On-premise customers:

If you are using SPLA authentication: https://{yourservername}/MSCRMServices/2007/SPLA/CrmDiscoveryService.asmx

If you are using Passport authentication : https://{yourservername}/MSCRMServices/2007/Passport/CrmDiscoveryService.asmx

If you are using Active Directory authentication : https://{yourservername}/MSCRMServices/2007/AD/CrmDiscoveryService.asmx

Under Your company name in CRM, enter your company name.

Under Domain name (enter if using Active Directory), enter your domain name only if you are using Active Directory.

Under Organization URI enter: https://{YourCompanyName}.crm.dynamics.com/XRMServices/2011/Organization.svc

Under Endpoint type enter LiveId

Step 2: Define an administrative account
Now you must define an administrative account. To do so, follow next steps.

Go to Setup   CRM Integration  CRM Administrator Account.

Click Add New to create a new administrator account

In the displayed form, choose Microsoft CRM under CRM Name, then fill out other fields based on your data and needs and click Save.

Step 3: Define custom actions
New custom actions should be defined to provide a way to update opportunity in CRM through SAP CPQSAP CPQ, and to move the opportunity from one stage to another. Custom actions are programmed using Iron Python. Follow next steps to add new custom action.

Go to Setup   Develop Develop   Custom Actions.

Click Add New fill out the form with necessary data (action name, action image, placement…)

A list of custom actions, developed using Iron Python, can be found on this link: Custom Actions.

Step 4: Set Workflow and Workflow permission

The last step is dependent on your model and it assumes that you must set Workflow permission for users or user types as desired, and set Workflow transitions. To find more details on how to do this, check this link: Workflow Permissions.

Related Information
MS Dynamics CRM (2011 version) and SAP CPQ Integration Instructions
Dynamics CRM Integration Instructions for MS CRM 4.0
On this page
Prerequisites
CRM Setup
Step 1: Create CPQ_Quote entity
Step 2: Customize Opportunity form
Step 3: New CPQ Quote
Step 5: Navigating back to Opportunity
SAP CPQ Setup
Related Information
Yes
No