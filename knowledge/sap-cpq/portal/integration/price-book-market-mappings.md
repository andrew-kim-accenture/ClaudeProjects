# Price Book Market Mappings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/b6a909e97ac7432fa4d4fef883c2bfc5.html?locale=en-US&state=PRODUCTION&version=2603
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
	
CRM Integration


	
General
	
CRM Objects
	
Custom Fields Mapping
	
Customer Roles Mapping
	
Partner Functions Mapping
	
Opportunity Status
	
CRM Item Mappings
	
Price Book Market Mappings
	
User Mappings
	
CRM Quote
	
CRM Administrator Account
	
Send Document To CRM
	
New Authentication method for COD integration
Price Book Market Mappings

This section determines what SAP CPQSAP CPQ market to apply to products coming from a CRM pricebook.

This helps to determine what currency is being used and how to calculate the price of the product. In addition, when an opportunity is created the product included in the shopping cart is automatically created, if it doesn’t already exist, and placed into the correct price book on the CRM application.

To create a new mapping, click Add New. On the market price book mapping definition page, select the SAP CPQ market from the Market Name field. Select the CRM Price Book ID by clicking CRM Lookup and selecting the desired Price Book.

Note

The integration is case sensitive. Use CRM Lookup to select CRM Fields.

Once the price book mappings are defined, the correct price book will be chosen during an opportunity creation and update. There are four different scenarios possible during price book mappings:

Starting in CRM and creating a new quote in CPQ | The price book chosen for the opportunity will automatically select the SAP CPQ market based on the mappings.

Starting in CRM and opening an existing quote in CPQ | The price book chosen for the opportunity will automatically select the SAP CPQ market based on the mappings. This could potentially change the SAP CPQ market if the opportunity’s price book has changed since the last time the Create/Update Opportunity action was performed.

Starting in CPQ and creating a new opportunity in CRM | The price book is chosen based on the mappings with the selected SAP CPQ market for the quote.

Starting in CPQ and updating an existing opportunity in CRM | The price book is chosen based on the mappings with the selected SAP CPQ market for the quote. This could potentially change the price book if it had been changed by a user outside of a SAP CPQ Create/Update Opportunity action.

Note

An opportunities price book will be changed if a user comes from the CRM to an existing quote, changes the market (which has been selected based on the price book), then performs the Create/Update Opportunity action.

Yes
No