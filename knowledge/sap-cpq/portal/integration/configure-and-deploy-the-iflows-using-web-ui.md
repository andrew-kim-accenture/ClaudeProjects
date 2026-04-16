# Configure and Deploy the iFlows Using Web UI | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/0ab16dba6de94348b1af26ee90e9a116.html?locale=en-US&state=PRODUCTION&version=2603
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
Configure and Deploy the iFlows Using Web UI

If you have re-deployed key store (system.jks) in your SAP Cloud Integration tenant, you need to re-deploy all the iFlows to avoid the caching issues or re-start them to avoid caching related issues.

Connect to the tenant management node of the SAP Cloud Integration system with the URL http://<tenant management node URL>/itspaces.

Under the Discover tab, Click on the package SAP CPQ Integration with SAP S/4HANA.

Choose Copy on the top-right corner of the package overview page.

If the Integration package were being created for the first time, then you would see the message ‘Integration Package Created’. If not, you will see the below dialog box asking to either create a new copy of the package or to overwrite the existing integration package content. Choose Overwrite.

Select the Design mode to configure the iFlows.

Select the Integration Package copied.

All the iFlows will be shown/ listed under the ARTIFACTS tab of the package.

Choose the iFlows mentioned in the table below (one after the other) by choosing Actions  Configure.

Configure the sender system (in this example S/4HANA) and receiver system (in this example CPQ) details as explained below:

Choose Sender Tab: Choose Authentication Method as Client Certificate.

Browse for the certificate. See chapter: Certificate Management in SAP S/4HANA for the client Certificate.

Choose Receiver Tab: Enter the Address as CPQ API URL. Check section How to find CPQ API URL in appendix.

Choose the Authentication as Basic.

Enter the Communication User Credential in Credential Name.

Click Save and Choose Deploy.

Note

Repeat the same procedure (From 9a. to 9f. as mentioned above) for all the iFlows that have the same sender system as S/4HANA and Receiver System as CPQ.

Choose iFlow to configure the sender system (in this example CPQ) and receiver system (in this example S/4HANA) details. :

Choose Sender Tab: Choose Authorization as User Role.

Add Address as /CPQ/S4/Quote2Order.

Choose Receiver Tab: Select Receiver as S/4HANA.

Enter the host name as Cloud Connector URL, check section How to setup Cloud Connector or Contact your system administrator for these details.

Enter Client as the SAP S/4HANA system client. Proxy Type as On-Premise.

Choose the Authentication as Basic.

Enter the S/4HANA User Credential in Credential Name.

Choose More Tab: Enter <SID>CLNT<Client> in Recipient Partner Number. For Example: QKXCLNT260.

Enter SAP<SID> in Recipient Port. For Example: SAPQKX.

Enter Logical System you have created in S/4HANA in Sender Partner Number and Sender Port. For Example: CPQINTS4H.

Choose Save and Choose Deploy.

iFlows to be configured

Name of the iFlow

	

Description of the iFlow




Create Sales Quote Follow Up Document in SAP Business Suite

	

Creation of Sales Quote Follow Up Document in SAP Business Suite




Replicate Business Partner from SAP Business Suite

	

Business Partner Replication from SAP Business Suite




Replicate Material from SAP Business Suite

	

Material Replication from SAP Business Suite




Replicate Price Condition from SAP Business Suite

	

Price Condition Replication from SAP Business Suite




Replicate Sales Order Confirmation from SAP Business Suite

	

Creation of Sales Quote Follow Up Document in SAP Business Suite

Note

In case you have SAP CPS Integrated with SAP S/4HANA, And Product replication done from SAP S/4HANA to SAP CPS. You can configure the Iflow “Create Sales Quote Follow Up Document in SAP Business Suite” for receiver CPS as well to check configurable product characteristics in SAP CPS follow the below steps.

Choose Receiver Tab: Select Receiver as CPS.

Enter the host name as SAP CPS URL or Contact your system administrator for these details.

Enter Proxy Type as Internet and Select Method as GET.

Choose the Authentication as OAuth2 Client Credentials.

Enter the CPS OAuth2 Credential in Credential Name.

Yes
No