# Adding Items | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/72471f3ba32a4e8c9ab9d3f35d1b7c12.html?locale=en-US&state=PRODUCTION&version=2603
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
Adding Items

The integrated SAP Sales Cloud - SAP CPQ environment supports simple products. Firstly, the products need to be created in SAP ERP and then replicated in SAP CPQ and SAP Sales Cloud.

Unit of Measure
The Unit of Measure Code is used only to validate that the products have the same unit of measure. If they differ, a warning message (Product with material id MaterialId could not be added. Unit of measure does not match.) will be displayed on the SAP CPQ quote and the product will not be added. This is a standard field on SAP products, maps to the Base Unit of Measure in sales quotes.
Item Custom fields

If an item custom field is in the invalid format, an appropriate error message will be displayed to users and the SAP CPQ quote will not be created. If an item custom field cannot be found, the SAP CPQ quote will be created and a warning message will be displayed to the user: Quote item custom field FieldName could not be set. Quote item custom field could not be found. All other properties will be created and populated properly.

When SAP CPQ attempts to map values received from SAP Sales Cloud to custom fields or quote item custom fields in the form of autocomplete attributes, the value received from SAP Sales Cloud is matched with the value of the column defined as Value Code in the definition of the autocomplete attribute in the related quote table or custom table. The autocomplete attribute is only populated if one matching row is found. If multiple rows are found, or if no matching rows are found, the attribute is not populated and an error message is displayed.

ExternalCartItem
Maps to Item ID - the sales quote item ID is preserved in SAP CPQ and forwarded to SAP ERP.
ProductSystemId

Maps to Material ID in SAP Sales Cloud. ProductSystemId is used when finding product to add in SAP CPQ. If an empty ProductSystemId is given, such products will be ignored. Products are added to SAP CPQ according to SAP CPQ rules.

If a user does not have permission to add items, the SAP CPQ quote will not be created and an error message will be displayed: User is not allowed to add items to quote.

Depending on the reasons why users cannot add products to quotes, warning messages will display accordingly:

Product must exist and must be visible to the user: Product with material id MaterialId could not be added. Product is not found.

Product must not be replaced or discontinued: Product with material id MaterialId could not be added. Product is replaced or discontinued.

Product must be simple or with a complete configuration: Product with material id MaterialId could not be added. Product configuration is not complete.

Simple product part number must exist in selected pricebook (if that rule is enforced in SAP CPQ Setup): Product with material id MaterialId could not be added. Product does not exist in pricebook.

Related Information
User Journey from SAP Sales Cloud to SAP CPQ for Quote 1.0
Customers
Field Mapping
Updates and Status Change
Payloads for Quote Creation and Quote Synchronization in SAP Sales Cloud
On this page
Unit of Measure
Item Custom fields
ExternalCartItem
ProductSystemId
Related Information
Yes
No