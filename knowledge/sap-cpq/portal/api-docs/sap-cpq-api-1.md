# SAP CPQ API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3?locale=en-US&state=PRODUCTION&version=2603
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
SAP CPQ API

External applications can call API methods in SAP CPQ to automate processes and avoid the need for manually entering information.

With API you can update quotes, execute quote actions, create customers or business partners, update users and so on. For example, if a company uses a separate application to process shipping information after an order has been placed, SAP CPQ API can be used to update a quote with shipping information, such as a tracking number, tracking URL, estimated shipping date, and so on.

SAP CPQ uses SOAP, User Interface and REST APIs for communication with external systems. In scenarios when communication can be established with all of the aforementioned APIs, opt for the REST API, if possible, as it complies with SAP guidelines and standards.
Note

When a large number of requests are executed in parallel, particularly with API calls, it can lead to issues such as database table locking. This is especially problematic when multiple requests are attempting to write to the same table, such as a user login table. The locking of the table can cause other requests that are waiting for access to fail due to timeouts. To prevent this, it is important to manage API calls effectively by avoiding parallel execution that leads to such conflicts.

SAP CPQ APIs are described in three platforms, as stated below:

REST APIs have a separate set of documentation, although some of them are described in this guide as well.

Custom table APIs are described in a separate set of documentation

API packages are described in the SAP Business Accelerator Hub:

The next generation SAP Configure Price Quote APIs used for the Quote 2.0 engine

Get standard and subscription billing products

APIs used for creation and synchronization of business partners and partner functions

SOAP APIs are described in the sections of this guide.

Related Information
SAP CPQ REST API Authentication
API Example
Yes
No