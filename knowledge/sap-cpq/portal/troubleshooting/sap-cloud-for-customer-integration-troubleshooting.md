# SAP Cloud for Customer Integration Troubleshooting | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/665a9ee212394653a84a393035090802/8dbaeb36449d4f68b9bafee1aa1fe1fd.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ TroubleshootingVersion: 2603English
Provide feedback on our search

	
SAP CPQ Troubleshooting
	
Integrations Troubleshooting


	
SAP Cloud for Customer Integration Troubleshooting


	
Error Diagnostics - SAP Cloud for Customer Integration
	
Variant Configuration Integration Troubleshooting
	
Configurator Troubleshooting
	
Document Generation Troubleshooting
	
Catalog Troubleshooting
	
Quote Troubleshooting
	
User Interface Troubleshooting
	
Setup Troubleshooting
	
Login Troubleshooting
	
Scripting Troubleshooting
	
Performance Troubleshooting
SAP Cloud for Customer Integration Troubleshooting

This section provides more information about common issues that may occur when SAP CPQ is integrated with SAP Cloud for Customer, and when using the SAP Cloud for Customer IFlow on SAP Cloud Integration as middleware for other integrations.

1. The IFlow defined on SAP Cloud Integration for the integration SAP CPQ - SAP Cloud for Customer is used as middleware for API calls in an integration with another CRM. getQuoteContent API is used for fetching the quote content and the endpoint in Providers is set up accordingly. However, the log shows that SAP CPQ is calling the getoppdetailsfornewquote API instead. What may be the cause of this?

To solve this, remove the opportunity ID from the URL and the getQuoteContent API will be used. SAP CPQ is calling the getoppdetailsfornewquote API because the opportunity ID is passed within the URL to SAP CPQ. Currently, SAP CPQ has two integrations with SAP Cloud for Customer. In the legacy integration, users land to SAP CPQ from an opportunity, while in the new integration, users land to SAP CPQ from a sales quote. Consequently, if the opportunity ID is passed to SAP CPQ, the system automatically calls the getoppdetailsfornewquote API used in the legacy integration.

2. Why is custom field data missing in SAP CPQ on quote creation?

If data is missing on quote creation, make sure that all the necessary custom fields are created on the SAP CPQ side. See Field Mapping.

3. The error message (500) Internal Server Error appears when landing to SAP CPQ. What is causing this?

This error most likely occurs on the SAP Cloud Integration side. You should check which endpoint is set for the Replicate Quote to SAP CPQ artifact and check the logs for the artifact. On the SAP CPQ side, verify that the same endpoint is set in Setup  Providers  Providers  SAP  Cloud Platform in C4C CRM Setttings and that the REST API base URL address has the correct SAP Cloud Integration base URL set as a value in Common Settings.

4. When creating a new sales quote or editing an existing one in SAP Cloud for Customer, the SAP CPQ IFrame can't be loaded and the quote can't be accessed. How can this be fixed?
Two scenarios are possible here depending on the exact error:

If, in the browser console (F12), the following error message appears: Refused to frame 'https://yourdomain.cpq.cloud.sap/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self' *.dev.sapbydesign.com *.crm.ondemand.com *.c4c.sapbybriscloud.cn *.visual.force.com", the issue is that SAP CPQ is not allowed to load in SAP Cloud for Customer. To fix this, go to Setup  General   Application Parameters  Security and edit the application parameter URLs that may Embed CPQ so that it includes the SAP Cloud for Customer domain.

For example, if the SAP Cloud for Customer URL is https://my311386-sso.vlab.sapbydesign.com/, you should change the parameter value from: *.dev.sapbydesign.com *.crm.ondemand.com *.c4c.sapbybriscloud.cn *.visual.force.com to: *.dev.sapbydesign.com *.crm.ondemand.com *.c4c.sapbybriscloud.cn *.visual.force.com *.vlab.sapbydesign.com.

If, in the browser console (F12), the following error message appears: Refused to display <url> in a frame because ‘X-Frame-Options’ is set to ‘deny’. check the URL in the error message. If the URL contains a SAMLRequest parameter or anything related to SAML, that is probably the URL to the Identity Provider, such as ADFS or SAP ID. The Identity Provider is used when federated single sign-on is enabled, and it verifies whether the SAP Cloud for Customer user can be authenticated in SAP CPQ. In this case, it is necessary to review Identity Provider settings (see Federated Single Sign-On) and allow the Identity Provider URL to load in an IFrame.

Here is an example of such a URL: https://login.microsoftonline.com/0e17f90f-88a3-4f93-a5d7-cc847cff307e/saml2?SAMLRequest=jZJNT%2BMwFEX%2FSmTWjh07NInVmore%23rsa-sha256&Signature=YkzxFF5dzOyO%2BZh7FS69eQ7y

5. How can I flag a quote as Lost when SAP CPQ is integrated with SAP Cloud for Customer?

The Quote Lost action in SAP CPQ is available in the Load Existing Quotation/Project page and users coming from SAP Cloud for Customer don’t have access to this page. Consequently, in the integrated environment it’s not possible to mark a quote as Lost using the Quote Lost action.

As a workaround, administrators can enable the Change Status action in the intersection of the origin status and the Quote Lost status in the Workflow. Once the action is enabled and users open the quote in the origin status, the Status dropdown will contain the Quote Lost status.



Error Diagnostics - SAP Cloud for Customer Integration

If there is an error when saving a new sales quote in SAP Cloud for Customer while landing to SAP CPQ, or if you want to see the payload received in SAP CPQ, use the Developer Console to troubleshoot the communication between SAP CPQ and SAP Cloud for Customer or SAP Cloud Integration.
Yes
No