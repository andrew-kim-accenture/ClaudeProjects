# Product Configuration Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/05aeaf9798214e2399491eaa5a1b1fd8.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design


	Setup Help
	
Obsolete Features


	
Top Menu
	
Custom Category UI
	
Product Configuration Templates
	
Product Details Templates
	
Products to Product Details Templates Mappings
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Product Configuration Templates

Product Configuration Templates provide you much flexibility in customizing the layout of the configuration screen.

There are templates available to modifying the look of the Configurator, Responder, tabs, steps, and the page. Product Configuration Templates administration can be accessed by selecting the Product Configuration Templates link under the UI Design dropdown. From here user can add, delete, edit, or copy Templates.

To add a new template, click Add New. Template Name is the only required field. This is because any XSLT files that aren’t defined here are defaulted to what is set in the Application Parameters administrative section. Any files set here override the default.

The template needs to be named something that is relative to the product or category. The template description can be provided if further clarification is needed. If the template checkbox is checked,Guided Selling Template then that template only appears when editing Guided Selling.

Also, Guided Selling product responder is different than the normal products responder, and default GuidedSellingSearch.xsl responder needs to be selected for Guided Selling templates.

There are five sections of the configuration page that user can set templates for (default files are in parentheses):

Tabs - defines the look of the tab area on the page (DefaultTabs.xsl)

Configurator - defines the look of the configuration section of the page (DefaultConfigurator.xsl)

Steps - defines the area to the left of the configuration section (DefaultSteps.xsl)

Responder - defines the responder area where the configuration summary is given (DefaultResponder.xsl)

Page - defines the layout of the screen. Here you’re able to control where each section is positioned on the page. (DefaultPage.xsl)

User can upload a new file with the Upload button or download existing files by selecting the file from the dropdown and clicking the Download button. Additionally, you can delete files by selecting a file from the dropdown and clicking the Delete button.

Once all information is filled in and completed, clicking the Save button saves the template and add it to the list of Templates.

Yes
No