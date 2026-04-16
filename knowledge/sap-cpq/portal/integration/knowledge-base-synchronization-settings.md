# Knowledge Base Synchronization Settings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/f8783b064a1d46be8804e45148560ee6.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems


	
SAP ERP Integration for Quote 1.0
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
Variant Configuration Integration


	
Introduction to the Variant Configuration Integration
	
Integrate SAP CPQ with SAP Variant Configuration and Pricing


	
Knowledge Base Synchronization Settings
	
General Settings
	
Define SAP General Attribute Mappings
	
Knowledge Base Diagnostics
	
Technical Overview
	
Pricing
	
SAP Variant Configuration and Pricing Log
	
SAP Sales Cloud Integration
	
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
Knowledge Base Synchronization Settings

In the Knowledge Base Synchronization Settings tab in Setup  Providers  Providers  SAP  SAP Variant Configuration and Pricing, you can set up the knowledge base synchronization language and translations, the source for product layouts, configuration types, and attribute display types, the notification recipient email address, as well as the daily execution start time.

Enable Daily Knowledge Base Synchronization - if enabled, daily knowledge base synchronization jobs are automatically executed at the specified time. If this option is disabled, knowledge base synchronization can be performed only manually.

Daily Execution Start Time (UTC) - a 24-hour time format used to schedule knowledge base synchronization on a daily basis. We recommend that you select non-business hours.

Notification Recipient Email - the email address to which notifications about knowledge base synchronization failure are sent. The notification contains problematic knowledge bases and diagnostic details. The notification can be sent to multiple recipients.

Translations

Knowledge Base Synchronization Language - the default languages used during knowledge base synchronization. Knowledge base details such as product name, product description and attribute data are retrieved in the specified languages. Administrators who maintain translations for their models in SAP Variant Configuration and Pricing can synchronize these translations with the products in SAP CPQ thanks to this feature. Every time knowledge base synchronization is executed, translations for the specified languages are synchronized for all products and product versions obtained via that specific knowledge base synchronization. Languages can be specified by using two-letter ISO language codes (for example EN, DE). However, before languages can be specified on this page, language ISO codes need to be defined for individual dictionaries. If the knowledge base synchronization language is not provided, translations are not synchronized.

Add Translations for Synchronized Products - when this option is enabled, during the next knowledge base synchronization, translations for all languages specified in the field above are added both for products obtained via the ongoing synchronization, and for products that were obtained via previous synchronizations. Once the translations are synchronized retroactively in this manner, the toggle switch is automatically disabled.

Translations obtained via knowledge base synchronization behave in the following manner:

If a translation is not successfully synchronized for one product, it does not affect the synchronization of translations for other products.

If knowledge base synchronization is successful, but a translation is not successfully synchronized for one product, only the product that did not synchronize successfully is synchronized again during the following job.

If knowledge base synchronization is not successful, no translations are synchronized.

Translations for tab names are synchronized during the initial knowledge base synchronization. In every subsequent job, new translations are only added for the tab names that are already synchronized. Translations are not synchronized for the names of any new tabs that were subsequently added.

Note

When actions which are not related to knowledge base synchronization are executed in SAP CPQ and the resulting changes are sent via API to SAP Variant Configuration and Pricing, the language selected by the user is passed in the header of the API request. When the same process occurs with actions related to knowledge base synchronization, English is inserted before the other languages defined in Knowledge Base Synchronization Settings.

Layouts
Override Product Layout to Match Back End - if this option is enabled, product layouts of synchronized products are automatically updated to match the layout from the back-end configurator with every subsequent knowledge base synchronization. As a result, it is only necessary to manually maintain the layout of the back-end model in this scenario. However, f this option is disabled, the back-end product layout is synchronized only during the first knowledge base synchronization. In that case, you can continue to manually update the product layout in SAP CPQ. This option is disabled by default. To update the layout of previously synchronized products so that it matches the layout from the back-end configurator, you would need to synchronize these products again after you have enabled this option. 
Note

The Layout template and the RD template will not be reset when performing Knowledge Base synchronization. There would be no change regardless of whether the same product version is re-synced or a new one is created. This behavior is independent of any application parameters and will stay consistent, even when obsolete features are hidden.

Override Attribute Display Type to Match Back End - if this option is enabled, the attribute display type from the back-end is resynchronized with every subsequent knowledge base synchronization. However, if this option is disabled, the display type is synchronized from the back-end system only the first time an attribute is synchronized from the back-end and created in the system.

Override Configuration Type to Match Back End - if this option is enabled, the product configuration type from the back-end is resynchronized with every subsequent knowledge base synchronization. However, if this option is disabled, the configuration type is synchronized from the back-end system only the first time a product is synchronized from the back-end and created in the system.

Note

Attribute value descriptions for product attributes are designed to be stored individually not per global attribute definition.

Note

You can directly access and manage diagnostic data related to knowledge base synchronization in Knowledge Base Diagnostics, available in the Developer Tools section of the Setup. In addition to reviewing job data, you can also resynchronize or delete failed data, as well as execute jobs manually either by specifying a date or by providing a knowledge base ID.

Related Information
Integrate SAP CPQ with SAP Variant Configuration and Pricing
Technical Overview
Yes
No