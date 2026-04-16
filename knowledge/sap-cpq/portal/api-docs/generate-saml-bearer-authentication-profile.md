# Generate SAML Bearer Authentication Profile | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/566c372747534502a8a084593e893cb2.html#related-information
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API


	
SAP CPQ REST API Authentication
	
SAP CPQ to Third Party Authentication


	
Generate SAML Bearer Authentication Profile
	
Script API
	
SCIM API
	
Configurations API
	
Custom Table API
	
Rate Plans API
	
REST API for Updating Ship To, Bill To, and End User
	
API for Content Upload
	
REST API Error Codes
	
Custom API (Global Scripts Consumed as REST API Web Services)
	
User Interface API
	
Product Integration REST API
	
Headless SAP CPQ Configurator
Generate SAML Bearer Authentication Profile

Security Assertion Markup Language 2.0 (SAML 2.0) is a version of the SAML standard for exchanging authentication and authorization identities between security domains. It is available in SAP CPQ to enable web-based single sign-on using security tokens.

SAML 2.0 Assertions
An assertion is a package of information that supplies one or more statements made by a SAML authority. SAML assertions usually include a <Subject> element. The SAML 2.0 specification defines three different kinds of assertion statements that can be created by a SAML authority:

Authentication Statement

Attribute Statement

Authorization Decision Statement

For more information, see the Related Links below.

The SAML "bearer" assertion facilitates single sign-on by including an authentication assertion <saml:AuthnStatement> and an attribute assertion <saml:AttributeStatement>. The prefix saml: represents the SAML V2.0 assertion namespace.

The HTTP Request for getting a token must fulfill following requirements:

Authorization header. Authorization: Basic {Base64Encoded client id:client secret}

The HTTP body should contain the following data: grant_type=urn:ietf:params:oauth:grant-type:saml2-bearer&assertion=Base64EncodedSignedSamlAssertion. Body content type should be application/x-www-form-urlencoded

The Assertion structure has to be filled in with following parameters:

Issuer

(mandatory)

Audience

(mandatory)

Recipient

(mandatory)

Time condition

(mandatory)

Sign In certificate

(mandatory)

Name ID

(mandatory)

Parameters/attributes - User fields to be mapped:

Name,

Last Name,

User name,

E-mail,

FED ID,

Global user ID

How to start using SAML Bearer Authentication feature in SAP CPQ

You have to create the SAML bearer assertion and then call into the OAuth client to obtain a bearer access token. The bearer access token carries all the necessary authorizations to enable a remote and password-less access to service resources.

To use the SAML bearer authentication in SAP CPQ, follow these steps:

Create a SAML profile under Setup   Providers   SAML Profiles   Add New.

You need to fill the following fields:

Name: SAML Profile name

Credentials: Reference to credentials stored in Setup   Security   Credential Management (used for filling in the http header of POST authentication).

For more information on how to create credentials, see Credential Management on the SAP Help Portal.

Recipient: URL for gathering tokens.

Audience: Application that you collect tokens for.

Name ID: Used to authenticate users on application (primary key between two systems).

Time condition: Validity period of SAML Assertion in minutes.

Issuer: URL of the application that creates and signs SAML Assertion (prefilled value is theSAP CPQ instance that is used).

AuthContextClassRef: There is option to select one of classes Unspecified, Password, PasswordProtectedTransport, X509.

Add New Attribute: The user has the flexibility to add additional attributes as required.

Once the profile has been saved, X.509 self-signed certificate will be created and assigned to the profile. It is then used for digitally signing the SAML assertion. The certificate data and validity time (valid for 10 years) can be checked on the SAML Profiles page.

The Certificate Public Key is visible on the page and it can be copied and used to verify SAML assertions.

The SAML profiles can now be used for the authentication for SAP Cloud Integration, Webhooks, and to obtain token in scripting.

SAP Cloud Integration Example: Setup   Providers   SAP Integrations   Mandatory Settings   Authentication Type   SamlBearer.

Webhook Example: Setup   Providers   Subscription to Events   Add New   Authentication Type   SamlBearer.

Scripting example - you can create reusable Python modules for getting tokens using SAML Bearer Profile:


def GetToken(profileName, clientStoreEntryName):
	encodedGrantType = HttpUtility.UrlEncode('urn:ietf:params:oauth:grant-type:saml2-bearer')
	encodedAssertion = HttpUtility.UrlEncode(SamlAssertionProvider.Generate(profileName))
	body = "grant_type={grantType}&assertion={assertion}".format(grantType = encodedGrantType, assertion = encodedAssertion)
	authorizationResponse = AuthorizedRestClient.Post(clientStoreEntryName, 'https://saperp-cpq-dev-devfl.cpq.cloud.sap/api/token', body, None, 'application/x-www-form-urlencoded', False, False)
	return JsonHelper.Deserialize(str(authorizationResponse))["access_token"]

Related Information
http://docs.oasis-open.org/security/saml/v2.0/saml-core-2.0-os.pdf
https://wiki.oasis-open.org/security/FrontPage
On this page
SAML 2.0 Assertions
How to start using SAML Bearer Authentication feature in SAP CPQ
Related Information
Yes
No