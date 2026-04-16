# Enabling Storage Access for Third-Party Cookie Compatibility | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/665a9ee212394653a84a393035090802/c56eae42243b4b54b68b9050e5671e4c.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ TroubleshootingVersion: 2603English
Provide feedback on our search

	
SAP CPQ Troubleshooting
	
Integrations Troubleshooting
	
Configurator Troubleshooting
	
Document Generation Troubleshooting
	
Catalog Troubleshooting
	
Quote Troubleshooting
	
User Interface Troubleshooting
	
Setup Troubleshooting
	
Login Troubleshooting


	
Enabling Storage Access for Third-Party Cookie Compatibility
	
Scripting Troubleshooting
	
Performance Troubleshooting
Enabling Storage Access for Third-Party Cookie Compatibility

Google has announced its intention to phase out third-party cookies. As a result, it may become necessary to activate the Storage Access API feature in SAP CPQ. This feature is governed by an application parameter, which is currently set to 'disabled' as a default setting. To activate this feature, users are required to reach out to SAP CPQ support team.

Feature Behavior

When users navigate from CRM to SAP CPQ and third-party cookies are disabled, the system checks for storage access.

If storage access is unavailable, a message is displayed:

"To sign in to the application, you must grant access to your browser storage. By pressing 'Continue,' a new popup will appear where you can grant access. If you block this request, you will not be able to sign in."

Granting Access

Upon choosing Continue, the browser prompts:

"[domain_name] wants to use information they have saved about you," with options to "Allow" or "Block."

If nothing happens after choosing Continue, users must perform a hard reload of the page and clear the cache before attempting again.

Outcomes

Allow: Users will successfully access SAP CPQ without further issues.

Block: Users won't be able to land successfully on SAP CPQ.

This solution ensures compatibility with browsers that disable third-party cookies while maintaining seamless functionality for the users.

Yes
No