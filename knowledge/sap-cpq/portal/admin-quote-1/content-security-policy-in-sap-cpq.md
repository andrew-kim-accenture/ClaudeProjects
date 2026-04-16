# Content Security Policy in SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/ecb78678de044cce8719972d1847da7b.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security


	Setup Help
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Content Security Policy in SAP CPQ

To add another layer of security in SAP CPQ and prevent unwanted breaches, you can define secure sources of JavaScript files, CSS sheets, images, and so on.

By defining which sources are secure, you restrict content from unsecure URLs, providing one more level of protection for files coming from outside SAP CPQ.

There’s a set of application parameters in Application Parameters  Security in which secure sources need to be defined:

Permitted sources for JavaScript: add URLs to secure sources from which JavaScript files can be used in SAP CPQ.

Permitted sources for stylesheets or CSS: add URLs to secure sources from which stylesheets and CSS files can be used in SAP CPQ.

Permitted sources for images: add URLs to secure sources from which images can be used in SAP CPQ.

Permitted sources for font resources: add URLs to secure sources from which font resources can be used in SAP CPQ.

Permitted sources that can be used as an HTML < form > action: add URLs to secure sources that can be used in SAP CPQ as an HTML <form> action.

By default, the parameters contain * in all tenants active in the version 2008 when the content security policy was introduced. The asterisk symbol allows all files from all sources to be used in SAP CPQ. Although this may seem like the easiest solution and it ensured at the time when the parameters were introduced that no breaking changes occur, the * sign should never be used in these parameters. By allowing all sources, you disregard the content security policies that consequently may lead to unwanted security breaches.

The parameters are empty in all tenants created after the 2008 release. That means that only files from within SAP CPQ are considered secure.

Note

Don't leave the parameters empty and don't add the * sign because that way you discard additional security for the content in your tenant. Check your implementations, make a note of the sources from which you use JavaScript and CSS files, images, and fonts and add those sources in the parameters.

If you add multiple sources in the parameters, use a space to separate them. This functionality is supported on Google Chrome ®, Mozilla Firefox ®, Safari, and Microsoft Edge ® and it isn’t supported on Microsoft Internet Explorer IE11 ®.

Example

In one of custom templates, we use images and CSS files from a source stated in the template, like in the following screenshot.

If the parameters are populated with an * symbol (allowing all sources), the templates display properly and there are no violations.

However, if the parameters are empty, meaning that only files from within SAP CPQ are allowed, there are violations in the template and they aren't rendered.

If the parameters are populated with the sources of the files used in the templates, there are no violations and the templates render properly.

Related Information
Application Parameters
Responsive Design Customizations
Security
On this page
Example
Related Information
Yes
No