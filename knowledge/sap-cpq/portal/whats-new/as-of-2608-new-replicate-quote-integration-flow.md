# As of 2608: New Replicate Quote integration flow | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/8e920b7b0a2e4d7fa72c306194818522.html?version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ What's NewVersion: 2603English
Provide feedback on our search

	
What's New Library
	
Breaking Changes and Announcements


	
Latest Breaking Changes and Announcements


	
As of 2605: Obsoletion of SAP CPQ - SAP CX AI Integration
	
As of 2608: Removal of the useNewApprovalBranch Property
	
As of 2608: New Replicate Quote integration flow
	
As of 2608: API for Getting Quote List Data Doesn't Include the WorkflowTransition Property in its Response
	
As of 2608: Removal of the Legacy Authentication for the "Deploy / Send Changes" Feature
	
As of 2608: Sunset of the Customers Concept in Quote 2.0
	
Archive of Breaking Changes and Announcements
	
Release Schedule and Dates
	
Pre-Upgrade Testing Offering
	
Subscription Instructions
As of 2608: New Replicate Quote integration flow

Related Feature

Integration with the Solution Quote Object in SAP S/4HANA: SAP Billing and Revenue Innovation Management

Description

Starting with the 2608 release, a new integration flow New Replicate Quote 2.0 from SAP CPQ to SAP S/4HANA will become the default and only supported integration flow for quote replication to SAP S/4HANA when SAP CPQ is integrating with SAP Billing and Revenue Innovation Management solution.

The existing Replicate Quote 2.0 from SAP CPQ to SAP S/4HANA integration flow will be deprecated and removed with the 2608 release.

This change addresses an issue in the existing integration flow where the position of the Call Extension node could result in the removal of any custom nodes added by customers. The new integration flow includes a corrected placement of the Call Extension node, ensuring that customer-added custom nodes are preserved during execution.

Actions to Take

If you are using the existing Replicate Quote 2.0 from SAP CPQ to SAP S/4HANA integration flow, SAP recommends switching to the New Replicate Quote 2.0 from SAP CPQ to SAP S/4HANA integration flow before upgrading to the 2608 release. For more information, see Configuration of the integration flow “New Replicate Quote 2.0 from SAP CPQ to SAP S/4HANA”.

On this page
Related Feature
Description
Actions to Take
Yes
No