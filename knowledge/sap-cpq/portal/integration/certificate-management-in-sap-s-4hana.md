# Certificate Management in SAP S/4HANA | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/ead51d1eb35d4c069fc89a7d1c61a1a1.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Create User
	
Certificate Management in SAP S/4HANA
	
Release Inbound Interfaces
	
Create Business System for SAP S/4HANA
	
Define Logical System
	
Business Partner Replication from SAP S/4HANA to SAP CPQ
	
Material Replication from SAP S/4HANA to SAP CPQ using SOAP
	
Configuration for Filter Values
	
Business Configuration Set
	
Automatically Generate Integration Settings for Data Exchange
	
Pricing Condition Filter
	
Configuration in SAP Cloud Integration
	
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
Certificate Management in SAP S/4HANA

Prerequisite

The customer network environment should be prepared. The SSL should be enabled on SAP S/4HANA ABAP Server. SAP S/4HANA Server/Client Certificates should be signed by the supported CA which is trusted by SAP Cloud Solution and SAP Cloud Managed Services.

For preparing the network environment, network security team that takes care of the customer network is responsible.

SSL needs to be enabled on SAP ABAP server by SAP Basis Consultant.

Note

Ensure all the certificates used are valid and are not expired.

For details refer to Note 510007 - Setting up SSL on Web Application Server ABAP.

For requesting signed certificates by SAP, go to https://support.sap.com/tcs.

There are mainly two partners in the landscape, SAP side and Customer side.

SAP Cloud Solution certificates are signed by SAP Passport CA or TC Trust Center.

Download ROOT CA Certificates

Go to https://support.sap.com/en/offerings-programs/support-services/trust-center-services.html web site.

Navigate to Download > Root Certificates

Download the SAP Passport CA Certificates and Save.

Note

Save the certificates in .cer format.

Go to Cloud Platform Integration URL Ex: https://xxxx-tmn.hci.int.sap.hana.ondemand.com/itspaces/ and Login with admin user.

Navigate using path Monitor > Keystore under Manage Security

Download the ROOT Certificates of CPI with following names:

DigiCert Global Root G2

DigiCert Global Root CA

Note

In case of error encountered in downloading certificates, go to Internet explorer > Tools > Internet options > content > Certificates > Trusted Root Certification authorities. Export the relevant certificate from the list.

Maintain SSL Server Standard Trusted Cert List

In the SAP S/4HANA system access the following transaction:

Transaction Code

	

STRUST

Double-click SSL server standard PSE folder.

In the Certificate area, click the Import Certificate button to add the SAP Passport CA.

Add the imported certificate to the certificate list by clicking Add to Certificate List.

Click Save.

Maintain SSL System Client Cert and Trusted Cert List

Choose SSL client SSL Client(Standard) PSE folder.

From menu path choose Certificate > Import to import the SAP Passport CA certificate.

Switch from Display to Change mode.

From Menu Path choose Edit > Add Certificate to add the imported certificate to the chosen certification list.

Repeat previous 2 steps for Cloud Platform Integration Trust Root CA Certificates.

Click Save on the standard tool bar.

Note

In case no supported CA signed client certificates for SAP S/4HANA is available, it could be downloaded from the SAP CPI Certificate store, and then imported into SAP Trust Manager for use.

Export SAP S/4HANA Client Certificate

Expand SSL client SSL Client (Standard) PSE folder.

Double-click target instance in the folder.

Select the field Owner, in the Own Certificate section by double clicking.

Click the Export button.

Save the certificate into a file with format Base64 and named with S4HANAClient.cer for example.

Note

This exported client cert should be uploaded while configuring IFlow in CPI system.

Mapping Cloud Connector Certificate to Integration User in SAP S/4HANA
Purpose

Obtain the SAP CPI client certificate from your administrator. The certificate is available when the tenant is provisioned by SAP. You can also receive it on creating an incident in the component for your respective SAP Middleware (LOD-CPI/LOD-PI).

Procedure

Access the transaction using one of the following navigation options:

Transaction Code

	

SM30

In the Maintain Table Views screen, enter VUSREXTID in the Table/View field.

Click Maintain.

In the External ID type field, enter DN.

Click New Entries.

Next to the External ID field, click Import.

Import the Cloud Connector certificate obtained from your administrator.

Example: cloudconnectorclient.cer

Enter the sequence number.

Example: 000

In the User field, enter the technical S/4HANA user you have created in the S/4HANA system. Refer Section 3.1.1 Create User.

For example: CPQS4INTEG

Activate the user by checking the Activated field.

Click Save.

On this page
Download ROOT CA Certificates
Maintain SSL Server Standard Trusted Cert List
Maintain SSL System Client Cert and Trusted Cert List
Export SAP S/4HANA Client Certificate
Mapping Cloud Connector Certificate to Integration User in SAP S/4HANA
Yes
No