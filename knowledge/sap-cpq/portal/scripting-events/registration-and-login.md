# Registration and Login | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/20050abce2364aa8a9576b7fed80ee0e.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Scripting Events, Properties and Event PipelineVersion: 2603English
Provide feedback on our search

	
Introduction
	
SAP CPQ script plugin


	
Registration and Login
	
User Scenarios
	
Script Plugin Troubleshooting
	
Alternatives to CLR Module Import
	
Common properties
	
Iron Python Events
	
How-to Examples
	
Event Pipeline in Quote 1.0
	
Event Pipeline in Quote 2.0
	
Script Performance
Registration and Login
Registration

Prior to registration, you need to install Microsoft Visual Studio Code and the SAP CPQ script plugin. The plugin can be downloaded from the Microsoft Marketplace.

Folow the steps below to register into the SAP CPQ script plugin.

Open the browser and log into SAP CPQ.

Navigate to Setup  Trusted Applications.

Click Add New  Add  SAP CPQ script plugin.

Click Save.

Configure SAP CPQ Environment

To configure the environment, follow the steps below:

Select Add new environment from the environment dropdown.

Provide a meaningful name to the configuration.

In the Environment URL, give the SAP CPQ host URL that you have used in the registration steps.
Note

In case of a single sign-on append the SAP CPQ host URL with the federation IDP ID.

Example: If your SAP CPQ host URL is http://cpq.com, the federation IDP ID is default, and the URL format is <URL>/fed/<IDP_ID>, the SSO/federation Environment URL is “http: //cpq.com/fed/default”.

Copy the client ID and client secret from the SAP CPQ trusted application page and paste the ID in the Client ID and Client secret fields.

Note

You can also update and delete the configuration.

Workspace Setup
To work on global script via the SAP CPQ script plugin, you should create a folder in your local system.
Note

When you open or close any folder in the visual studio code, it reloads itself. This will log you out t if you open or close the visual studio code.

Login

Follow the steps below to login to the SAP CPQ script plugin.

Click the SAP CPQ plugin icon.

Go to the login section.

Select the configuration.

Click Login.

Click Open to trust the request in the visual studio code. SAP CPQ will open in the browser.

Provide the username and password.
Note

If you don’t want this message to appear again, you can click Configure Trusted Domain and select the configuration.

Click Open Visual Studio Code.

Click Open to trust the request from the SAP CPQ browser to the visual studio code.

There are two views of the SAP CPQ script plugin from VS code.

Explorer view: You can navigate to this view from the Sidebar  Explorer.

SAP CPQ Plugin View: You can navigate to this view from the Sidebar  SAP CPQ.

Open Iron Python Script

Follow the steps below to open the Iron Python script.

Click the explorer view.

Click the Python script file. The file will open in the editor mode.

Logout

Follow the steps below to logout from the SAP CPQ script plugin.

Go to the user profile panel.

Click Logout.

Related Information
SAP CPQ script plugin
User Scenarios
Script Plugin Troubleshooting
On this page
Registration
Configure SAP CPQ Environment
Workspace Setup
Login
Open Iron Python Script
Logout
Related Information
Yes
No