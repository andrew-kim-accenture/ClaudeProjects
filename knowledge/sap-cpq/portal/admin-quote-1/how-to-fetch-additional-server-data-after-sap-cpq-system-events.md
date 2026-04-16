# How to Fetch Additional Server Data After SAP CPQ System Events | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/e9f0d7e8510945688aea7c54fedf1b63.html#example-2:-fetch-server-data-after-executing-a-custom-quote-action
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

	
Branding
	
Catalog Layout
	
Quote Layout
	
Responsive Templates


	
Responsive Template Customization in Setup
	
Responsive Design Customizations


	
Prerequisites
	
Knockout Extension Functions
	
Customization Examples
	
Advanced Customization Examples


	
CPQ Global Variable
	
WorkflowContext ClientData Rendering
	
How to Display Key Attributes on Custom Tab
	
Fetching Additional Data from Server


	
How to Fetch Additional Server Data After SAP CPQ System Events
	
How to Download XML File
	
Server Side Rendering
	
Manage Custom CSS/JS Files with File Manager
	
Upgrade Templates to Newer Versions with Newer Releases
	
Template Versions
	
Freeze Templates
	
Obsolete Features
	
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
How to Fetch Additional Server Data After SAP CPQ System Events

The following events are the most important, currently available SAP CPQ events, to which users can freely subcribe through user interface templates and fetch server data. Each event returns different data, based on the model that is created.

Event Name

	

Description




API:approvalHistory:updated

	

Event executes when approval history page is initialized/created




API:approvals:updated

	

Event executes when approval page is initialized/created or updated




API:QuoteActions.afterActionExecution

	

Event executes after quote action is executed




API:cartDocuments:updated

	

Event executes when cart documents page is initialized/created, or cart attachment is refreshed




API:lineItems:AddCollaborationComment

	

Event executes when collaboration dialog is opened




API:cart:updated

	

Event executes when cart page is initialized/created or updated




API:customFields:updated

	

Event executes when custom fields page/section is initialized/created or updated




API:cartList:updated

	

Event executes when cart list (Quote List) page is initialized/created or updated




API:catalog:updated

	

Event executes when catalog page/section is initialized/created or updated




API:compareProducts:updated

	

Event executes when compare product is initialized, updated or terminated




API:configurator:updated

	

Event executes when configuration page is initialized/created or updated




API:customers:updated

	

Event executes when customers page/section is initialized/created or updated




API:shippingInfo:updated

	

Event executes when shipping info is initialized/created or updated




API:favorites:updated

	

Event executes when favorites page is initialized/created or updated

Note

Before each implementation, you should first see what the returned model looks like, and only afterwards try to fetch the needed data.

Example 1: Get Catalog data whenever Catalog page is updated/initialized

Go to Setup  UI Design  Responsive Templates. Create a new template with name CatalogPageTemplate.

For the Page template, select Catalog, for Template, select CatalogPage.

Set it as a default template and save it.

At the top of the newly created template add the following code:



<script>
        cpq.ready(function() {
        	cpq.events.sub("API:catalog:updated", function(catalogResponse){
                console.log(catalogResponse.model);
     			});
        	});
</script>



After this, go to the Catalog page, inspect the page (press F12), and go to the Console tab. Here, you should see the whole Catalog model and the available information that you can use for your own purposes whenever the Catalog page is updated.

Example 2: Fetch server data after executing a custom quote action

Go to Setup   General  Application Parameters  Shopping Cart and Quotes .

Set the parameter Make quote actions available on all tabs to TRUE.

Make sure that the statuses Open and Preparing are set in the workflow.

Create a custom action, and place the following code:

Quote.ChangeQuoteStatus("Preparing") - for Quote 1.0

context.Quote.ChangeStatus("Preparing") - for Quote 2.0

Add the newly created action to the workflow permission for the appropriate user type and add it to the Workflow setting for the combination of Open → Open statues.

Create or update the responsive template:

Page: Cart

Template: Sections/Tabs

In this template, add the following lines of code:



<script>
        cpq.ready(function() {
        	cpq.events.sub("API:QuoteActions.afterActionExecution", function(actionResponse){
                if (actionResponse.OrderStatusId) {
                    const statusId = actionResponse.OrderStatusId;
                    if (actionResponse.OrderStatuses) {
                        const currentStatus = actionResponse.OrderStatuses.find(status => status.Id == statusId);
            			console.log(currentStatus.Name);
                    	}
                	}
        		});
        	});
</script>



Create a new quote and go to any custom tab (that is not Quotation). When we create a quote, the expectation is that it is created in the Open status.

Open console (press F12 and move to the Console tab) and execute the newly created action.

In the console, you should be able to see the new status name, which you can place anywhere in the user interface template.

On this page
Example 1: Get Catalog data whenever Catalog page is updated/initialized
Example 2: Fetch server data after executing a custom quote action
Yes
No