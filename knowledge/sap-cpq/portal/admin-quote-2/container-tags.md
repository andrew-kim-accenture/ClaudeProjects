# Container Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/ff02ac4cd86f4986a4f33476a3d3be3e.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Fields, Calculations, Layout
	
Document Generation


	
Document Generation Template
	
Manage Content Documents
	
General Settings
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
Document Generation Tags


	
C Tags
	
Q Tags
	
Miscellaneous Tags
	
Special Tags
	
Custom Table Tags
	
Nested Products Tags
	
Container Tags
	
C2 Loop
	
Conditions
	
Quote Table Tags
	
SAP Subscription Billing Integration Tags
	
SECTIONS Loop
	
Involved Parties Tags
	
Tiered Pricing Tags
	
Usage Based Pricing Tags
	
Example Templates
	
Document Generation Libraries and Differences
	
Custom Quote Tabs
	
Quote Tables
	
Quote Fields
	
Quote Tab Permissions
	
Quote List Settings
	
Bulk Quote Deletion
	
Quote Visibility
	
Quote Acceptance Settings
	
Partner Functions
	
Solution Design
	
Quote Teams
	
Filtering Items in Quote
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Container Tags

Use container tags to display data from a container in SAP CPQ in a generated document.

Container tags must be in the main section of C2 tags.

Below is the basic structure of container tags:



<<MAIN>>
<<CONTAINER(ContainerName)>>
<<CONTAINER_HEADER>>
<<CONTAINER_HEADER_END>>
<<CONTAINER_ITEM>>
<<CONTAINER_ITEM_END>>
<<CONTAINER_FOOTER>>
<<CONTAINER_FOOTER_END>>
<<CONTAINER_END>
<<MAIN_END>>

Inside CONTAINER sections, use CONTAINER_TAG with a CTX tag to retrieve data (for example, <<CONTAINER_TAG(<*CTX(Container(Project Tasks).Row(2).Column(Total).GetFormatted))*>)>> returns the value of the Total column for the second row in the container, keeping the original format).

Yes
No