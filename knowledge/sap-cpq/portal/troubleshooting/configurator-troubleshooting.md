# Configurator Troubleshooting | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/665a9ee212394653a84a393035090802/d39cbfdafaf64131a1f320eeab54a65d.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ TroubleshootingVersion: 2603English
Provide feedback on our search

	
SAP CPQ Troubleshooting
	
Integrations Troubleshooting
	
Configurator Troubleshooting
	
Document Generation Troubleshooting
	
Catalog Troubleshooting
	
Quote Troubleshooting
	
User Interface Troubleshooting
	
Setup Troubleshooting
	
Login Troubleshooting
	
Scripting Troubleshooting
	
Performance Troubleshooting
Configurator Troubleshooting

This section provides more information about common issues that may occur in the product configurator, and ways to fix them.

1. An attribute is not changing its value, although the value is expected to change. Why?

An attribute might retain its value because of calculations that are assigned to it in the Hint field in Setup  Product Catalog  Products   Attributes  Edit. For example, an attribute may always be set to the value 17 in the configurator because it has the hint <SETATVQTY(HP:1, 17)> assigned to it in product administration.

2. An attribute is not visible in the Configurator. Why?

Check Setup  Product Catalog  Attribute Visibility Restrictions. The attribute in question might be set to invisible for one or more user types.

3. When editing an item, child container columns are not populated, but, when editing a single row and going back, all the columns are populated.

This may occur because rules are not being executed on the child product, which can be fixed via an application parameter.

Go to Setup  Application Parameters  Configurator  Execute rules in child products (found in attribute container) when adding parent product to the quote and set the value to True.

4. The configurator UI is not properly refreshed after an action is performed. For example, although a container is loaded from the scripting on a button click, it is not properly displayed upon clicking, but only on browser refresh.

It may be necessary to enable the Refresh Configurator on Change toggle switch in Products  Edit  Attributes  Additional Attribute Definition.

5. Why is data from one tab in the configurator not visible in other tabs referencing the same data in Responsive Design?

This is expected behavior due to the fact that, in Responsive Design, data is loaded only for the current tab. Therefore, data from one tab cannot be simultaneously used in another tab.

Related Information
Products
Products Layout Tab
Create Products
Yes
No