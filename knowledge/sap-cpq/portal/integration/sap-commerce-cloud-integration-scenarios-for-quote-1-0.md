# SAP Commerce Cloud Integration Scenarios for Quote 1.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/9313f26572b14026849b4fbf41b867c1.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems
	
SAP Sales Cloud Integration
	
SAP Commerce Cloud Integration


	
SAP Commerce Cloud Integration for Quote 1.0


	
Prerequisites for SAP Commerce Cloud Integration for Quote 1.0
	
Integrate SAP CPQ Quote 1.0 with SAP Commerce Cloud
	
SAP Commerce Cloud Integration Scenarios for Quote 1.0
	
SAP Commerce Cloud Integration for Quote 2.0
	
SAP Subscription Billing Integration for Quote 2.0
	
Integration with SAP Master Data Integration
	
Identity Provisioning Service Integration
	
CX AI Integration
	
Integration with Central Entry Point
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
SAP Commerce Cloud Integration Scenarios for Quote 1.0

Depending on where the user journey starts, there are two use case scenarios: users can begin their journey from SAP Commerce Cloud, or from SAP CPQ.

Scenario 1: Sending a request for quotation from SAP Commerce Cloud
In this scenario, SAP Commerce Cloud is the starting point. The user flow is described below.

User sends a request for quotation.

A user (B2B customer) first creates a quote in SAP Commerce Cloud and decides to ask for a discount or a promotional product by entering a comment in the quote header or on the item level. The quote from SAP Commerce Cloud is then sent to the Request for Quotation SOAP API over SAP Cloud Integration as an XML payload, and the External Quote Status custom field is set to BUYER_SUBMITTED. In SAP CPQ, a new quote is created. The products, price details and comment on the quote are the same as in SAP Commerce Cloud. The newly created quote is in the Preparing status. Additionally, customers sent from SAP Commerce Cloud will be either created (if their customer ID does not exist) or updated in SAP CPQ as Bill-to customers. SAP CPQ then sends the previously created notification about the request for quotation to sales representatives.
Note

SAP CPQ considers SAP ERP or SAP Commerce Cloud the master of the customer data. Global customer data is updated with the data arriving from those systems, because SAP CPQSAP CPQ may not have up-to-date customer data from the back end. The existing customer data in SAP CPQ is considered not relevant for the request for quotation scenario.

Sales representative reviews the request for quotation.

Sales representative receives the notification about the request for quotation and clicks the link in the email. Upon landing on quote from the email, the sales representative first needs to reassign the quote to himself. In addition, the number of comments the user entered is displayed on the Collaboration/Comments button in the top-right corner. After reading the user’s/B2B customer’s comments, the sales representative reviews the request. Additionally, the sales representative decides whether or not to make the required changes (for example, the sales representative decides to apply the requested discount) and notifies the user by replying back to the comments in the Collaboration/Comments section.

Sales representative releases the quote.

After applying the changes and replying back to the customer, the sales representative clicks the Release Quote To SAP Commerce action to send the quote back to SAP Commerce Cloud. The quote is sent to SAP Commerce Cloud over SAP Cloud Integration, and its status is automatically changed to Prepared. Additionally, the External Quote Status custom field is set to Vendor Quote. SAP Commerce Cloud then applies all changes received from SAP CPQ. If the sales representative copies a quote and then releases the copy to SAP Commerce Cloud, a new quote is created in SAP Commerce Cloud based on the copy.

Additionally, in SAP CPQ, the sales representative can also release the quote together with a proposal. SAP Commerce Cloud only supports proposals in PDF format. In this case, when the sales representative clicks the Generate Documents action, a new page displays, enabling the sales representative to also write a message for the user (B2B customer). In order to release the quote with proposal, the sales representative needs to click the Submit to customer button. Upon clicking the button, the XML payload of the quote, the generated proposal and the message (if the sales representative wrote it in the dedicated text field) are sent to SAP Commerce Cloud.

Customer accepts or rejects the quote.

When the user (B2B customer) accepts the quote received from SAP CPQ, SAP Commerce Cloud calls the Perform Cart Action SOAP API and changes the quote status to Customer Accepted. In addition, the External Quote Status custom field is set to Ordered. The order is placed in SAP ERP and the SAP ERP sales order ID is saved on the quote in SAP CPQ. Apart from accepting the quote in SAP Commerce Cloud, the user can either edit or reject the quote.

In case the user edits the quote received from SAP CPQ (for example, the user modifies the additional discount) and sends a new request for quotation for the same quote in SAP Commerce Cloud, a new quote revision, together with all data from the request for quotation, will be created in SAP CPQ. The revision will be automatically active. If the user rejects the quote received from SAP CPQ, the Perform Cart Action SOAP API is called, and the quote status is changed to Customer Rejected. Also, the External Quote Status custom field is set to CANCELLED. If there are any comments either on the quote header or item level, they are also sent. After rejecting the quote, the user needs to send a new request for quotation from SAP Commerce Cloud, which will create a new quote in SAP CPQSAP CPQ.

Scenario 2: Creating Quote in SAP CPQ
In this scenario, SAP CPQ is the starting point. The flow is the same as in the scenario where the user journey starts from SAP Commerce Cloud. The only difference is that the user (B2B customer) and the sales representative first speak on the phone, and then the sales representative creates a quote in SAP CPQ based on the information the user provided.
Related Information
Prerequisites for SAP Commerce Cloud Integration for Quote 1.0
Integrate SAP CPQ Quote 1.0 with SAP Commerce Cloud
On this page
Scenario 1: Sending a request for quotation from SAP Commerce Cloud
Scenario 2: Creating Quote in SAP CPQ
Related Information
Yes
No