# Accessibility | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f21989f09f494ce1a537942ae2523dc6/8c6cbba040dc434abd15ca559a85b7eb.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey
	
Load Existing Quotes
	
Quote
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
Accessibility

Implementation of accessibility allows persons with impairments to use SAP CPQ seamlessly and with no impediments (with the help of assistive technologies).

You can administer the feature on your own by enabling/disabling the toggle switch Enable Accessibility Features in the User Page. This toggle switch enables you to turn off accessibility features in case the page-loading time is slower.

Note

Administrators who have added tooltips to their customized HTML templates should bear in mind that tooltips with custom HTML elements will be parsed properly in the pages only if the Enable Accessibility Feature toggle switch is turned on. Otherwise, the text from the tooltips surrounded with unresolved HTML markings will be displayed in the pages they are added to.

Note

Accessibility features are supported in the Quote 2.0 engine, in the user side of SAP CPQ. Administrator setup sections have not been made accessible for persons with impairments.

Color and Contrast Settings

SAP CPQ offers Dark and Light high contrast themes for the user interface of the application, specifically designed for Quote 2.0. The changes are applied only on User part of application (not on the Setup page).These themes have been added to ensure compliance with accessibility standards, giving users the option to select their preferred theme on the User Page  User Details tab. It is important to be aware that users who have customized templates may encounter problems with the new themes, as they may not function as intended due to differences in the HTML code of the customized templates and the CSS selectors, which are designed for the HTML of the most recent template version.

Labels

All interactive user interface elements have clearly defined labels and ARIA labels. ARIA labels provide metadata, which is recognized and read by screen readers, while it isn’t necessarily visible in the user interface. While labels can consist of only one word, the corresponding ARIA labels describe that word in more detail and, in that way, make navigation through the user interface more convenient for screen-reader users.

Labels are properly linked with elements they refer to (for example, clicking a label next to a checkbox selects or deselects that checkbox). Furthermore, all label alternatives (such as icons) have appropriate tooltips. 

Visible Focus

Focus provides users with a clear indication of the current position where the action is taking place on the screen. This position is indicated with the highlighted frame around each element. Users can navigate through interactive UI elements either with a mouse or with a keyboard. 

Note

Proper tab ordering (navigation order of focusable UI elements) is a part of another group of accessibility requirements, which are to be addressed in one of the following SAP CPQ releases.  

These requirements have been covered for Quote 2.0 and in the following pages: 

Catalog

Load Existing Project/Quotation (all tabs) 

Login

Forgot Password

Register

Cart (Quotation, Additional Info, Documents, Customer Info, and Solution Design tabs)

Change Document Generation Template

Configurator

User Page (all tabs)

Screen Titles

All pages in SAP CPQ have an appropriate title in the browser tab, which indicates the purpose of the currently opened screen. These titles are recognized and read by screen readers.

Screen titles make it easier for you to navigate the application since you can quickly decide whether the content of a screen is relevant to you. Furthermore, you can instantly learn which screen is opened in the browser by using the Alt + Tab keyboard shortcut.

Tab Indexes

Users can navigate through all user interface elements with their Tab key on the listed pages. Navigation through SAP CPQ UI follows the standard user journey in SAP CPQ and the logical reading order.

Catalog

All Quote tabs

Choose Template page in the document generation process (the popup for signing documents with AdobeSignisn’t covered)

Load Existing Project/Quotation (for Quote 2.0 engine only)

Configurator

Approvals

Approval History

User Page

Keyboard Support

All user interface elements in the user side are accessible via keyboard. Keyboard navigation makes it easier for users of assistive technologies to read and operate SAP CPQ. It follows the standard user journey in SAP CPQ and the logical reading order.

Enter activates the element that is currently in the focus (for example, if Catalog is in focus, pressing Enter opens the Catalog page with items). Space opens the drop-down list of elements. Using the up and down arrows you can navigate between the items in the drop-down list and pressing Enter selects the element that is in focus.

SAP CPQ also supports several keyboard shortcuts that can make navigation through the application easier. You can use the following keyboard shortcuts:

Home - takes you to the top of the page.

End - takes you to the bottom of the page.

Tab - focuses on the next UI element.

Shift + Tab - focuses on the previous UI element.

Alt + F2 - focuses on the next group of UI elements.

Shift + Alt + F2 - focuses on the previous group of UI elements.

The rest of the keyboard support requirements will be delivered in the following releases.

Text Alternative for Non-Textual Content

You can add textual replacements for all images in SAP CPQ. These text alternatives are introduced in accordance with the world-wide accessibility standards to assist users with visual impairments.

Text alternatives can be defined in the Alt Text fields in all places in Setup where images can be added.

Correct Error Handling

The correct error handling accessibility requirement is introduced in accordance with the world-wide accessibility standards to assist users with impairments.

In case of an input error in the user side, the location of the error will be indicated in the user interface, accompanied by its short description, and hints for the error-correcting action.

Error Prevention

Whenever you trigger one of the actions listed below, a popup window with information about one-time and recurring total values in the quote is displayed and you are asked to confirm the selected action before proceeding.

Place Order

Release Quote To SAP Commerce

Accept Proposal

Reject Proposal

Update Sales Quote

Create Quote in CRM

The purpose of this functionality is to make sure users wish to proceed with execution of actions that may imply legal and financial obligations, or cause data to be lost or sent to other systems (such as SAP S/4HANA).

Group Skipping

It's possible to skip over groups of user interface elements (such as rows of a single quote table) via keyboard shortcuts.

By skipping groups of user interface elements, you navigate through the contents of a page more quickly and efficiently, without having to focus on every user interface element individually.

Shortcuts that are used for group skipping are Alt + F2 (skipping forward) and Shift + Alt + F2 (skipping backward).

Information, Structures and Relationships

The Information, structures, and relationships topic of the SAP Accessibility Standard is introduced to SAP CPQ to further assist users with disabilities.

This topic, as well as previous topics from the SAP Accessibility Standard, is implemented on the user side of SAP CPQ for the Quote 2.0 engine.

Now, the content structure and formatting of page elements in SAP CPQ are organized in a more logical and consistent way. The result is a coherent and predictable interface that is easily identified by assistive technologies. All SAP CPQ features and the user interface itself remain unchanged and fully functional.

Purpose and Target of a Reference
All links and menu buttons in user side of SAP CPQ have a clearly defined name which makes it clear for the user what the target and the purpose of the link are. A reference is clearly described and the user knows what the reference links to.
Consistent Use of Identical UI-Elements
All user interface elements that have the same appearance and the same function are now consistently labeled and used throughout SAP CPQ.
Two Senses-Concept

All information throughout the SAP CPQ user side is conveyed using textual descriptions, in addition to other sensory means (for example, color).

On this page
Color and Contrast Settings
Labels
Visible Focus
Screen Titles
Tab Indexes
Keyboard Support
Text Alternative for Non-Textual Content
Correct Error Handling
View all
Yes
No