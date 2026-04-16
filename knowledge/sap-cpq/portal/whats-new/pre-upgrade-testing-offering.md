# Pre-Upgrade Testing Offering | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/4315aa37b46e49da924de25d684f3c5f.html?version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ What's NewVersion: 2603English
Provide feedback on our search

	
What's New Library
	
Breaking Changes and Announcements
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering


	
Signing Up for Pre-Upgrade Testing
	
Subscription Instructions
Pre-Upgrade Testing Offering

With the Pre-upgrade testing offering, customers can opt to pre-upgrade a Sandbox or Test environment to the new release code version at least one week before the code is deployed to their Sandbox and Test environments. 

Overview

Delivering a significant number of new features is a key goal of release upgrades, as these upgrades bring innovations to our customers and partners. In SAP CPQ, there are four major release upgrades each year, as described in Release Schedule and Dates.

Upgrades are designed to be seamless. SAP CPQ deploys the new release code version to customers’ Sandbox and Test environments two weeks before the Production upgrade. During these two weeks, customers have the opportunity to test and verify a new release version in their Sandbox and Test environments. However, this time frame may not be sufficient. SAP CPQ customers often have extensive customizations in their tenants, requiring more time for verification, especially after a new release version is deployed.

With the Pre-upgrade testing offering, customers can opt to pre-upgrade a Sandbox or Test environment to the new release code version at least one week before the code is deployed to these environments.  This proposal provides customers with an additional week or more to test and verify a new release version before the Production upgrade.

Note

For this Pre-upgrade testing offering, the new release version is deployed earlier to only one Sandbox or Test tenant chosen by the customer (not all Sandbox and Test environments), to minimize any impact on ongoing development. Customers can nominate either their main Sandbox tenant or any additional Sandbox tenants for testing.

Legal Agreements

In general, as per standard SAP CPQ, standard edition Supplement, customers should refrain from including any personal or productive data in the Sandbox and testing environments. It remains solely the customer’s responsibility to abide by this and minimize the risk involved.

Planned New Features

All the planned new features are published in What's New Library before the Pre-upgrade testing starts. This list provides an overview of potential areas for testing.

Pre-Upgrade Testing Schedule and Sequence of Activities

This section provides a detailed explanation of the Pre-upgrade testing process. Timely involvement from both parties is crucial for successful testing. The following diagram illustrates the recommended sequence of events and outlines the responsibilities of both customers and SAP CPQ in the testing.

Pre-Upgrade Testing Timeline
These responsibilities are also summarized below:

SAP CPQ announces the Pre-upgrade testing offering on the Release Schedule and Dates page at least three weeks before the Pre-upgrade testing starts.

Customers submit requests to be included in the Pre-upgrade testing through the regular support channel. For more information, see Signing Up for Pre-Upgrade Testing.

Note

As the number of participants is limited, customers are encouraged to submit their requests early.

SAP CPQ onboards shortlisted customers before the Pre-upgrade testing.

A week ahead of testing, customers make final preparations.

For each selected customer, SAP CPQ moves the nominated Sandbox tenant to the Pre-upgrade environment within the same data center and hands it over to the customer for testing.

The original tenant URL points to the "new" tenant. The "old" tenant is completely disabled.

Customers perform the testing for one or two weeks and report any identified issues as Customer Cases.

Note

For seamless resolution of issues and easy tracking, all issues should be raised as Customer Cases (using component CEC-SAL-CPQ) with a prefix in the subject line: <release_identifier>.

SAP CPQ deploys code corrections for issues reported during testing based on severity.

After testing is complete, SAP CPQ moves the Pre-upgrade testing tenant back to the Sandbox environment.

The Sandbox environment gets updated to the latest code version.

Immediately after the Sandbox upgrade, SAP CPQ copies back all the test data created during the Pre-upgrade testing based on customer discretion. If a customer hasn’t opted for copying back test data, the test data created during the Pre-upgrade testing won’t be available in the Sandbox environment.

SAP CPQ erases the test data in the Pre-upgrade environment one week after the Sandbox upgrade.

On this page
Overview
Legal Agreements
Planned New Features
Pre-Upgrade Testing Schedule and Sequence of Activities
Yes
No