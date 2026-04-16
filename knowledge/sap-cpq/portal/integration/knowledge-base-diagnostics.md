# Knowledge Base Diagnostics | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/325dd39ebcf44773a379c44311a90d2f.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Variant Configuration Integration


	
Introduction to the Variant Configuration Integration
	
Integrate SAP CPQ with SAP Variant Configuration and Pricing
	
Define SAP General Attribute Mappings
	
Knowledge Base Diagnostics
	
Technical Overview
	
Pricing
	
SAP Variant Configuration and Pricing Log
	
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
Knowledge Base Diagnostics

You can directly access and manage diagnostic data related to knowledge base synchronization on the Knowledge Base Diagnostics page, available in the Developer Tools section of the Setup.

You can use this page to determine which issues are preventing synchronization jobs from executing successfully, so that you are able to resolve them, and to resynchronize the data which failed to synchronize properly. In addition to reviewing failed jobs and resynchronizing failed data, you can delete failed synchronization data or view the statistics behind successfully executed jobs. Moreover, you can manually repeat past jobs that were incomplete or incorrectly recorded as successful, either by specifying a date or by providing a knowledge base ID.

Knowledge Base Synchronization Failed Data

If a knowledge base synchronization job doesn't execute successfully, information related to the failed job becomes available to you in this tab. Here, you can examine information related to the failed job, as well as execute the job again or delete information related to that job. Knowledge bases are listed here according to their ID. The exact time of the first and last failed synchronization job are provided for every specific knowledge base, in addition to an error message explaining the issue that prevented the job from executing successfully. You can resynchronize a specific knowledge base after fixing the issue that prevented it from synchronizing successfully, or you can delete the failed job data related to that knowledge base. In addition, it possible to resynchronize all knowledge bases with failed jobs at once, or to delete all failed job data displayed in this section.

Knowledge Base Statistics

Statistical information about every knowledge base synchronization job can be examined here. Information is provided according to the IDs of specific synchronization jobs. You can review the total number of knowledge bases that were included in a specific synchronization job, and see how many knowledge bases were successfully synchronized and how many failed, in addit’sion to the start and end time of the job. The column Canceled provides information whether a specific job was canceled or not.

Fetch Knowledge Base Payload

By providing the ID of a knowledge base, you can generate a JSON payload for that knowledge base. You can use this option to directly access the payload of a knowledge base without having to search the SAP Variant Configuration and Pricing log. Moreover, the payload continues to be accessible here even after it deleted from the log after a period of 15 days.

Manual Synchronization
In addition to scheduled daily synchronization jobs, it’s’s possible to manually execute jobs at any given time. You can execute a job immediately using one of these options:

Synchronize by Date - by selecting a date, you can repeat a knowledge base synchronization that was performed in the past. When the next job is executed, SAP CPQ is updated with any changes that were made to knowledge bases on or after the specified date. You can’t select a date later than the last executed job. Using this option, you can repeat jobs that were initially incomplete or affected by errors.  For example, if a job is mistakenly recorded as successful, data is missing because systems ran in different time zones, or previously synchronized data was changed and needs to be updated, you can repeat the job in SAP CPQ to quickly retrieve the information.

Synchronize by Knowledge Base ID - you can also enter the ID of a specific knowledge base that you wish to synchronize.

The progress of the ongoing synchronization job or the status and statistics related to the latest completed job are displayed in this section. You can see the completion progress (how many have been synchronized up to that moment and how many knowledge bases are going to be synchronized in total), as well as the total number of knowledge bases and the number of successful and failed synchronizations in that job. You can stop an ongoing knowledge base synchronization job at any time by clicking Stop Job.
Note
Using specific API endpoints, back-end system administrators can perform tasks related to knowledge base synchronization jobs without having to log into SAP CPQ. The following API endpoints can be used for those particular tasks:

api/product/v1/knowledgebases/sync - used to manually execute a knowledge base synchronization job from the back-end system side.

api/eventLog/v1/vcIntegrationEventLogs - used to retrieve the SAP CPQ log containing information about the knowledge base synchronization, which you can use to troubleshoot errors and verify if everything was synchronized correctly. You don't need to manually check logs after every knowledge base synchronization job, as this API endpoint can be integrated with external monitoring tools in order to automate this process.

Yes
No