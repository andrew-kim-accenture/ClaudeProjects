# As of 2608: Removal of the Legacy Authentication for the "Deploy / Send Changes" Feature | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/c80ce923ad8e4ebdbb31856a38f1b1b6.html?version=2603
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
As of 2608: Removal of the Legacy Authentication for the "Deploy / Send Changes" Feature

Related Feature

Deploy / Send Changes

Who Is Affected?

All customers that use the "Deploy / Send Changes" feature to transfer data from a SAP CPQ environment to another destination.

Description

The Deploy / Send Changes functionality enables you to send and deploy changes between tenants. To enhance the security of data transfers, token-based authentication has been introduced with the 2602 release. The existing authentication mechanism is now obsolete and will be removed in the 2608 release.

During the Deprecation Period

To ensure a seamless transition to the new security model, backwards compatibility is maintained for existing environments. That is, the current (legacy) behavior will still work for already created environments with a warning that the current authentication should be re-implemented using the new approach.

Newly created connections will only support the new approach. With token-based authentication, a token is retrieved from the destination environment using a Client ID and Client Secret, which are sourced from the Trusted Application. Each connected environment has its own unique Client ID and Client Secret, as each connection targets a specific destination environment.

From the Release 2608

Only the new token-based approach is used for handling data transfers.

Actions to Take
To enable the token-based authentication, for each connected environment, you need to:

Generate the Client ID and Client Secret.

Log in to the destination environment and navigate to Setup  Security  Trusted Applications.

Create a Client ID and Client Secret using the Client credentials grant.

Select a user for whom the token will be generated when sending packages.

Configure the source environment.

Navigate to General  Deploy/Send Changes page in SAP CPQ Setup.

Select a connected environment and enter the Client ID and Client Secret generated in the previous step.

You will see a warning icon next to environments that are not yet configured for the new authentication approach. Once the environment is reconfigured to use the new token-based approach, the warning will disappear.

On this page
Related Feature
Who Is Affected?
Description
Actions to Take
Yes
No