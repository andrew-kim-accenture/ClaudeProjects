# Involved Parties Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/dc9a088dfc854dc2a089ce6ba414fff7.html?locale=en-US&state=PRODUCTION&version=2603
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
Involved Parties Tags

INVOLVED_PARTIES tags retrieve details of business partners and partner functions.

Template Structure

Below is the outline of the structure of a template with INVOLVED_PARTIES tags. You can copy/paste the structure in your template and enter any additional tags.



<<INVOLVED_PARTIES(ALL or partner function key of a specific partner function)>>
<<INVOLVED_PARTIES_HEADER>>
<<INVOLVED_PARTIES_HEADER_END>>
<<INVOLVED_PARTIES_LOOP>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.PartnerFunctionName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.PartnerFunctionKey)*>)>>
<<INVOLVED_PARTIES_LOOP_END>>
<<INVOLVED_PARTIES_FOOTER>>
<<INVOLVED_PARTIES_FOOTER_END>>
<<INVOLVED_PARTIES_END>>



The INVOLVED_PARTIES_LOOP should contain the CTX tags inside the C_TAG. Below are listed the supported CTX tags:



<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.PartnerFunctionName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.PartnerFunctionKey)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.ExternalId)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.Name)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.FirstName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.LastName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.Country)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.State)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.Region)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CityName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.PostalCode)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.TimeZone)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.AddressName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.AddressAdditionalName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.EmailAddress)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.Phone)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.VatNumber)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.TaxNumber1)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.TaxNumber2)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.Fax)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.BankAccount1)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.BankAccount2)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.PrimaryIndustry)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.BusinessPartnerType)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.SystemId)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.FormOfAddress)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.AddressName3)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.AddressName4)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.TaxJurisdiction)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.POBoxPostalCode)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.District)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.POBox)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.StreetPrefixName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.AdditionalStreetPrefixName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.StreetName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.StreetSuffixName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.AdditionalStreetSuffixName)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.HouseNumber)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.TransportZone)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CorrespondenceLanguage)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.MobilePhone)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(CustomFieldName))*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(CustomFieldName).AttributeValue)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(CustomFieldName). AttributeValueCode)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(DateCustomField).Format(y))*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(DateCustomField).Format(d))*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(DateCustomField).Format(ddMMyyyy))*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(DateCustomField).Format(yyyyMMdd))*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(DateCustomField).Format(yyyy-MM-dd))*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(DateCustomField).InUserTimeZone)*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(DateCustomField).InUserTimeZone.Format(yyyy-MM-dd))*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(DateCustomField).InUserTimeZone.Format(yyyy-MM-dd))*>)>>
<<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.CustomFields(DateCustomField).InUserTimeZone.Format(y))*>)>>

Note

CTX( Quote.InvolvedParties.CurrentInvolvedParty.xxxx) tags can be used only for document generation and not for building formulas.

Filter by Business Partner Key
Filtering by partner function key is possible in both .docx and .xlsx documents:

In a .docx template, pass the partner function key as an argument to the <<INVOLVED_PARTIES>> tag (for example, <<INVOLVED_PARTIES(BLT)>> ).

In an .xlsx template, add the partner function key as a condition for the <<INVOLVED_PARTIES>> tag (for example, <<INVOLVED_PARTIES(7X25 | PARTNER_FUNCTION: BLT)>>).

Limitations in Excel Documents

When using loop tags like C2, INVOLVED_PARTIES, and SECTIONS in a vertical sequence, each subsequent tag must be defined within a range that contains the same number of, or fewer, columns than the one defined in the tag above it.

In the given example, the first C2 loop has a range of 7x2, whereas the C2 tag below is defined with a range of 7x3. The second C2 loop may break during the document generation phase. To mitigate this issue, set the range of the loop tag above to match or exceed the number of columns than the tag below. For instance, in this example, you must change the range for the first C2 loop from 7x2 to 7x3.

Example of Involved parties tags in excel templates

The example illustrates the required structure for the C2 loop in Excel.

<<INVOLVED_PARTIES(7X2 | PARTNER_FUNCTION: All>> initializes the involved parties section and defines the layout of the table. It specifies that there will be 7 rows and 2 columns, with the column header PARTNER_FUNCTION and the valueAll for that column.

<<INVOLVED_PARTIES_LOOP(1X2)>> Starts a loop that will iterate over each involved party in the quote. It generates a row with 2 columns for each involved party.

The code <<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.PartnerFunctionName)*>)>> is a placeholder that will be replaced with the actual value of the current involved party's partner function name. It will be placed in the first column of each row.

The code <<C_TAG(<*CTX( Quote.InvolvedParties.CurrentInvolvedParty.PartnerFunctionKey)*>)>> is another placeholder that will be replaced with the actual value of the current involved party's partner function key. It will be placed in the second column of each row.

Related Information
What are Business Partners and Partner Functions?
Create Business Partner in SAP CPQ
Partner Functions
Involved Parties
Example Templates
On this page
Template Structure
Filter by Business Partner Key
Limitations in Excel Documents
Example of Involved parties tags in excel templates
Related Information
Yes
No