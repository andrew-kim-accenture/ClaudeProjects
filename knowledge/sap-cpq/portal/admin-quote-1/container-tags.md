# Container Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/ff02ac4cd86f4986a4f33476a3d3be3e.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration


	Setup Help

	
Document Generation


	
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
	
Example Templates
	
Document Generation Template
	
Supporting Custom Fonts for the Document Generation Process
	
Document Generation Libraries and Differences
	
Setup Administration
	
Manage Content Documents
	
Document Generation User Journey
	
Document Generation Tips and Tricks
	
Custom Quote Tabs
	
Quote Tables
	
Quote Custom Fields
	
Quote Tab Permissions
	
Quote Item Custom Fields
	
Key Attributes
	
Column Headings
	
Search Fields
	
Bulk Deletion
	
Quote Visibility
	
Cart Level Aggregates
	
Quote Acceptance Settings
	
Standard Fields
	
Quick Config (also referred to as Reverse Search )
	
Quick Product Search in the Quote
	
Scheduled Quote Deletion (Soft Delete)
	
Alerting Users About Parallel Work on Quotes (Administrator Side)
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
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