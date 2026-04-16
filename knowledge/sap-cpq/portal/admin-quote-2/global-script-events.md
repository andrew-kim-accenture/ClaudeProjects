# Global Script Events | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/a7a1571a01ce4cb8ba81618361b1acfd.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop


	
Scripting for Quote 2.0
	
Create a Script
	
Global Script Events
	
Custom Actions
	
Custom Calculations
	
Script Workbench
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Global Script Events

Global script events are events that happen on quotes. The events trigger the scripts attached to them to be executed in the system.

Global Script Events

Event name

	

Subevent name

	

Execution time description

	

Available in Quote 1.0

	

Available in Quote 2.0




Quote creation/edit

	

Quote creation

	

Immediately after a quote is created

	

Yes

	

Yes




Quote edit

	

After the action Edit quote is executed.

	

Yes

	

Yes




Custom fields calculation

	

Before custom fields calculation

	

Before the formula is calculated.

	

Yes

	

No




After custom fields calculation

	

After the formula is calculated.

	

Yes

	

No




Before adding products to quote

	

Before adding products to quote

	

Just before a product is added to quote items.

	

No

	

Yes




Before updating products in quote

	

Just before a quote item is updated from the quote.

	

No

	

Yes




After adding products to quote

	

After adding products to quote

	

Each time an item is added. If several items are added at once (from catalog or through adding items in bulk), the scripts are executed after the last item (not after each item is added).

	

Yes

	

Yes




After updating products in quote

	

After a user finishes editing a product in the quote.

	

Yes

	

Yes




After copying products in quote

	

After a user copies a product in the quote.

	

Yes

	

Yes




After deleting products from quote

	

After a user deletes an item in the quote. If several items are deleted at once, the scripts are executed after all items are deleted.

	

Yes

	

Yes




After changing the value of custom fields

	

/

	

When a particular custom field is changed. For events that are triggered when a custom field is altered, you are able to select the custom field from the system.

	

Yes

	

Yes




On CRM Item Mappings

	

/

	

When sending items from SAP CPQ to Salesforce. Applicable only when SAP CPQ is integrated with Salesforce.

	

Yes

	

Yes




On user Login

	

/

	

When users log into SAP CPQ.

	

Yes

	

Yes




Every time quote is changed

	

/

	

After each change on the quote that affects the Date Modified field.

	

Yes

	

No




When a user is on quotation tab

	

/

	

When a user is on a particular tab in the quote. As soon as a user clicks on the particular tab, SAP CPQ executes the scripts specified for the tab. When the user clicks Save on this tab, the scripts specified for the tab are executed. The event is executed in the following tabs: Additional Info, Customer Info, Documents, Quotation and Quotation.

	

Yes

	

Yes




When quote layout is rendered

	

/

	

When the customization related to the layout of the quote (modify XML and add additional data) that cannot be accomplished with simple changes to quote XSLT is performed. The event is deprecated in the new SAP CPQ layout.

	

Yes

	

No




When catalog layout is rendered

	

On product xml serialization start

	

Before the xml serialization starts.

	

Yes

	

No


 	

On product xml serialization end

	

When the xml serialization finishes.

	

Yes

	

No




On Arrive From CRM

	

On Customer Mappings

	

When creating and assigning customers to quotes.

	

Yes

	

No




On Quote Fields Mappings

	

When retrieving different quote fields from CRM.

	

Yes

	

No




On Landing From CRM

	

/

	

Chronologically, happens before arriving from CRM and after the authentication handshake. This event has the request context.

	

Yes

	

No




On Asset Created

	

/

	

After the action Create Assets is triggered.

	

Yes

	

No




On customer change

	

On Customer Bill To changed

	

When the Bill To, Ship To and End User customers are changed.

	

Yes

	

No




On Customer Ship To changed




On Customer End User changed




Document sent to customer/business partner

	

/

	

In the last step of the Document Generation process. Administrators can define a script that changes the status of the quote to Sent to Customer.

	

Yes

	

Yes




On Quote Tab Changed

	

/

	

When moving to a quote tab (e.g. a script can be executed to create a quote table in the current tab).

	

Yes

	

Yes




Before Quote Rendering

	

/

	

Every time a user makes any change on a quote. For example, if the visibility of a custom field is set in a script, administrators can attach that script to this new event. That way, they make sure the field is always visible, regardless of the changes that users make on the quote.

	

Yes

	

Yes




On Involved Parties Changed

	

/

	

When an involved party is added, updated and deleted either in the application, or using scripting, or via the API .

	

No

	

Yes




When Excel is uploaded into a Quote Table

	

/

	

When users upload an Excel file to a quote table.

	

Yes

	

Yes




On Changing Standard Quote Fields

	

On Market Change

	

After changing the market of a quote.

Each change of market also changes the pricebook, but the event On Pricebook Change is not triggered.

	

No

	

Yes




On Pricebook Change

	

After changing the pricebook of a quote.




On Effective Change

	

After changing the effective date of a quote.

Note

A more detailed documentation for scripting is available on the dedicated Scripting page.

Yes
No