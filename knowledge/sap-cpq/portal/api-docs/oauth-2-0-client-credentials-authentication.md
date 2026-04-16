# OAuth 2.0 Client Credentials Authentication | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/017e1853ce194dc98dd5cf8d310cd98a.html#testing
**Crawled:** 2026-04-16

## Content

SAP CPQ API Documentation
Provide feedback on our search

Loading Table of Contents…
OAuth 2.0 Client Credentials Authentication

The OAuth 2.0 Client Credentials can be used to authenticate data between applications without the need for a specific user.

Prerequisites
Before using Client Credentials flow, you need to set up a trusted application.

Navigate to SAP CPQ tenant and log in.

Navigate to Setup  Security   Trusted Applications.

Add the new trusted application.

Expand Client Credentials Grant section.

Enable Client Credentials Grant toggle.

Choose the user from the drop-down field; the list of available Users includes only those with Is SSO User enabled.

Choose the Save. The trusted application is now created.

Testing

Open a platform used for building and testing APIs (for example, Postman), and populate the following:

Choose the POST as the method.

Add /oauth2/token to the request URL.

Choose the Basic authorization as authorization.

Copy the client ID and enter it in Postman as the username.

Copy the client secret and enter it in Postman as the password.

In the Body, choose the content type as x-www-form-urlencoded.

Set the following keys:

grant_type - client_credentials

Choose the Send to send the request. The access and refresh tokens are generated.

On this page
Prerequisites
Testing
Yes
No