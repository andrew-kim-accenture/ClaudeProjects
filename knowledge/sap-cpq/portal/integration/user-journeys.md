# User Journeys | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/646b0706d193487fab750d5bc2b781f6.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Salesforce Integration


	
Configuration in Salesforce and SAP CPQ
	
User Journeys
	
Additional Features
	
CRM Integration
User Journeys

The standard user journeys in the integration between SAP CPQ and Salesforce are described here.

Opportunity-First Approach

The user journey starts with the user working on the opportunity in Salesforce. There, the user defines opportunity-specific information, such as the opportunity name, account name, opportunity type, stage, and closing date. In addition, the user adds partners and contact roles for that opportunity. Once partners and contacts are set, the user clicks Create New Quote in the opportunity. This creates a new quote in SAP CPQ, which is opened in an inline frame, and populated with information that the user had previously specified in the opportunity (Opportunity Name and Opportunity Type fields in the Additional Info tab, Market in the Quotation tab, and standard customer fields in the Customer Information tab are populated with Salesforce information, according to the previously configured mappings). There, the user continues to work on the SAP CPQ quote. Once the user is done working on the quote, they execute the custom action Create/Update Salesforce Opportunity, and the quote object in Salesforce (which is attached to the opportunity) is updated with the information from the SAP CPQ quote. For example, changes made on items in the SAP CPQ quote are replicated to the products in the Salesforce opportunity, or new products are created in Salesforce based on the products added to the SAP CPQ quote. Once the opportunity is updated, the user continues to work in Salesforce. The user can also edit an existing SAP CPQ quote from Salesforce by clicking Edit Quote, in which case the quote is updated with information from the opportunity.

Quote-First Approach

The user journey starts with the user creating a quote directly in SAP CPQ. On the quote, the user specifies the Opportunity Name and Opportunity Type in the Additional Info tab, and selects customers in the Customer Info tab. Once the user is done adding products and working on the quote, they execute the custom action Create/Update Salesforce Opportunity, which creates an opportunity in Salesforce, or updates an existing opportunity if one exists (based on the opportunity name and type). Afterwards, the user can find and open the newly created opportunity in the My Opportunities section in Salesforce. The quote and the products that were added to that quote are now available in the Salesforce opportunity, and the user can continue working in Salesforce.

Document Generation in Salesforce

The user clicks Generate Document in the SAP CPQ quote and completes the document generation process. Afterwards, once the user returns to the quote, they execute the custom action Send Generated Document to Salesforce. The generated document is now also available in the Notes & Attachments section in Salesforce once the page is refreshed. Every time a new document is generated from that quote, it will be added to the Notes & Attachments section in Salesforce after the custom action is executed.

Related Information
Salesforce Integration
Additional Features
On this page
Opportunity-First Approach
Quote-First Approach
Document Generation in Salesforce
Related Information
Yes
No