# Maintain and Deploy Value Mapping for CPQ Integration with S4HANA Cloud for Solution Order | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/c105ab5f78684f1da1e168d0aaa35ddf.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems


	
SAP ERP Integration for Quote 1.0
	
Integration with SAP S/4HANA
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order


	
Preparation
	
Configuration in SAP CPQ
	
Configuration in SAP Event Mesh
	
Configuration in SAP Master Data Integration
	
Configuration for Integration in SAP S/4 HANA Cloud
	
SAP Cloud Integration Configuration


	
Creating User Credentials in SAP Cloud Integration System
	
Client Certificate Authentication - SAP Cloud Integration Configuration
	
Copy package SAP CPQ - Quote 2.0 Integration with SAP S/4HANA Cloud Solution Order to Design section of SAP Cloud Integration
	
Configuration of the Integration Flow - Replicate Quote 2.0 From SAP CPQ To SAP S/4HANA Cloud Solution Order
	
Configuration of the Integration Flow - Update SAP CPQ Quote Status
	
Configuration of the Integration Flow - Replicate Product from SAP S/4HANA Cloud to SAP CPQ
	
Configuration of the Integration Flow - Replicate Business Partner from SAP Master Data Integration to CPQ
	
Maintain and Deploy Value Mapping for CPQ Integration with S4HANA Cloud for Solution Order
	
iFlow: Supported Grant Types for SAP CPQ API Authentication
	
Data Replication
	
Variant Configuration Integration
	
SAP Sales Cloud Integration
	
SAP Commerce Cloud Integration
	
SAP Subscription Billing Integration for Quote 2.0
	
Integration with SAP Master Data Integration
	
Identity Provisioning Service Integration
	
CX AI Integration
	
Integration with Central Entry Point
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Maintain and Deploy Value Mapping for CPQ Integration with S4HANA Cloud for Solution Order

By default, the required value mappings are available in the integration flow. If there are any further mappings required as per business needs, they can be added as mentioned below.

Procedure

Access the SAP Cloud Integration Web UI from the provisioning email. It should be in the format, http://<tenant management node URL>/itspaces.

Choose the Design and select the copied integration package.

Choose Artifacts  Actions  Configure for the integration flow, Value Mapping for CPQ Integration with S4HANA Cloud for Solution Order.
Note

The identifiers in the value mapping must be identical to the names that are mentioned in the following chapters, including capitalization. As these identifiers are used to call the value mapping inside the integration flow, any deviations would lead to an integration flow failure. The value mapping would not be accessible if the respective identifier cannot be found.

Value Mapping - SAP CPQ Partner Function Key - SAP S/4HANA Cloud Partner Function:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: CPQ

Identifier: PartnerFunctionKey

Agency: S4HC

Identifier: PartnerFunction

Enter the respective Partner Function keys in the SAP CPQ system in the left column, CPQ, PartnerFunctionKey.

Enter the corresponding Partner Functions in the integration flows system in the right column S4HC, PartnerFunction.

Value Mapping - SAP CPQ Currency – SAP S/4HANA Cloud Currency:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: CPQ

Identifier: Currency

Agency: S4HC

Identifier: Currency

Enter the Currency of SAP CPQ system in the left column, CPQ, Currency.

Enter the corresponding Currency of SAP S/4HANA system in the right column S4HC, Currency.

Value Mapping - SAP CPQ Order Item Type - SAP S/4HANA SOLO Item Order Item Type:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: CPQ

Identifier: OrderItemType

Agency: S4HC

Identifier: SOLOItemOrderItemType

Enter the Order Item Type of SAP CPQ system in the left column, CPQ, OrderItemType.

Enter the corresponding SOLO Item Order Item Type of SAP S/4HANA system in the right column S4HC, SOLOItemOrderItemType.

Value Mapping - SAP CPQ Unit of Measure - SAP S/4HANA Quantity Unit:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: CPQ

Identifier: UnitofMeasure

Agency: S4HC

Identifier: QuantityUnit

Enter the Unit of Measure of SAP CPQ system in the left column, CPQ, UnitofMeasure.

Enter the corresponding Quantity Unit of SAP S/4HANA system in the right column S4HC, QuantityUnit.

Value Mapping - SAP CPQ Order ItemType - SAP S/4HANA Quotation Item Order Item Type:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: CPQ

Identifier: OrderItemType

Agency: S4HC

Identifier: QuotationItemOrderItemType

Enter the Order Item Type of SAP CPQ system in the left column, CPQ, OrderItemType.

Enter the corresponding Quotation item order item type Responsible of SAP S/4HANA system in the right column S4HC, QuotationItemOrderItemType.

Value Mapping - SAP CPQ Owner ID - SAP S/4HANA Person Responsible:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: CPQ

Identifier: OwnerID

Agency: S4HC

Identifier: PersonResponsible

Enter the Owner ID of SAP CPQ system in the left column, CPQ, OwnerID.

Enter the corresponding Person Responsible of SAP S/4HANA system in the right column S4HC, PersonResponsible.

Value Mapping - SAP S/4HANA Cloud Time Zone Code - SAP CPQ Time Zone:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: S4HC

Identifier: TimeZoneCode

Agency: CPQ

Identifier: TimeZone

Enter the Time Zone Code of SAP S/4HANA Cloud system in the left column, S4HC, TimeZoneCode.

Enter the corresponding Time Zone of SAP CPQ system in the right column CPQ, TimeZone.

Value Mapping - SAP S/4HANA Cloud Region Code- SAP CPQ State:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: S4HC

Identifier: RegionCode

Agency: CPQ

Identifier: State

Enter the Region Code of SAP S/4HANA Cloud system in the left column, S4HC, RegionCode.

Enter the corresponding State of SAP CPQ system in the right column CPQ, State.

Value Mapping - SAP S/4HANA Cloud Country Code - SAP CPQ Country:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: S4HC

Identifier: CountryCode

Agency: CPQ

Identifier: Country

Enter the Country Code of SAP S/4HANA Cloud system in the left column, S4HC, CountryCode.

Enter the corresponding Country of SAP CPQ system in the right column CPQ, Country.

Value Mapping - SAP S/4HANA Cloud Product Type Code - SAP CPQ Order Item Type:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: S4HC

Identifier: ProductTypeCode

Agency: CPQ

Identifier: OrderItemType

Enter the Product Type Code of SAP S/4HANA Cloud system in the left column, S4HC, ProductTypeCode.

Enter the corresponding Order Item Type of SAP CPQ system in the right column CPQ, OrderItemType.

Value Mapping - SAP S/4HANA Cloud Industrial Sector Code - SAP CPQ Primary Industry:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: S4HC

Identifier: IndustrialSectorCode

Agency: CPQ

Identifier: PrimaryIndustry

Enter the Industrial Sector Code of SAP S/4HANA Cloud system in the left column, S4HC, IndustrialSectorCode.

Enter the corresponding Primary industry of SAP CPQ system in the right column CPQ, PrimaryIndustry.

Value Mapping - SAP S/4HANA Cloud Form of Address Code - SAP CPQ Form of Address:

In the Bi-Directional Mapping, create a new mapping by selecting Add.

Enter the following details from left to right:

Agency: S4HC

Identifier: FormOfAddressCode

Agency: CPQ

Identifier: FormOfAddress

Enter the form of Address code keys of SAP S/4HANA Cloud system in the left column, S4HC, FormOfAddressCode.

Enter the corresponding form of Address of SAP CPQ system in the right column CPQ, FormOfAddress.

Choose Save after completing the configuration.

Choose Deploy after completing the whole configuration.

Choose Monitor from the left navigation bar.

Choose All from Manage Integration Content.

Check if the deployment was successful. The Status should be Started.

Yes
No