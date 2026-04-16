# As of 2511: Environment Field Replaced with Tenant URL | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/db688012652c403895f91729a8d2c549.html?version=2603
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


	
As of 2511: Limitation on Data Size for User Input or Computed - String Attribute Type
	
As of 2511: Deprecation of Deletion of Products Synced from External Systems
	
As of 2511: Environment Field Replaced with Tenant URL
	
As of 2511: Deprecation of PDA Approval Logic
	
SAP CPQ 2508 Breaking Changes and Announcements
	
SAP CPQ 2505 Breaking Changes and Announcements
	
SAP CPQ 2502 Breaking Changes and Announcements
	
SAP CPQ 2411 Breaking Changes and Announcements
	
SAP CPQ 2408 Breaking Changes and Announcements
	
SAP CPQ 2405 Breaking Changes and Announcements
	
SAP CPQ 2402 Breaking Changes and Announcements
	
SAP CPQ 2311 Breaking Changes and Announcements
	
SAP CPQ 2308 Breaking Changes and Announcements
	
Breaking Changes and Announcements up to the Release 2305
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2511: Environment Field Replaced with Tenant URL

Related Feature

Subscription to Events

Description

Starting with the SAP CPQ release in November 2025 (2511 release), the following change will be applied: The Environment field in the payload of notifications defined in the Subscription to Events section of SAP CPQ Setup will be replaced with the corresponding tenant URL. Currently, this field contains the URL of the default tenant.

Impact

If any of your applications integrated with SAP CPQ via the Subscription to Events feature consumes the Environment field, this change may be breaking. If your application expects the URL of the default tenant, you will need to update it to use the tenant URL instead.

Effective Date

This change will go into effect as part of SAP CPQ-2511 release.

Actions to Take

Check if any of your applications subscribed to SAP CPQ events expect the URL of the default tenant in the Environment field of the event message. If they do, update them to use the actual tenant URL instead.

Example

Suppose you created a subscription event (Setup  Providers  Subscription to Events) that notifies subscribers when a product gets updated. So, when that happens, a notification message is sent to the subscriber. This is where the change occurs.

Notification message (before): Environment is populated with the default tenant URL



{
  "Id": "422",
  "Name": "Test Product Version",
  "SystemId": "Test_Product_Version_cpq",
  "EventType": "ProductUpdated",
  "Domain": "<your_domain>",
  "Environment": "<your_default_tenant>",
  "FilterData": {
    "isSb": false
  },
  "TimeStamp": "2025-09-24T07:54:40.6179168Z"
}


Notification message (after): Environment is populated with the actual tenant URL



{
  "Id": "422",
  "Name": "Test Product Version",
  "SystemId": "Test_Product_Version_cpq",
  "EventType": "ProductUpdated",
  "Domain": "<your_domain>",
  "Environment": "<your_actual_tenant>",
  "FilterData": {
    "isSb": false
  },
  "TimeStamp": "2025-09-24T07:54:40.6179168Z"
}

On this page
Related Feature
Description
Actions to Take
Yes
No