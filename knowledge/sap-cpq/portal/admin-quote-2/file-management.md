# File Management | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/de62e70a103045d5a4bfbb881ccb8add.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Application Parameters
	
Deploy / Send Changes
	
Report Module
	
Countries/Regions, States and Territories
	
Dictionaries
	
Manage Generated Documents
	
File Management


	
Upload Files
	
Email Settings
	
Time Zones
	
Custom Tabs
	
Recurring Background Jobs Executed on Tenants
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
File Management

File Management stores images and files that can be retrieved throughout Setup (when creating products, categories, and so on).

You can upload files to the following folders:

Product Images - images for products.

Category Images - images for categories.

Attribute Images - images for attributes.

Actions - images for quote action icons.

Lightning Actions - images for quote action icons in lightning branding.

Top Menu - images for icons in the top menu in the old SAP CPQ design.

Additional Files - the only folder to which you can upload files other than images and reorganize them into subfolders. You can retrieve files from this folder in responsive templates and through scripting.

To manage files (upload, download, copy, preview, and so on), access the Home tab. In the View tab, choose how files display and whether the navigation pane with a list of folders shows up on the left.
Note

The format of images that can be uploaded in File Management is set through the Allowed Image Extensions application parameter.

To upload image files such as .jpg and .png, the file must not contain dots except for those within the extension (example. .jpg). For instance, avoid using dots to indicate dates, such as in the filename 13.03.2024-test.jpg.

<*DOMAIN*> Tag in File URLs
To determine your domain (tenant) name when constructing URLs for files uploaded to SAP CPQ, you can use the <*DOMAIN*> tag. For example, to place the ChairProd image into a display-only text attribute in the configurator, you need to use the following HTML code: <img src=”../mt/<*Domain*>/images/productimages/Product1.png”/>. By using the <*DOMAIN*> tag, you don’t have to go back to every field that contains a formula referring to images from the file system and manually replace the hard-coded domain of the old environment with the name of the new environment. The system retrieves the domain name automatically.


Upload Files

Before you initiate the upload, click the destination folder to which you wish to upload the file in the left-hand navigation pane.
Yes
No