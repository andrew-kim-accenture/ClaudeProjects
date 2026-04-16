# Quick Search and Advanced Search | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/9fa1aaf7b71845d5afb729adc6e9911f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help
	
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
Quick Search and Advanced Search

The SAP CPQ catalog can be searched via the quick search or the advanced search.

Quick Search

Catalog Quick Search works with an autocomplete option. Users conduct the search by entering a key word(s) for the name/description of the product they are looking for. Quick Search will look for the product’s name/description in the user selected language. If it doesn’t find the translation, Quick Search will then look for the product name/description in the user default dictionary. The Quick Search result will always contain an entire text body of the product name/description that users enter. In other words, if you search for a product with the word “window” in it, and you enter the word “indow,” your Quick Search result will comprise all products containing the word “indow” in them.

We have defined several parameters to improve search performance in Catalog Quick Search with an autocomplete option. For now, if a number of products in the system exceeds 100,000 for search by Part Number and Product Name, and 10,000 for search by Description, Word or Phrase, the words entered in the Search box must equal the starting sequence of the text searched. Hidden parameters may be modified by SAP CPQ administrators in the capacity that will not affect search performance.

These parameters are not used when using options Show more results and Advanced Search.

Advanced Search

Advanced search works a bit differently. When the user enters the search box field, Advanced Search will divide the text into word segments (the search will follow the same search logic of the user selected language; if it doesn’t find the translation, Advanced Search will then look for the product name/description in the user default dictionary). The role of the functionality’s application parameter, “When users enter several words in search box, SAP CPQ will find products based on each entered word (instead of searching based on entire phrase)” is to define if the result of the product name or description must contain all individual words in the text entered, (though not necessarily in the same order) within their textual values; or if it can contain at least one word from the text entered.

Parameter=FALSE - must contain all words

Parameter=TRUE - must contain at least one word

Note

The explanation provided in this document refers only to using the search by entering the product name/description field.

On this page
Quick Search
Advanced Search
Yes
No