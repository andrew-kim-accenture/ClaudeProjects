# Branding | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/315d2d2a47dd47909b2af60a6c574d8f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design


	Setup Help

	
Branding
	
Catalog Layout
	
Responsive Templates
	
Obsolete Features
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Branding

A brand in SAP CPQ defines the look of the user interface (colors, images, and visual styles). Users can see the same products and pricing, while having different user interface depending on the brand they belong to. For example, different user interfaces can be displayed to anonymous website visitors, to internal users, and to partners.

Example

If Company A is reselling Company B products, when a salesperson from Company A logs into company B's SAP CPQ, they are going to have the same branding as company A. However, when the user from company B logs into the same SAP CPQ, they are going to have the same branding as company B.

Branding Administration
Administrators can set up branding in UI Design  Branding, on both quote engines. In this page, you can search through existing brands, you can delete, or edit them, and you can create new brands.
Note

You need to have the administrator role assigned to see these settings.

Accordingly, you are able to choose the brand when administering different features in SAP CPQ (for example, users, permission groups and document generation templates).

Create a Brand

Go to UI Design  Branding.

Click Add New.

Populate the fields:

Field Name

	

Description




Branding Name

	

Descriptive name of the brand.




Default Brand

	

Default brand is applied for all newly created users.




Branding System Id

	

Generated automatically from the brand name.




Start page

	

URL to the page that will first open when users with the specific brand log in (for example, /quotation/LoadQuote.aspx).




Top Right Image(Logo)

	

Logo image to be displayed in the top right corner of the screen. Recommended image size is 180px x 60px. Images must be in a .gif format. Additionally, the images need to be same height. Extensions are case-sensitive. Make sure the extension .gif is in lower case. Otherwise, an error can be displayed stating that the extension is wrong.




Top Left Image(Logo)

	

Logo image to be displayed in the top left corner of the screen. Recommended image size is 180px x 60px. Images must be in a .gif format. Additionally, the images need to be same height. Extensions are case-sensitive. Make sure the extension .gif is in lower case. Otherwise, an error can be displayed stating that the extension is wrong.




Header Image

	

Image to be displayed in the screen header.




Styles section

	

Relevant for the responsive design.




Responsive CSS file

	

Should contain the .css file for the responsive design pages.

Save the changes.

Changing the SAP CPQ Style

If you wish to change the default look of SAP CPQ, you can do it through the available CSS files, or create new files. You can first download the CSS file and responsive CSS file from the default branding and then update them accordingly and reupload them as part of the new branding. If you are creating new files, make sure that their extension is .css.

Change Logo in Responsive Design

Upload the logo image in General  File Management  Additional Files.

Create a custom .css file and include your image using this code:



.cpq_logo {
             background: url("/mt/DOMAIN_NAME/additionalfiles/FILE_NAME") no-repeat left;
}Default brand is applied for all newly created
												users. Additionally, if you don’t select an image or
												a style for a non-default brand, those used in the
												default brand will be used.


Upload the .css file in the Responsive CSS file field in branding.

Users pertaining to that brand will see the new logo after they log in.

Yes
No