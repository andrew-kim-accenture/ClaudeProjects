# External Configurator Integration for Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/17ba27cad9eb4056bcea3029fb421f1a.html?locale=en-US&state=PRODUCTION&version=2603
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
External Configurator Integration for Quote 2.0

SAP CPQ can be integrated with the configurator of an external system. This possibility allows businesses that already have defined products in another system to use the SAP CPQ quoting capabilities while continuing to use their existing configurator.

With this option enabled, it is possible to create or maintain a product in SAP CPQ while performing product configuration in the configurator of a different system. When a product is configured in the external configurator, both the user interface and the functionality of the external configurator are provided to the SAP CPQ user.

Products used in an external configurator can be either created in SAP CPQ or imported from a back-end system, as long as they have the same master data in both SAP CPQ and the system whose configurator is used, or the data is mapped to SAP CPQ.

Note

You must set the product configuration type External for products that you intend to use in the scope of this integration. You can set the configuration type in product definition in Setup  Product Catalog  Products  Edit. Products with the External configuration type can't have scripts, rules, triggers, code matches or validation messages defined on them.

The External Configurator Integration works on the basis of custom IronPython scripts which administrators create in the dedicated section of the Setup. Administrators need to create IronPython scripts assigned to events, which determine the way SAP CPQ interacts with the external configurator.

Prerequisites for the External Configurator Integration
The following prerequisites apply for this integration:

This option is available only for the Quote 2.0 engine.

Products must have the configuration type External.

It is recommended that you set up Federated Single Sign-On between the two systems.

You can use an external configurator either with products created in SAP CPQ or with products imported as materials from a back-end system. If imported products are used, they need to have the same master data in both systems.

Integrate SAP CPQ Quote 2.0 with an External Configurator

Go to Setup   Providers  Providers   External Configurator.

Click Enable External Configurator.

The integration is now enabled, and a list of events displays.

Provide a script for each event to define how the system will behave when working with a product with the configuration type External. It is recommended that you create scripts for events in the order in which they are displayed in the table. You aren’t required to create scripts for every event.

You can select an existing global script or create a new one.

Event

	

Description




Configure

	

This script is triggered when configuring a product or editing a quote item with the configuration type External. This script must generate a result in the form of a redirection URL (redirectionUrl) of the external system where configuration is performed. This URL leads you to the configurator of the external system. You can use the following context variables in this script: context.Product, context.Quote, and context.EditedItem.

The following flow is recommended for this event:

Prepare the pricing and configuration context to be passed to the external configuration engine.

Authenticate to the external configuration service and create a configuration.

Provide the redirectionUrl variable to be redirected to SAP CPQ.




Land to SAP CPQ

	

This script is triggered when landing back from the external configurator user interface to SAP CPQ. This script can only be triggered by accessing the following URL: /integration/external-configurator/external/landing. It must generate a result in the form of a redirection URL (redirectionUrl) to which the user is redirected after landing to the SAP CPQ configurator or quote. You can use the following context variable in this script: context.ExternalParameters.

The following flow is recommended for this event:

Read and validate external parameters from the request query.

Authenticate on the external service and get the external configuration payload.

Build the SAP CPQ product model structure based on the external configuration payload.

Add the new product structure as a new item structure into the SAP CPQ quote or update the existing one.

Delete the external configuration on the external service if needed.

Provide the redirectionUrl variable to be redirected to SAP CPQ.




Copy Item

	

This script is triggered when copying a quote item with the configuration type External. It is also triggered for every root item when copying the quote. You can use the following context variables in this script: context.Quote, context.OriginalItems, and context.CopiedItems.

The following flow is recommended for this event:

Prepare the new pricing and configuration process for the item that is being copied.

Authenticate and create a new configuration with the new context based on the previous configuration ID.

Store the new configuration on copied items.




Delete Item

	

This script is triggered when deleting an item with the configuration type External from the quote. You can use the following context variables in this script: context.Quote and context.DeletedItems.

The following flow is recommended for this event:

Pull the configuration ID from the deleted items.

Authenticate and delete the configuration on the external system.




Reconfigure

	

This script is triggered when an item with the configuration type External is reconfigured on the quote, before it is added back to the quote, or when the Reconfigure action is performed on the quote. If you want a logic in the script to be triggered only by the Reconfigure action on the quote, you can write that logic under the context variable context.IsReconfigure. The item currently being reconfigured can be accessed via context.Product, and the reconfigured quote can be accessed via context.Quote.

The following flow is recommended for this event:

Prepare the new pricing and configuration process for the item that is being reconfigured.

Authenticate and create a new configuration with the new context.

Pull the new configuration and update the existing item structure in SAP CPQ.

Click Save every time you add a script.

If all the scripts are created and added, when you use a product with the configuration type External, the system behaves according to the provided scripts.

On this page
Prerequisites for the External Configurator Integration
Integrate SAP CPQ Quote 2.0 with an External Configurator
Yes
No