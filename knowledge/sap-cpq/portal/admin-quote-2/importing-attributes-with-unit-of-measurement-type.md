# Importing Attributes with Unit of Measurement Type | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/927a4f854737470782ece10951e0de7b.html?locale=en-US&state=PRODUCTION&version=2603
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
	
General Settings
	
Import/Export


	
Bulk Product Import/Export
	
Bulk User Import/Export
	
Bulk Pricebook Import/Export
	
Bulk Product Translation Import/Export
	
Bulk Business Partner Import/Export
	
Attribute Import


	
Create Template by Exporting Attributes
	
Importing Attributes with Unit of Measurement Type
	
Import/Export Attribute Translations
	
Companies Export/Import
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Importing Attributes with Unit of Measurement Type

This type of Attribute Import is useful when you want to make an attribute that is determined by a unit of measurement. It helps to remember that a unit of measurement, for example, Pressure, can’t be used on its own without being attached to an attribute in a product.

Once you’ve defined your unit of measurement, you must create an attribute determined by that unit. In our case, we have created unit Length and an attribute TestUnit; you must enter Measurement as your Attribute Type. We've flagged Length M (meter) value as our Default unit of measurement.

Now, Attribute Import needs to be conducted. When you export your file, the Excel file includes a Measurement column. The Sample Template also includes a new Measurement Column.

You must enter your Display Values (100 m and 500 m, respectively, in our case) and your unit of measurement in the Measurement column. These values must be entered in the file being exported in order to be able to convert these values from your default value (meters, in our example), to another value (kilometers and miles, in our example).

Now, the file containing these conversions needs to be imported. You need to add the attribute to the product you wish to configure.

Once you’ve done that, you’re ready to configure your product in Catalog. Length measurement values in the Configurator have been converted to kilometers from meters.

Note

SAP CPQ supports the deployment of products containing Attribute Measurement Types. If the chosen Unit of Measurement hasn’t been defined by the destination environment, the system creates that unit. If the unit exists, the values of the deployed Attribute Measurement Type are added to the Conversion Excel file.

Yes
No