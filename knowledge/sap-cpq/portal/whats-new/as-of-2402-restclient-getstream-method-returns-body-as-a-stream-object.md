# As of 2402: RestClient.GetStream Method Returns Body As a Stream Object | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/7a6b7628e3fc4b849bfa46a9c040c63f.html?version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ What's NewVersion: 2603English
Provide feedback on our search

	
What's New Library
	
Breaking Changes and Announcements


	
Latest Breaking Changes and Announcements
	
Archive of Breaking Changes and Announcements


	
SAP CPQ 2602 Breaking Changes and Announcements
	
SAP CPQ 2511 Breaking Changes and Announcements
	
SAP CPQ 2508 Breaking Changes and Announcements
	
SAP CPQ 2505 Breaking Changes and Announcements
	
SAP CPQ 2502 Breaking Changes and Announcements
	
SAP CPQ 2411 Breaking Changes and Announcements
	
SAP CPQ 2408 Breaking Changes and Announcements
	
SAP CPQ 2405 Breaking Changes and Announcements
	
SAP CPQ 2402 Breaking Changes and Announcements


	
As of 2402: Add Asset Dialogue Redesigned for a Better User Experience
	
As of 2402: Removal of the Label Field from the Quote Item Custom Fields
	
As of 2402: Pricing Using Item Level Date is Now Possible When Using VCP Pricing Stateless Service
	
As of 2402: Item Price and Service Date Can Now Be Changed for Both Document and Stateless Pricing
	
As of 2402: Python Module 'sys' Is No Longer Supported Due to Security Reasons
	
As of 2402: RestClient.GetStream Method Returns Body As a Stream Object
	
As of 2402: A Scroll Has Been Added to the ItemsTable Template for Quote 1.0, Which Has No Paging Enabled
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2402: RestClient.GetStream Method Returns Body As a Stream Object

Description

Since clients are using RestClient.GetStream to fetch a pictures and files from some URL, the respective format must be Stream. Stream can be easily changed into the array of bytes and used similarly as for the files processing and therefore we had to change methods listed below. One more reason for the change is also to be coexistent with format that is returned in the case when the returnHeadersAndCookies = False.

Regarding the scripting, the following methods have been changed:

RestClient.GetStream(uri: str, requestHeaders: dict, returnHeadersAndCookies: bool)

RestClient.Post(uri: str, requestHeaders: dict, content: MultipartFormDataContent, returnHeadersAndCookies: bool)

RestClient.Put(uri: str, requestHeaders: dict, content: MultipartFormDataContent, returnHeadersAndCookies: bool)

RestClient.Patch(uri: str, requestHeaders: dict, content: MultipartFormDataContent, returnHeadersAndCookies: bool)

In the case of a method call with returnHeadersAndCookies=True, a method response contains Body property which was always of type string.

Now, the Body property type will be System.IO.Stream.

Actions to Take

Affected customers are all the customers that are using RestClient.GetStream methods.They need to adjust the response body.

Example code:

response = RestClient.GetStream(uri, headers, True) body = response.Body

Replace with:

response = RestClient.GetStream(uri, headers, True)

body = StreamReader(response.Body).ReadToEnd()

On this page
Description
Actions to Take
Yes
No