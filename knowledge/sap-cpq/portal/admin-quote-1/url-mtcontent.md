# Url.MTContent | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/2af5807002d846f59c1c6bf4c0dc58f6.html#razor-limitations
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design


	Setup Help

	
Branding
	
Catalog Layout
	
Quote Layout
	
Responsive Templates


	
Responsive Template Customization in Setup
	
Responsive Design Customizations


	
Prerequisites
	
Knockout Extension Functions
	
Customization Examples
	
Advanced Customization Examples
	
Server Side Rendering


	
Translation function
	
PartialWithNameAsComment Function
	
How to Reuse Custom Templates
	
Url.MTContent
	
Manage Custom CSS/JS Files with File Manager
	
Upgrade Templates to Newer Versions with Newer Releases
	
Template Versions
	
Freeze Templates
	
Obsolete Features
	
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
Url.MTContent

Converts a virtual (relative) to MT folder resource to an application absolute path.

SAP CPQ implemented a public cache for public files that lasts 365 days. Customer-related files have a cache duration of 30 minutes. Additionally, when using the Url.MtContent function to load customer-related files, the application will read the files from the cached directory. If a customer does not wish to utilize the cache or experiences any issues with required.js, they have the option to control where the content is loaded from using the application parameter LoadMtContentFromCachedDirectory. By default, this parameter is set to true, loading content from the cache. However, if the parameter is set to false, the content will be loaded directly from the file system without the use of cache. This flexibility allows for a customized user experience based on individual preferences.

The Url.MTContent function includes the option to disable file loading from the cache by setting the disableCache parameter to true. This feature provides users with more control over their file loading preferences. Use the Url.MTContent (string path, bool disableCache) format in your code and set disableCache to true.

Syntax:



@Url.MTContent(path)
Example

Render image beach.jpg that you previously added to Additional Files folder.

C#:



<img src="@Url.MTContent("additionalfiles/beach.jpg")" />
Some Other Useful Relative MT Relative Paths:

Product Images - "/images/productimages/..."

Category Images - "/images/categoryimages/..."

Attribute Images - "/images/attributeimages/..."

Actions - "/images/quoteactions/..."

Top Menu - "/images/topmenuicons/..."

Additional Files - "/additionalfiles/..."

Razor Limitations

Use of "@" sign with combination of any restricted Razor key words is forbidden.

For example: @Url.Content("additionalfiles/") + "SAPfile.pdf" is not allowed. In order to resolve this issue, follow these recommendations:

Break the line after @Url.MTContent("additionalfiles/"), just before the + sign

Replace existing line of code containing whole <a> element with the code below:

@{

string mtContent = @Url.MTContent("additionalfiles/");

mtContent = mtContent + "Cheat Sheet/SAPCPQCatalogueCheatSheetJan2023Ver5.pdf";

<a id = "idQuoteCheatSheet" data-bind="style: { 'display': !isASAQuote_forCheatSheetCatalog($data) ? 'initial' : 'none' }" href="@mtContent" target="_blank" ><span class="sap-icon" >tetsdtds</span></a>

}

Replace existing line of code containing whole <a> element with the code below:

<a id = "idQuoteCheatSheet" data-bind="style: { 'display': !isASAQuote_forCheatSheetCatalog($data) ? 'initial' : 'none' },attr: {href: 'mt/(PLACE_YOUR_TENANT_NAME_HERE)/additionalfiles/")' + 'Cheat Sheet/SAPCPQCatalogueCheatSheetJan2023Ver5.pdf' }" target="_blank"><span class="sap-icon" >&#xe1c3;</span></a>

Rename the pdf file if possible not to contain SAP or do not write SAP in capital letters.

On this page
Example
Some Other Useful Relative MT Relative Paths:
Razor Limitations
Yes
No