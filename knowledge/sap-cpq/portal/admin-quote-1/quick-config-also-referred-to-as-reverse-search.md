# Quick Config (also referred to as Reverse Search ) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/8b8f4d0cde3349819f63ed3276c7f383.html?locale=en-US&state=PRODUCTION&version=2603
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
Quick Config (also referred to as Reverse Search )

The purpose of the Quick Config functionality is to provide a shortcut for searching and configuring the configurable product at the same time.

This is achieved by entering a part number and attribute values that you would like to configure for the particular product. If your search query matches the search pattern for that product (previously defined through SAP CPQ setup by administrator), then SAP CPQ finds your product, preselects attributes that you stated in your search query and finally adds product to the quote.

In the responsive design you must enter the quote, type your search term and click on the “gear” button at the right side.

Note

To make the next example applicable, make sure that parameter Setup  General  Application Parameters  tab General Parameters  Optimize Part Number Search For Simple Products has its value set to false. This parameter must be set to true only if you want to search simple products. If this parameter is turned on, then Cat Matching table search is ommited, and search is only performed against products table

Example

This example explains how to set up a Quick Config for the product. It also demonstrates this functionality in action.

Steps for administrator to create a product that will be searchable by Quick Config.

1. Go to SAP CPQ Setup  Products and add a new configurable product named: Mercedes Benz w204 C class

2. Define three attributes for this product as follows:

attribute Color with four possible values: gray, black, white, red

attribute Fuel with two possible values: petrol, diesel

attribute Equipment with four possible values: classic, elegance, avantgarde, amg

Create a part number as follows: mercedes-c-w204-<*VALUE(Color)*>-<*VALUE(Fuel)*>-<*VALUE(Equipment)*>.

Note that, this way, you defined a dynamic part number that depends on selected values for three attributes.

Under Current product click on Code Matching item.

Here define a code matching searching string that will be checked during quick config searching

Enter matching string as follows: mercedes-c-w204-

Note that code matching string should match a static part of part number so quick config could match it to the right product.

Now, when you are done with quick config set up you can see how it works.

Note that there is an assumption that each product that you want quick config to take into consideration, should have unique part numbers and code matching strings. Also, quick config must find only one product and configure it if your search term contains the appropriate, valid attrbiute values in the right order as you defined it in part number field. If the order of attributes is not good, or attribute values provided through the search term does not fit, then quick config will not be able to find the product and the appropriate message will be displayed.

If you want to add more than one products to the quote this way, you should use the Add Items in Bulk feature. Here is an example how to add and configure two different products by using Add Items in Bulk and add them to the quote.

Let's assume that there is another product named “BMW Serie 3” in our product list and that Code matching string bmw-e90-3- is defined for that product. Two attributes, color and fuel are defined and part number of this product is bmw-e90-3-<*VALUE(Color)*>-<*VALUE(Fuel)*>

Go to Add Items in Bulk and type search terms bmw-e90-3-white-petrol and mercedes-c-w204-white-petrol-elegance and click on validate button.

If you entered valid search term, quick config will find your products and offer you to add them to the quote.
Yes
No