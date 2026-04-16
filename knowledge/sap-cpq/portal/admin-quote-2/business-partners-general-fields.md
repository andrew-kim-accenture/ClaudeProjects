# Business Partners General Fields | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/23b57447242b4e098344fc970615fd84.html?locale=en-US&state=PRODUCTION&version=2603
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


	
What are Business Partners and Partner Functions?
	
Involved Parties and Customers – Differences
	
Create Business Partner in SAP CPQ


	
Business Partners General Fields
	
Business Partner Custom Fields
	
Business Partner Sales Area Tab
	
Business Partner Permissions
	
Managing Relationships Between Business Partners
	
Create Business Partner in External Systems and Import into SAP CPQ
	
Partner Functions
	
Create Partner Functions in External Systems and Import into SAP CPQ
	
Synchronize Business Partners and Partner Functions
	
Involved Parties
	
Bulk Business Partner Import/Export
	
Business Partner Relationship Category
	
Bulk Delete Business Partners
	
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
Business Partners General Fields

The following table describes the mandatory and optional general data for maintaining a business partner.

Field	Description	Max. Character Length


Name (required)

	

The name of the business partner, as it will display on the quote. This can be the name of an organization or the name of a person.

	

40




System ID (required)

	

Generated automatically from the business partner name and the addition _cpq.

Be careful when changing the value of System ID as it will be is used for matching business partners in the source and target environments in the deploy/send process. The Deploy/Send feature is currently not supported for Business Partners.

	

300




External ID

	

It is populated automatically when the business partner is sent via the API to SAP CPQ or when it is imported from external systems. The external ID shouldn’t be changed manually on the business partner in SAP CPQ unless the ID is also changed in the external system. The external ID is replicated successfully only if the business partner has the Customer role defined.

	

18




First Name

	

The first name of the contact person. If the business partner is an organization, then this should be the first name of the contact person of the organization.

	

128




Last Name

	

The last name of the contact person. If the business partner is an organization, then this should be the last name of the contact person of the organization.

	

128




E-Mail

	

E-mail address of the business partner.

	

256




Telephone

	

The phone number of the business partner.

	

132




Fax

	

The fax number of the business partner.

	

132




Form of Address

	

A short code for the form of address .

	

4




Address 1 (required)

	

The primary address of the business partner.

	

40




Address 2

	

The secondary address of the business partner.

	

40




Address Name 3

	

A third address name line.

	

40




Address Name 4

	

A fourth address name line.

	

40




City

	

The city of the business partner.

	

256




ZIP Code

	

The ZIP code of the city of the business partner.

	

10




Region

	

The region of the business partner.

	

6




Country/Region

	

The country or region of the business partner.

	

3




State

	

The state of the business partner.

	

6




Time Zone

	

The time zone of the business partner.

	

32




Business Partner Type

	

A business partner can be an Organization or a Person. A descriptive piece of information.

	

N/A




Primary Industry

	

The industry in which the business partner is active. A descriptive piece of information.

	

100




Partner ID

	

Unique identifier for the business partner.

	

10




VAT Number

	

The VAT registration number of the business partner.

	

20




Tax Number 1

	

A primary tax identification number.

	

60




Tax Number 2

	

A secondary tax identification number.

	

60




Bank Account 1

	

The primary bank account of the business partner.

	

35




Bank Account 2

	

The secondary bank account of the business partner.

	

35




Tax Jurisdiction

	

The tax jurisdiction code of the business partner.

	

15




District

	

The district of the business partner.

	

256




PO Box

	

The post office box number of the business partner.

	

10




Street Prefix Name

	

The prefix portion of the street name.

	

256




Additional Street Prefix Name

	

An additional prefix portion of the street name.

	

256




Street Name

	

The street name of the business partner.

	

256




Street Suffix Name

	

The suffix portion of the street name.

	

256




Additional Street Suffix Name

	

An additional suffix portion of the street name.

	

256




House Number

	

The house or building number.

	

256




Transport Zone

	

The transport or delivery zone.

	

10




Correspondence Language

	

The preferred correspondence language of the business partner.

	

35




Mobile Phone

	

The mobile phone number of the business partner.

	

132

Note

If you've enabled the sales area, Name 2, Name 3, and Name 4 fields are also displayed with values replicated from SAP S/4HANA, if available. These four fields are fully aligned with the name representation is SAP S/4HANA.

Visibility Permissions for Business Partner Fields

Administrators can now define visibility permissions for standard Business Partner fields. This functionality allows flexible and customized user experiences by controlling visibility and editability.

Configuring Permissions

To configure visibility permissions for Business Partner fields:

Navigate to Setup    Business Partners    Business Partner Fields.

Open the Fields Overview tab.

A list of all fields is displayed with options for setting visibility permissions.

Permission Options

Same Permission for All Permission Groups:

When enabled, the same permission level applies to all permission groups. The available options are:

Hidden: The field is not visible to users.

Read-Only: Users can view the field but cannot edit it.

Editable: Users can view and modify the field.

If this option is disabled, specific permissions (Read-Only or Editable) can be assigned to individual permission groups.

Note

Fields like Name and Business Partner Type are always required, so their permissions cannot be changed by the administrator.

In case if you are using custom templates on Involved Parties tab, please update them in order to use permissions on Business Partner fields.

Related Information
Involved Parties
Partner Functions
On this page
Visibility Permissions for Business Partner Fields
Related Information
Yes
No