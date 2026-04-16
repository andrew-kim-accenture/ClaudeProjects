# Field Mapping | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/e9b8751f5e2a4772a9ad40627e0bbbb3.html?locale=en-US&state=PRODUCTION&version=2603
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


	
SAP Sales Cloud Version 2 - SAP Sales Cloud Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 2.0
	
SAP Sales Cloud - SAP CPQ Integration for Quote 1.0


	
General Prerequisites
	
Configuration
	
Ticket Components
	
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0


	
Adding Items
	
Customers
	
Field Mapping
	
Updates and Status Change
	
Placing Order to ERP
	
Payloads for Quote Creation and Quote Synchronization in SAP Sales Cloud
	
SAP Commerce Cloud Integration
	
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
Field Mapping

This topic explains how fields are mapped between a sales quote in SAP Sales Cloud and a quote in SAP CPQ.

Quote ID
The ID of a sales quote is mapped with the quote composite number in SAP CPQ.
Opportunity Id
Contains the ID of the opportunity in SAP Sales Cloud from which the quote in SAP CPQ was created, if any. This field is not editable in SAP CPQ.
Currency, Market and Pricebook

A Distribution Chain Code consists of the Sales Organization Code and the Distribution Channel Code separated by an underscore. The Sales Organization corresponds to the SAP CPQ Market Code and the Distribution Channel corresponds to the same name field on the SAP CPQ pricebook. This exact format must be used, and the underscore can only be used as a separator between the Sales Organization Code and the Distribution Channel Code. The Distribution Chain Code is displayed as a six-character code (excluding the underscore) in pricebooks. An example of the format is: 0001_01. The underscore can't be used inside the Sales Organization Code (Market Code) because the underscore is used as a separator in SAP CPQ. Instead, the format from the example should be used.

The currency contains a currency 3-digit ISO code. The Sales Organization and Currency are used for market determination, and then Distribution Channel is used for pricebook determination.

Market and pricebook resolution is done by respecting SAP CPQ visibility rules for markets and pricebooks. If multiple pricebooks match the criteria, they are sorted by the pricebook level and the one with the highest level (Level 1) is selected.

If the Distribution Chain is empty, the SAP CPQ default market and pricebook will be used, and if the Distribution Chain is provided, but not valid, an error will appear and the CPQ quote will not be created.

The following error messages can appear in connection to the Distribution Chain:

Distribution Chain provided, but currency missing: Currency code is not provided.

Distribution Chain in invalid format: Distribution Chain is not in valid format.

Market not found: Matching market not found for the provided distribution chain and currency.

Pricebook not found: Matching pricebook not found for the provided distribution chain and currency.

Pricebook found, but not available to the current user: Pricebook matching the provided distribution chain and currency is not available.

Consequently, to enable users to create quotes, administrators should make these adjustments in the SAP CPQ Setup:

Create a currency that exists in SAP Sales Cloud.

Create a market with the previously created currency. The market’s code should match the code of the Sales Organization in SAP Sales Cloud.
Note

It is only possible to land from SAP Sales Cloud to the SAP CPQ quote if the same currency is used in both systems.

Create a pricebook in the existing market. Manually enter the Distribution Channel Code on the pricebook. Pricebook entries are replicated via the API from SAP ERP.

Effective Date
ISO formatted date string (YYYY-MM-DD) that is mapped with the Pricing Date in SAP Sales Cloud.
DocumentTypeCode
The quote standard field DocumentTypeCode is a four letters value (for example, ZCPQ) and refers to the quote document type in SAP Sales Cloud. This field is not displayed on the user interface, but it can be fetched via the CTX, as <*CTX( Quote.DocumentTypeCode )*>, and via scripting, as Quote.DocumentTypeCode. This field is not used in SAP CPQ, it is only forwarded to SAP ERP when the Place Order to ERP action is called.
Origin
The field Origin contains the name of the external system if a quote is related with an external quote. For quotes that contain SAP Sales Cloud sales quote reference, the value is C4C-SalesQuote. The field is not visible on the user interface, but it is exposed through scripting as Quote.ExternalQuoteOrigin (retrieves the value of the field).
Cart Comment
Maps to External Note in SAP Sales Cloud. SAP CPQ quote comment has a limit of 3000 characters, and if the received value is longer, it will be truncated.
Custom Fields

PO Number - contains the ID of the external document corresponding to the sales quote, for example, the Order ID from the customer's system. This custom field is editable in SAP CPQ. Maps to External Reference.

Requested Date - contains the requested delivery date connected with the shipping. It is an ISO formatted date string (YYYY-MM-DD). This custom field is editable in SAP CPQ. Maps to Requested Date in SAP Sales Cloud.

Quote Expiration Date - maps to Valid To in SAP Sales Cloud. A custom field in SAP CPQ that already exists on all tenants. It is an ISO formatted date string (YYYY-MM-DD). This custom field is editable in SAP CPQ.

If a custom field is in an invalid format, an appropriate error message will be displayed to the user and the SAP CPQ quote will not be created.

If a custom field cannot be found, the SAP CPQ quote will be created and a warning message will be displayed to the user: Quote custom field FieldName could not be set. Custom field could not be found. All the fields following the custom field that is not created in SAP CPQ (and therefore cannot be mapped) are created and populated properly. When the value for a required SAP CPQ custom field is not sent from SAP Sales Cloud, the quote is created successfully, and all other properties are populated properly. The following message is displayed to the user: Values for the following required SAP CPQ custom fields are not sent from SAP Sales Cloud: (the missing values are listed). 

When SAP CPQ attempts to map values received from SAP Sales Cloud to custom fields or quote item custom fields in the form of autocomplete attributes, the value received from SAP Sales Cloud is matched with the value of the column defined as Value Code in the definition of the autocomplete attribute in the related quote table or custom table. The autocomplete attribute is only populated if one matching row is found. If multiple rows are found, or if no matching rows are found, the attribute is not populated and an error message is displayed.

Additional Discount

Additional discount in SAP CPQ is different from the header discount in SAP Sales Cloud and therefore it is removed from SAP CPQ. The difference is that the additional discount in SAP CPQ is not propagated to items like the discount in SAP Sales Cloud.

However, the discount feature is still enabled in SAP CPQ. Users can add a discount for product types which is then propagated to items. This value is reflected in the Overall Discount Percent field in the Subtotal section on quotes.

Primary Quote Action

If there are multiple quotes assigned to an opportunity, one of them can be marked as primary using the Make Primary action. The Primary Quote field is populated automatically with Yes and it’s read-only. All other quotes assigned to the same opportunity are automatically marked as Not primary.

After triggering the action, the payload for synchronization of the SAP Sales Cloud quote is sent, including the ID of the opportunity, the total value of the quote and the indicator that the quote is made primary.

Related Information
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0
Adding Items
Customers
Updates and Status Change
Payloads for Quote Creation and Quote Synchronization in SAP Sales Cloud
On this page
Quote ID
Opportunity Id
Currency, Market and Pricebook
Effective Date
DocumentTypeCode
Origin
Cart Comment
Custom Fields
View all
Yes
No