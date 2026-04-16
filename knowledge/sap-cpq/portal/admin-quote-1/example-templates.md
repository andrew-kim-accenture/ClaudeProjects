# Example Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/5681c21559064c41ae973ba8dc87ade9.html#microsoft-word-example-templates
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
Example Templates

You can download Microsoft Word and Microsoft Excel templates that contain several frequently used tags for document generation and CTX tags for retrieving specific data.

The templates contain some simple examples and can be used as a reference for the proper usage of document generation tags.

Microsoft Excel Example Templates
Download the Excel Templates Examples zip file that contains these templates:

Container Tags Example - a simple template for retrieving data from a container column using CTX tags.

C2 Loop with PTYPE and Condition - this template contains three examples for using the C2 loop with product type tags and condition tags.

Quote Tables Excel - a simple template for retrieving data from a quote table.

C2 Loop Listing Items - an example Microsoft Excel template with two sheets. The first sheet contains Q tags for retrieving basic quote information and a C2 loop for listing items. The second sheet contains Q tags and CTX tags for retrieving customer details.

Involved Parties - a simple Microsoft Excel template for getting business partner and partner function details using document generation tags and CTX tags.

Custom Table Excel - a simple Microsoft Excel template for retrieving custom table data in a generated document.

Note

All loop tags must follow the format <<TAG_NAME(range|entity_name)>> where the entity_name parameter is optional and only applicable for CONTAINER, QUOTE_TABLE and CUSTOM_TABLE tags. In order for the tag to parse properly, all required parts must be defined. The range must not be missing, and for the tags mentioned above, the entity_name must not be missing either. For example, the following tag would be invalid, <<QUOTE_TABLE(4x2)>>.

Note

Importing product images of any file type is not supported for Excel type document generation templates.

Microsoft Word Example Templates
Download the Word Templates Examples ZIP file that contains these templates:

C2 Loop Simple - a simple template that lists items, their descriptions and product types. This template also contains CTX tags that retrieve the list price of items and the total list price.

C2 Loop with PTYPE Tag - a template with the C2 loop and the PTYPE tag. The PTYPE tag retrieves items that have the Software product type in the first block and the Hardware product type in the second block.

C2 Loop with Container Tags - the tags in this template retrieve data from columns in a container.

Quote Tables Word - a simple Microsoft Excel template for retrieving data from a quote table.

C2 Loop with Conditions - the C2 loop lists all items that have a product type different from Service. Additionally, a condition is added so that items that have a list price equal to 0 are not displayed in the generated document.

Involved Parties - a simple Microsoft Word template for getting business partner and partner function details using document generation tags and CTX tags.

Custom Table Word - a simple Microsoft Word template for retrieving custom table data in a generated Microsoft Word document.

On this page
Microsoft Excel Example Templates
Microsoft Word Example Templates
Yes
No