# Key Attributes | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/66c53eeb0ef04e3383fd3f369bf84ffe.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation
	
Custom Quote Tabs
	
Quote Tables
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Key Attributes

Key attributes provide you with an option to set up attributes as search criteria on the user side.

Users can search for quotes based on the value of key attributes in the environment. For example, if Memory is a key attribute, users can make Memory a search field. When users browse quotes, they can search quotes with the Memory value of 1024MB-DDR, and all quotes containing this value are listed.

You can find the Key Attributes administrative section under Setup  Quotes. There, you can add new key attributes, change the label of the existing key attributes, and modify the expression used to compute the value of the key attribute.

You can create a new key attribute by clicking Select. This brings up a pop-up window where you can search for the attribute you would like the key attribute to reference.

The Label field determines what the default label for this key attribute will be. Users can change the label when the key attribute is added as a search field.

The Expression for computing key attribute value field must contain a standard SAP CPQ tag which determines what value will be used when searching for this key attribute. Generally this field contains tags such as Value or ValueCode. You can also include a much more complex expression here if necessary.

Show quote key attributes in a container attribute

In order to do this you can use arguments of the tag LoadCartItems consisting of the prefix KeyAttribute- and key attribute name. For example:

KeyAttribute-Memory

KeyAttribute-Processor

KeyAttribute-Printer

In the syntax checker, only non-empty key attributes will be displayed. This tag will be used to populate the appropriate column with value of item’s key attribute. The complete tag may look like this: <*CTX( Container(Test_Container).LoadCartItems(KeyAttribute-Memory).ToColumns(Memory) )*>

Here are some of the typical use cases:

Create a container attribute that will be populated with contents of the quote. This container will be displayed in configurable product. The container should contain quote item fields.

Add key attributes to be displayed in a container (String, Numeric, Date)

Create a quote and add several items. Some items should have these key attributes empty.

You will see that quote contents are displayed in the container and that key attribute values are will be displayed for all items.

Yes
No