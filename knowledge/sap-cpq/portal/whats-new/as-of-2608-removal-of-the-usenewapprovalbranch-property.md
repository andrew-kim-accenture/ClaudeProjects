# As of 2608: Removal of the useNewApprovalBranch Property | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/d1b78d76a0ab4700a3b13346681aedb0.html?version=2603
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
As of 2608: Removal of the useNewApprovalBranch Property

Related Feature

Approvals

Description

As part of the 2608 release, the self.useNewApprovalBranch property, which is used in user interface customizations for approvals, will be removed.

This property is used only in UI customizations and is not an application parameter. It is referenced in custom responsive or freeze templates related to the approvals user interface.

As part of this change, the self.useNewApprovalBranch property will no longer be supported on the Approvals page and Approval History page.

Actions to Take

If you have created any custom responsive templates or freeze templates for the ApprovalsPage or ApprovalHistoryPage that reference the self.useNewApprovalBranch property, you must manually remove it. Failing to remove this property may result in user interface rendering issues.

On this page
Related Feature
Description
Actions to Take
Yes
No