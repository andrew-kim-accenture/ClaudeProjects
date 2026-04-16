# Federated Single Sign-On | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/7172ea93cd49434f966b0f91a8462717.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions
	
Subscription to Events
	
Federated Single Sign-On


	
Error Codes for Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Federated Single Sign-On

SAP CPQ supports single sign-on using the SAML (Security Assertion Markup Language) 2.0 protocol.

Enable Legacy Federation Endpoints

In the near future, SAP CPQ plans to phase out the old AssertionConsumerService and SingleLogoutService endpoints used by Identity Providers (IdPs) to communicate with SAP CPQ in Federation Login scenarios. This does not affect Service Provider–initiated flows, but refers specifically to the legacy IdP-to-SP SSO and SLO routes. Once these endpoints are removed, only the new routes, saml2/v1/idp/sso and saml2/v1/idp/slo will be supported.

To assist with the transition, starting from the 2508 SAP CPQ release, there is a toggle labeled Enable legacy federation endpoints on the Federation Settings page in SAP CPQ Setup. If enabled, SAP CPQ will continue accepting login requests sent via the old IdP endpoints. If disabled, only the updated SAML routes will be recognized.

To verify whether your Identity Provider has been successfully migrated, disable this toggle and attempt to perform a Federation Login. If both SSO login and logout work correctly, your system is already using the new SAML endpoints, and no further action is needed.

If it fails, you must complete the migration by:

Downloading the Service Provider metadata file from SAP CPQ.

Re-uploading it to your Identity Provider (IdP).

Additionally, a warning message will appear in the tenant logs if the Identity Provider is still using outdated SAML metadata. This can help clients detect if migration is still pending.

Note

Clients will be notified ahead of time when SAP CPQ officially disables support for the old endpoints.

Add New Identity Provider
Note

Before adding a new identity provider in SAP CPQ, you need to download the XML Metadata file from your Identity Provider.

Go to Setup  Providers  Federation Settings.

Click Add New.

Upload the XML Metadata file that you previously downloaded from your Identity Provider.

SAP CPQ will configure your Identity Provider configuration with the with default preselected values from the XML Metadata file. If you change these preselected values, you need to click Save.

Once you finish the configuration, download the SAP CPQ XML Metadata file by clicking Download SAP CPQ Metadata, and then upload it to your Identity Provider.

Edit Identity Provider Configuration

On the Federation Settings page, choose the Identity Provider configuration you wish to edit from the Select Identity Provider drop-down.

Edit the configuration and click Save.

If you changed some fields whose values are reflected in the SAP CPQ XML Metadata file, click Download SAP CPQ Metadata to download it, and then re-upload it to your Identity Provider.

Identity Provider Settings

The Identity Provider Settings section contains all the relevant configuration details and other information about the configured Identity Provider. You can configure the following fields:

Setting

	

Description




Name

	

The name of the Identity Provider Configuration in SAP CPQ, which appears in the Select Identity Provider list.




Enabled

	

Controls if the Identity Provider configuration can be used for federated actions.




Enable Login button

	

Enable or disable Federation Single-Sign-On button on the login page. By default, the Enable Login button toggle is enabled.

Single-Sign-On button is enabled when:

Enabled (Main IDP toggle) is enabled.

Enable Login button toggle is enabled.

Service provider route is created.




Entity ID

	

Identifier URL of the Identity Provider. It is a unique value in SAP CPQ, which means only one Identity Provider with this entity ID can be configured on the SAP CPQ tenant.




Upload metadata document

	

Uploads the Identity Provider XML Metadata and replaces only Identity Provider-specific values.

If certificates on the Identity Provider side are renewed and you want to keep every other configuration unchanged, you need to download a new XML Metadata file from the Identity Provider and use this button to reupload the new one.




Require log-out request to be signed

	

Indicates that the Identity Provider expects SAP CPQ to send a signed log-out request to the Identity Provider.




Require log-out response to be signed

	

Indicates that the Identity Provider expects SAP CPQ to send a signed log-out response to the Identity Provider.




Identity Provider signing certificate

	

Information about the X509 Certificate from the Identity Provider XML Metadata file.




Identity Provider signing certificate validity date

	

Information about the X509 Certificate validity period.

The color indicates the certificate validity status:

Green: valid certificate.

Yellow: valid certificate that will expire in less than a month.

Red: invalid (expired) certificate.




Identity Provider requires signed authentication request

	

Indicates that the Identity Provider expects SAP CPQ to send the federated sign-on request signed.

When SAP CPQ sends a sign-on request to the Identity Provider, it considers both Identity Provider requires signed authentication request and Send signed authentication request (from the Service Provider Settings section) values. If either of these fields are true, SAP CPQ will sign the federated sign-on request.

Service Provider Settings
The Service Provider Settings section contains all the relevant configuration details and other information about the configured Identity Provider, specifically in relation to the behavior of SAP CPQ in communication with the Identity Provider. You can configure the following fields:

Setting

	

Description




User Identifier Attribute Source

	

Controls which XML node value of the SAML sign-on response SAP CPQ uses to map the local user account. Yo can select one of the following values:

NameId: reads the NameID XML node value and attempts to map to the local user account.

AdditionalAttribute: SAP CPQ requires the user to enter an Additional Attribute Name.

The user needs to enter the exact name (case sensitive) of the additional attribute that will be present in SAML sign-on response. This means that SAP CPQ will read the value of XML node from the Additional Attribute Name field and try to map to the local user account:

The local user account is mapped according to the application parameter Global User Id as Federation Identifier (found in Setup General Application Parameters Users):

If FALSE, then SAP CPQ will try to map the local user account using the fields Federation ID or Username.

If TRUE, SAP CPQ will try to map local user account using the Global User Id field.




Signing Certificate

	

Controls which X509 Certificate SAP CPQ uses to sign SAML requests and responses. It will be part of the downloaded SAP CPQ XML Metadata.

If the certificate reaches its expiration date, a message appears:

If the certificate validity date expires in less than a month, you see below a yellow message (warning).

If the certificate validity date has expired, you see a red message (error).

In both cases, we recommend that you contact the SAP CPQ Support team to help you raise a request for a new certificate.

Note

When you change the value of this field and save the configuration, you need to download the SAP CPQ XML Metadata file, and then reupload it to your Identity Provider.




Encryption Certificate

	

Controls which X509 Certificate is used to encrypt the sign-on response from the Identity Provider side, and to decrypt sign-on responses on the SAP CPQ side. It will be part of the downloaded SAP CPQ XML Metadata.

If the certificate reaches its expiration date, a message appears:

If the certificate validity date expires in less than a month, you see below a yellow message (warning).

If the certificate validity date has expired, you see a red message (error).

In both cases, we recommend that you contact the SAP CPQ Support team to help you raise a request for a new certificate.

Note

When you change the value of this field and save the configuration, you need to download the SAP CPQ XML Metadata file, and then reupload it to your Identity Provider.




Log Out Type

	

Controls how users log out from SAP CPQ if they sign in using federation.

The available values are:

Federated: A log-out request is also sent to the Identity Provider to execute the federated log out.

Local: The user logs out only locally.

Note

If the federated log-out action is triggered by the Identity Provider (manually or automatically), this field does not control the behavior of redirection after logging out is executed. In that case, SAP CPQ receives the federated log-out request, processes it, and sends the federation log-out response back to the Identity Provider.

Some Identity Providers do not support federation log-out requests and responses. This is defined in Identity Provider XML Metadata file. In that case, the Log Out Type field is disabled, and the Local value is selected.




Post Log Out Action

	

Controls SAP CPQ behavior after logging out is triggered and executed on the SAP CPQ side.

The available values are Default and Redirect:

If Default is selected, SAP CPQ redirects the user depending on the log out type as follows:

If the log out type is Federated, to the Identiy Provider.

if the log out type is Local, to the SAP CPQ login page.

If Redirect is selected, then the required free input field Post Log Out Redirect URL will appear below. The user needs to enter an absolute URL (such as https://sap.com) as the value. After logging out is executed, SAP CPQ will redirect the user to the address from the Post Log Out Redirect URL field.




Sign On Request Binding

	

Controls what kind of communication SAP CPQ uses when sending the federated sign-on request. Its values depend on the Identity Provider XML Metadata file, and what kind of federated sign-on request communication is supported.

The following values are available: Redirect and Post.




Log Out Request/Response Binding

	

Controls what kind of communication SAP CPQ uses when sending the federated log-out request and response. Its values depend on Identity Provider XML Metadata file, and what kind of federated log-out request and response communication is supported.

The following values are available: Redirect and Post.
Note

Some Identity Providers do not support federation log-out requests and responses. This is defined in Identity Provider XML Metadata file. In that case, the Log Out Request/Response Binding field will not be visible.




Send signed authentication request

	

Indicates if SAP CPQ sends signed federated sign-on requests.

When SAP CPQ sends a sign-on request to the Identity Provider, it considers both Identity Provider requires signed authentication request (from the Identity Provider Settings section) and Send signed authentication request values. If either of these fields are true, SAP CPQ will sign federated sign-on requests.
Note

Any time you change the value of this field and save the configuration, note that you need to download the SAP CPQ XML Metadata file, and then reupload it to your Identity Provider, but only if your Identity Provider considers this value from the Service Provider (SAP CPQ in this case) valuable. This depends on the Identity Provider.




Require signed assertion

	

Indicates that SAP CPQ expects the Assertion part of the federated sign-on response from the Identity Provider to be signed.

If this option is disabled, SAP CPQ does not check the signature of the Assertion. As this is an excessive security risk, we do not recommend disabling this option.

Note

Any time you change the value of this field and save the configuration, note that you need to download the SAP CPQ XML Metadata file, and then reupload it to your Identity Provider, but only if your Identity Provider considers this value from the Service Provider (SAP CPQ in this case) valuable. This depends on the Identity Provider.




Require signed authentication response

	

Indicates that SAP CPQ expects the Identity Provider to sign the entire sign-on response, not just the Assertion part. If this option is disabled, SAP CPQ only checks the signature of the entire federated sign-on response from the Identity Provider




Send signed log-out request

	

Indicates that SAP CPQ expects the Identity Provider to send a signed log-out request.




Send signed log-out response

	

Indicates that SAP CPQ expects the Identity Provider to send a signed log-out response.




Validate properties of log-out request

	

Indicates that SAP CPQ validates the value of the SessionIndex and NameID XML nodes in the log-out request sent from the Identity Provider.




Validate Sign On Response Assertion validity date

	

Indicates if Sign On Assertion validity date should be validated.




Sign On Response Assertion validity date clock skew in minutes

	

Represents the clock skew in minutes for Assertion validity date validation.




Validate Sign On Response Subject Confirmation

	

Indicates if Sign On Response Subject Confirmation should be validated.




Service Provider Route

	

The routes available to trigger Service Provider-initiated federated sign-on request from SAP CPQ. It is automatically generated, and it cannot be changed.

When you are sure that your configuration is set up, both on the Identity Provider and in SAP CPQ, you can copy one of routes, log out from SAP CPQ, paste it as URL in your browser’s tab, and press Enter.

If everything is set up correctly, you will be redirected to the Identity Provider login page. After you enter your Identity Provider account credentials, you will be redirected to SAP CPQ with a valid session.

Create New Service Provider Route button will be displayed in case of no Service Provider Route is defined (tenant moved to other environment, tenant is reactivated, and so on). Choose Create New Service Provider Route to define new Service Provider Route.

Note

If you want to be redirected to a specific SAP CPQ page after a successful federated sign-on, you can add /some_SAP_CPQ_page after the Service Provider Route.

For example, if you want to be redirected to the quotation/LoadQuote.aspx page after a successful federated sign-on, you can enter <identity_provider_route>/quotation/LoadQuote.aspx in your browser’s address tab and press Enter.

SAP CPQ will trigger the federated sign-on and redirect you to the Identity Provider. After you enter your Identity Provider credentials, you will be redirected back to SAP CPQ, but you will land on the quotation/LoadQuote.aspx page.




Download SAP CPQ Metadata

	

Downloads the SAP CPQ XML Metadata file based on the saved configuration.

Single-Sign on with Tenant URL

Use the URL https://tenant.cpq.cloud.sap/fsso in the browser on the Tenant URL to enable federation login to SAP CPQ using SSO, which will trigger service-provider initiated SSO. Also, the existing Service Provider Routes for chosen Identity Providers will work as before.

SAP CPQ triggers SSO automatically (if the customer has only one IdP configured) or will be redirected to the login page where the customer has the choice to select IdP to log in (in case the customer has more than one enabled IdP). The /fsso also supports explicit redirection routes. For example, https://tenant.cpq.cloud.sap/fsso/quotation/LoadQuote.aspx leads the customer to the SAP CPQ login page.

Access the /fsso route through Setup    Providers    Federation Settings.

You can use single sign-on to one or more Identity Providers directly from the login screen. The prerequisite is that you are using the tenant-based URL for SAP CPQ.

The button on the login screen will be called the same name as the Identity Provider name.

SAML Assertion Encryption/Decryption
SAP CPQ supports the decryption of the Assertion in the Sign-On SAML Response or its parts. The prerequisite is that the Identity Provider (IdP) uses the encryption certificate from the downloaded SAP CPQ Metadata file. SAP CPQ supports the decryption of the following Assertion elements:

Whole Assertion XML node

Subject Name ID XML node

Subject Name ID and Attributes XML nodes

Attributes XML nodes

Note

If the encryption certificate is changed in SAP CPQ Federation Settings, it is necessary to download the new SAP CPQ Metadata file.

Limitations and Troubleshooting
A limitation exists regarding Identity Provider-initiated sign-on (federated sign-on triggered from the Identity Provider side) if you have more than one SAP CPQ tenant on the same environment. In that case, you can't control which SAP CPQ tenant you will be logged into if you trigger Identity Provider-initiated sign-on. This limitation does not apply for Service Provider-initiated sign on, where you use the Identity Provider Route configured by SAP CPQ.
Note

If you are using the new tenant-based URL for SAP CPQ, this limitation does not apply to your scenario.

To troubleshoot communication between the Identity Provider and SAP CPQ, you can use the SAML-tracer extension for browsers. All errors on the SAP CPQ side have a dedicated error code, and you can find the explanations for specific error codes in Error Codes for Federated Single Sign-On.

On this page
Enable Legacy Federation Endpoints
Add New Identity Provider
Edit Identity Provider Configuration
Identity Provider Settings
Service Provider Settings
Single-Sign on with Tenant URL
SAML Assertion Encryption/Decryption
Limitations and Troubleshooting
Yes
No