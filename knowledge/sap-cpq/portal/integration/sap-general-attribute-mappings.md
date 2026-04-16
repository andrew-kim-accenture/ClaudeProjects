# SAP General Attribute Mappings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/47549e687321488199a1f075008c27da.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create Communication User
	
Enable the Integration with SAP Cloud Integration
	
Enable Integration with SAP S/4 HANA ERP
	
Enable Integration with SAP Variant Configuration and Pricing
	
SAP General Attribute Mappings
	
Pricing Setup
	
Configure Workflow in SAP CPQ
	
Partner Functions
	
Product Replication Setup
	
Enable Quote and Item Comments
	
Configuration in SAP Event Mesh
	
Configuration in SAP Master Data Integration
	
Configuration for Integration in SAP S/4 HANA Cloud
	
SAP Cloud Integration Configuration
	
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
SAP General Attribute Mappings

After connecting the SAP CPQ to SAP Variant Configuration and pricing, the general attributes must be mapped.

You can do so using the following procedure:

Login to your SAP CPQ system using an Administrator User.

In the left menu bar, choose Setup  Setup.

In the left navigation bar, choose Providers  SAP Integrations.

In SAP Integrations screen, in the Back End section choose SAP General Attribute Mappings tile.

In Attributes (with Created Quote) screen, maintain the following Global Attributes:

Country/Region Code, for example, US.

Division as division maintained in the SAP S/4HANA Cloud, for example, 00.

Pricing Procedure Name as new pricing procedure maintained in SAP S/4HANA Cloud, for example, Z17024.

Pricing Procedure Name for Catalog Prices as new pricing procedure maintained in SAP S/4HANA Cloud, for example, Z17024.

Document Pricing Procedure Name as document pricing Procedure used in Pricing Procedure Determination in SAP S/4HANA Cloud, for example, S6.

Customer Pricing Procedure Name as Customer Pricing Procedure maintained in SAP S/4HANA Cloud, for example, ZR.

Exchange Rate Type as exchange rate type used in SAP S/4HANA Cloud, for example, M (average rate).

Note

Multiple values can be maintained for each of the above attributes using the Formula Builder. For example, US and DE can be maintained in the Country/Region Code attribute as per the market code using the formula [IF]([EQ](<*CTX( Market.Code )*>, 1710)){US}{[IF]([EQ](<*CTX( Market.Code )*>, 1010)){DE}{}[ENDIF]}[ENDIF].

Go to Attributes (with Created Quote)  Pricing During Configuration. Select the Source of Pricing Details as Condition Function and maintain the following information:

Base Price as PPR0

Selected Options as VASE

Service Profile as DSP1

Response profile as DSP2

Turn on Automatically Reconfigure Pricing Attributes on Pricing Procedure Change.

Go to Attributes (with Created Quote)  Pricing During Configuration. Select Source of Pricing Detail as Condition Type. and maintain the following information:

Base Price as PPR0

Selected Options as VASE, VA00 and PVA0

Service Profile as DSP1

Response Profile as DSP2

Turn on Automatically Reconfigure Pricing Attributes on Pricing Procedure Change and maintain Pricing Attribute Value Separator as |.

In Pricing Attributes, choose New Pricing Attribute  10 rows and maintain the following details:

Name

	

Formula

	

Evaluate per item




KOMK-KUNNR

	

<*CTX( Quote.Customer(BillTo).CustomerCode )*>

	

No




KOMK-WAERK

	

<*CTX( Market.CurrencyCode )*>

	

No




KOMP-PRSFD

	

X

	

No




KOMK_KUNNR

	

<* Eval(Right("0000000000<*CTX( Quote.Customer(BillTo).CustomerCode )*>", 10)) *>

	

No




KOMP-SRV_SERWI

	

<*eval(ucase("<* ValueCode(Service Profile) *>"))*>

	

Yes




KOMP-SRV_ESCAL

	

<*eval(ucase("<* ValueCode(Response Profile) *>"))*>

	

Yes




KOMK-VKORG

	

<*CTX( Market.Code )*>

	

No




KOMK-VTWEG

	

<*CTX( Pricebook.DistributionChannel )*>

	

No

Note

You must configure the same details on the Attributes (No Quote) tab.

Yes
No