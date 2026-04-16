# DocuSign Integration for Quote 1.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/57fc8931b7854bf9a4bf9227dad5028a.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration


	
Configuration in DocuSign
	
Configuration in SAP CPQ
	
DocuSign Integration for Quote 1.0


	
Example and Use Cases for Signing Process
	
Multisign Process
	
Countersign process
	
DocuSign Document Revoke
	
DocuSign Integration for Quote 2.0
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
DocuSign Integration for Quote 1.0

The instructions below explain how to use the DocuSign integration with a Quote 1.0 tenant.

To set up the DocuSign integration in a Quote 1.0 environment, please refer to these instructions:

Configuration in DocuSign

Configuration in SAP CPQ

Please note that DocuSign recommends that you do not add files larger than 25MB to an envelope.

Note

If SAP CPQ has already been integrated with DocuSign prior to may 2017 Release, some changes within DocuSign should be performed. Prior to this Release, when integrating SAP CPQ and DocuSign, a DocuSign custom field had to be created through the DocuSign setup process. That custom field had the same format as placeholder \signhere_{r}\. This custom field is not needed anymore since all the mappings are performed automatically. Therefore, customers with an existing SAP CPQ - DocuSign integration need to delete this custom field within DocuSign. If it remains in DocuSign, the first signer of each document will have to sign the document twice.

Related Information
Example and Use Cases for Signing Process
Multisign Process
Countersign process
DocuSign Document Revoke
Yes
No