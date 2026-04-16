# XWS (EXTERNAL WEB SERVICE) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/1902e94aa7e048ad93e11332e199c0b0.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
XWS (EXTERNAL WEB SERVICE)

XWS is an SAP CPQ tag that allows external services to be called. It also allows for external, noncurrent, product data to be evaluated and used inside expressions.

This tag should be used if a product needs to use data from another product, from any table located in the database, or from some other external source.

Syntax for the XWS tag is <*XWS(FunctionName, FunctionParameters)*>. For example <*XWS(GETPRODUCTPRICE, Product Name)*> or <*XWS(GETPRODUCTCATCODE, Product Name)*> or <*XWS(GETPRODUCTDESCRIPTION, Product Name)*> would return product price, product part number or product description for a referenced product. For more information on referenced products and product’s hierarchy, see the chapter on Product’s Hierarchy.

Another standard example of using the XWS tag would be using it to obtain data from an uploaded table in the database. The expression would likely look like: <*XWS(AUXTABLE, <table_name >, <return_column_name>, <condition_column_1_name>, <condition_value_1>, <condi tion_column_2_name>, <condition_value_2>…) *>. To avoid using an HTTP post with an XWS call, the AUX tag can be used instead to access uploaded table data. Using this tag instead ensures a faster result. The syntax is the same as XWS call except the AUX TABLE is removed and XWS is replaced with AUX.

Example
The following expression would be used to return a value from the field CONTRACT_PRICE in the table called CONTRACTS, where part number in the PartNumber field is equal to the configured part number of the product: <*AUX(AUXTABLE,CONTRACTS,C ONTRACT_PRICE,PartNumber,<* ProductCode *>)*>
Yes
No