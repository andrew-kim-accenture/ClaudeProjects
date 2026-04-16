# Drilldown | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/31eed992fe2a4b64b65817c12436639d.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Product Implementation
	Product Actions
	
Product Categories
	
Attributes


	
Create Attributes
	
Attribute Types


	
User Selection


	
Drilldown
	
User Selection with Attribute Quantity Input
	
User Selection w/ Quantity Inputs for each Attribute Value
	
User Input or Computed – Date, Number or String
	
Container Attributes
	
Autocomplete Attributes
	
Measurement Attributes
	
Contract Duration Attributes
	
Billing Cycle Attributes
	
Dynamic Attribute Values
	
Attribute Quantity
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	Integrations
	
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
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Drilldown

This topic explains the drilldown feature.

Let’s say you are a transport vehicle manufacturer that produces 20,000 different vehicles and also services the vehicles it sold to customers. While many of these models and types of services offered are completely different from one another a high number of them are very similar, with a few distinguishable details. Making a unique selection of the entity you want can be complex and very time consuming. This is where Drilldown comes in: it allows you literally to drill through the many options and arrive at your final selection quickly and efficiently.

When you arrive to your desired result, whether it’s data you need for your product configuration or the product itself, you can use it to configure your product and continue creating your quote.

It helps to think of the Drilldown feature as a product attribute with two important entities – Source and Result columns.

That said, the first step in the Drilldown process is creating a Custom Table that will contain your selection data. You can create your Custom Table manually or import an Excel file containing table data. You must fill out the table with source columns representing possible choices – with each choice followed by its sort column – and the Result columns representing the final outcome.

The second step is adding the custom control (Hierarhical Drilldown) attribute, and other attributes that will support Drilldown, into the product. We will explain this later in the document after we show you how to create a custom table. The final step is drilling through your options in order to configure your product and complete your quote (this is explained in the Doing the Drilldown section of this Help document).

First Step - Creating a Custom Table

Manually creating a Custom Table

Your custom table will include Source and Result columns. Source columns will be columns representing choices while Result columns will represent the result of making choices. Remember that each Source column will have its own sort column.

Open the Product Catalog option from the submenu on the left-hand side.

Open Custom Tables.

Click Define New to create a new Custom Table and then click Add New Column to add columns to the table. Fill out the names of your Source and Result columns and define a name for each column and type of it's data (numerical, textual etc.).

Click Save to save your newly created custom table

Find your newly created Custom Table in the list of tables and click the Eye icon to fill out the data in your Source and Result columns.

Click Save when done.

Importing a Custom Table

Open the Product Catalog option from the submenu on the left-hand side and click Custom Tables, then click on Import New button. Make sure to include all columns that would otherwise be included in the manually created custom table. Consult the Excel file below, we've created to see what we mean.

Note

You can download a sample Excel file populated with the required data. Click on next link to download the sample: Vehicle Drilldown Template .

Click Browse to locate the Excel file and click Save. Now go back to the Custom Table Administration page, find your table and click the Eye icon to make sure all fields are in.

Second Step - Adding Custom Control and other Attributes

Now that you have created a Custom Table you should create a product that will have attributes with a display type custom control and attributes which will present results. In our mock-up scenario we will use three attributes but you can create as many attributes as it is needed for your drilldown model.

We will be using three because we need one attribute for custom control (we called it Drilldown_Vehicle) and two attributes where results will be displayed. In our mock-up example the Results No. 1 and No. 2 are Part Number and Model Year, respectively.

In the DrillDown_Vehicle attribute, select Custom Control as your display Type.

Click Setup on your right-hand side. A new pop-up windows is shown.

Enter the name of your custom table in the Table field, (in our example it is Vehicle_drilldown). You will notice that there are two tabs, Source column and Result tabs. Click Add New Column.

Now you are going to fill out relevant Source column fields. Consult the definition of the fields below:

Label: Enter text that will be displayed in the Configurator for that selection.

Type: Select a display type of your selection. The display type can be radio button, image button or drop-down. If you select Image Button as a column type, two more input fields will be displayed on the form - Image On Column and Image Of Column

Image On Column: Enter name of the column in custom table that holds a name of the image that will be displayed as attribute value when the value is selected.

Image Off Column: Enter name of the column in custom table that holds a name of the image that will be displayed as attribute value when the value is not selected. To upload attribute “on/off” images, use File Management in SAP CPQ located at Setup  General  File Management.

Rank: Select the position in the hierarchy of your Source Columns.

Sort column: Enter the name of the appropriate Sort Column as it appears in your custom table.

Db Key Column: Enter a unique database Key indicator of your item. In this case it would be the name of the column listed in your custom table but you can also generate the key through a SAP CPQ expression or a regular string. Note that you should not change the Db Key column indicator - it ensures consistency of the Drilldown process by preventing system error when its value changes.

Db Value Column: Enter the value attached to the Key column.

Condition for making field editable (leave empty if always editable): Enter a condition that will limit the editability of this field (for example, you can limit it to a certain user, or user type, or place time frames during which the field is editable).

Preselection Expression enables you to preselect your attribute values that are determined by the attribute value selections made earlier in the Drilldown process.

Note that you must create as many source columns as the number of choice items you have previously defined in your custom table. In our case those would be: Transport type, Vehicle family, Vehicle and Fuel type.

At this point you must create your result columns. Select Result columns and then click Add new column. And fill out your Result Column fields.

Final Step - Doing the Drilldown
Now that you have created your product with custom control, you can exit setup, configure the product and complete your quote. During product configuration, make your selections from the Choose Drilldown dropdown menu as you wish, and you will drill down to the result.
Related Information
Products
On this page
First Step - Creating a Custom Table
Second Step - Adding Custom Control and other Attributes
Final Step - Doing the Drilldown
Related Information
Yes
No