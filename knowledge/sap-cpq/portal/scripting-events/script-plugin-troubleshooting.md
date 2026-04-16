# Script Plugin Troubleshooting | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/f1364e454e66465cbb4604b341656b3c.html?locale=en-US&state=PRODUCTION&version=2603
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
Script Plugin Troubleshooting

Here you can view some typical issues that may occur while using the script plugin, in addition to instructions on how to resolve them.

User Permission Error on Login

If the following error message displays: User authentication failed. User should be admin with permission to access Global Script API's, it means that a user who doesn't have the permissions for accessing the Global Scripts APIs is attempting to log in to SAP CPQ via the SAP CPQ script plugin. You can resolve this issue by contacting your tenant administrator for access.

Invalid Client ID Error on Login

In this scenario, you registered the SAP CPQ script plugin in the SAP CPQ Trusted Applications in the domain name D1 (for example), copied the client ID and secret, and afterwards pasted them in the plugin. Following this, if you attempted to login, you would get the following error message in case there is a user login in your browser with a different domain name from the one you used: Invalid 'client_id' is provided. ReferenceId:[ID].

Extension View/Change View Panel Not Showing Newly Created Script

If this situation occurs, please check .py file location/path and make sure it’s created under the GlobalScripts folder. If the .py file location is not correct, then move the .py file to the GlobalScripts folder and try again as explained here.

Related Information
SAP CPQ script plugin
Registration and Login
User Scenarios
Yes
No