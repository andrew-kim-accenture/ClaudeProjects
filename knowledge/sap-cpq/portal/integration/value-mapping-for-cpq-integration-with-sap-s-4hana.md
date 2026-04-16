# Value Mapping for CPQ integration with SAP S/4HANA | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/fa25aeae966444f090d935825b724ee0.html?locale=en-US&state=PRODUCTION&version=2603
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


	
SAP S/4HANA Sales Order Integration for Quote 1.0


	
Purpose
	
Preparation
	
Configuration


	
Configuration in SAP S/4HANA
	
Configuration in SAP Cloud Integration


	
How to get the SAP Cloud Integration client certificate
	
View prepackaged iFlows using SAP Cloud Integration Web UI
	
Creating User Credentials in SAP Cloud Integration System
	
Configure and Deploy the iFlows Using Web UI
	
Value Mapping for CPQ integration with SAP S/4HANA
	
Configuration in SAP CPQ
	
Initial Data Load
	
Manual Build Steps
	
SAP S/4HANA Sales Order Integration for Quote 2.0
	
SAP Billing and Revenue Innovation Management Integration
	
Integration with Sales Orders in SAP S/4HANA Cloud
	
Integration with SAP S/4HANA Cloud Solution Order
	
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
Value Mapping for CPQ integration with SAP S/4HANA

Connect to the tenant management node of the SAP Cloud Integration system with the url: http://<tenant management node>/itspaces.

Go to Design view.

Select the Integration Package in your workspace.

All the iFlows will be shown/ listed under the Artifacts section of the page.

Select the iFlows with name Value Mapping for SAP CPQ integration with SAP S4HANA and choose Actions button on the right and select Configure.

All the Mapping Values will be shown/ listed.

Map all the Value mapping fields as per below sections.

Choose Save and then Deploy.

Product Type

Mention the Material Group in SAP S/4HANA system in left side.

Enter the respective Product Type in CPQ system in right side. Maintain the Product Type created in 3.3.3.1 Maintain Product Type section.

Product Category

Mention the Product Hierarchy in SAP S/4HANA system in left side.

Enter the respective Product Category in CPQ system in right side. Maintain the Product Category created in 3.3.3.2 Maintain Product Category section.

Role Code

Mention the Business partner role code in SAP S/4HANA system in left side.

Enter the respective Business partner role code in CPQ system in right side. Maintain the Business partner roles available in CPQ system Customer Role Default under Customer/ Customer Role.

Country

Mention the Country Code in SAP S/4HANA system on left side. You can check Country Code in S/4HANA in T005 Table.

Enter the respective Country Code in CPQ system in right side. Maintain the Countries Abrev3 available in CPQ system under General as Countries.

Region

Mention the Region Code in SAP S/4HANA system on left side. You can check Region Code in S/4HANA in T005S Table.

Enter the respective Region Code in CPQ system in right side. Maintain the States Abrev2 available in CPQ system under General as States.

Pricing Condition

Mention the Pricing Condition Code in SAP S/4HANA system on left side.

Enter the respective Pricing Description to be used in CPQ system in right side.

On this page
Product Type
Product Category
Role Code
Country
Region
Pricing Condition
Yes
No