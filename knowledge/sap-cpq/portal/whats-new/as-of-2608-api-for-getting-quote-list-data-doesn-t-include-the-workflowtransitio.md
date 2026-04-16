# As of 2608: API for Getting Quote List Data Doesn't Include the WorkflowTransition Property in its Response | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/63665644a0cf47b495a3e18df0a4c20b.html?version=2603
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
As of 2608: API for Getting Quote List Data Doesn't Include the WorkflowTransition Property in its Response

Related Feature

Quote List

Who is Affected?

Customers that call the API get /api/rd/v1/QuoteList/GetData in their apps, or use the WorkflowTransition JavaScript object in customized responsive templates for displaying the Quote List page.

Description

Starting with the 2602 release, SAP CPQ is deprecating the direct exposure of the internal WorkflowTransition JavaScript object from user interface-facing models. This change aims to optimize performance in the workflow pipeline for retrieving available quote actions. Instead of WorkflowTransition, you should use explicit, stable properties on data transfer objects (DTOs) and view models.

During the deprecation period, both old and new behaviors are supported. The deprecation period ends with the 2608 release, when the use of the WorkflowTransition property will no longer be supported. As a result, the API get /api/rd/v1/QuoteList/GetData will no longer include the WorkflowTransition property in its response.

What Has Changed

The QuoteListActionViewModel is now defined as follows:



public class QuoteListActionViewModel
{   public int Id { get; set; }                                // ActionId
    public string Name { get; set; }                           // Translated action name
    public string SystemId { get; set; }                       // MainAction.SystemId
    public int CartId { get; set; }                            // Quote/Cart Id
    public int EndStatusId { get; set; }
    public string EndStatusName { get; set; }
    public int StartStatusId { get; set; }
    public string StartStatusName { get; set; }
    public WorkflowTransition WorkflowTransition { get; set; } // LEGACY – to be removed in 2608
}



All uses of the WorkflowTransitionproperty are now considered legacy. The only remaining exposure was the WorkflowTransition property on QuoteListActionViewModel. This change addresses this exposures and keeps it until the release 2608 for backward compatibility.

During the Deprecation Period

Both new and old behaviors are supported.

The WorkflowTransition property continues to be populated and passed through to QuoteListActionViewModel.

The API get /api/rd/v1/QuoteList/GetData returns the WorkflowTransition property in its response.

Existing customized responsive templates referencing WorkflowTransition.* will function until they are migrated to the new behavior.

When you update customized responsive templates, the new behavior takes effect immediately.

From the Release 2608

After the deprecation period, the WorkflowTransition field on internal DTOs and QuoteListActionViewModel is not populated.

The API get /api/rd/v1/QuoteList/GetData will no longer include the WorkflowTransition property in its response.

Since WorkflowTransition will be removed from QuoteListActionViewModel, there will be a hard breaking change for any remaining WorkflowTransition.* uses.

Actions to Take
To prepare for this breaking change:

Check all places where you call the API get /api/rd/v1/QuoteList/GetData in your apps.

If you have customized SAP CPQ, check whether you have a customized responsive template for displaying the Quote List page. Note that actual uses may not be limited to this page only.

In customized responsive templates, update all uses of the WorkflowTransition JavaScript object to use explicit properties instead. Consult the following table for reference.

Mappings Table

Obsolete

	

New




WorkflowTransition.StartStatus.orderStatusName

	

StartStatusName




WorkflowTransition.StartStatus.orderStatusId

	

StartStatusId




WorkflowTransition.EndStatus.orderStatusNam

	

EndStatusName




WorkflowTransition.EndStatus.orderStatusId

	

EndStatusId




WorkflowTransition.MainAction.name

	

Name




WorkflowTransition.MainAction.systemId

	

SystemId




WorkflowTransition.MainAction.actionId

	

Id




WorkflowTransition.MainAction.cartId

	

CartId

In the example below, $data.WorkflowTransition.StartStatus.orderStatusName should be changed to data.StartStatusName.

Example

Before

Previously, customized responsive templates could look something like this:



<!-- ko foreach: component.getActionOptions(cell.Value) -->
<span data-bind = "text: console.log('----------------',$data.WorkflowTransition.StartStatus.orderStatusName)"></span>
<span data-bind = "text: console.log('-------------parent—',$data.Name)">



After



<!-- ko foreach: component.getActionOptions(cell.Value) -->
<span data-bind = "text: console.log('----------------',$data.StartStatusName)"></span>
<span data-bind = "text: console.log('-------------parent—',$data.Name)">


On this page
Related Feature
Who is Affected?
Description
Actions to Take
Yes
No