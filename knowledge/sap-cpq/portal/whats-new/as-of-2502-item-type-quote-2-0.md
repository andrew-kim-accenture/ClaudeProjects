# As of 2502: Item Type Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/11365bf711f04977a4e5363e4954148a.html?version=2603
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


	
As of 2502: Price Representation in CPQ Configuration UI at Characteristic Value Level in Square Brackets is Wrong
	
As of 2502: Change in Responsive Templates
	
As of 2502: Item Type Quote 2.0
	
As of 2502: Removing Fields for Security Reasons
	
As of 2502: Using Involved Parties Through Scripting Will Not Trigger OnInvolvedPartiesChange
	
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
As of 2502: Item Type Quote 2.0

Description

A new template for changing item type in the new quote engine has been implemented. All customers using Quote 2.0, with the item type field editable in the quote items list.

Actions to Take

If customers have CellTemplate frozen, then they need to add a section to the template.



<script type="text/html" id="itemTypeEditableCellTemplateQuote2">
    <a href="#" class="editable-column item-type-column" data-bind="popover: { templateId: 'ItemTypeEditQuote2Template', moduleFactory: $parent.createItemTypeEditModel , autoClose: true, placement: 'top', title: '@Translation.GetJS("ItemTypes.Modal.Title")', container: 'body' }, attr: { id: 'itemTypeEdit_' + $parent.id }">
        <div class="ellipsis example tooltip-if-long center-max-width-150" data-bind="tooltip: { title: $parent.baseRolledUpItemNumber ? itemTypeName + ' @Translation.GetJS("ItemType.For") ' + $parent.baseItemInfo : itemTypeName }">
            <span data-bind="text: itemTypeName"></span>
            <span data-bind="if: $parent.baseRolledUpItemNumber && $parent.isRootItem">@Translation.GetJS("ItemType.For") <span data-bind="text: $parent.baseItemInfo"></span></span>
        </div>
    </a>
</script> 

On this page
Description
Actions to Take
Yes
No