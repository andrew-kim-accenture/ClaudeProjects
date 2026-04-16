# Error Codes for Federated Single Sign-On | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/5b4e062d82f84281a3477eeb5a867180.html?locale=en-US&state=PRODUCTION&version=2603
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
Error Codes for Federated Single Sign-On

The following error codes correspond to errors in SAP CPQ that occur in relation to the federated single sign-on. The explanations for these error codes can be used for troubleshooting federation-related issues.

100001

IdpRoute (fed/<idp_route>) can't be null, empty or white-space, and can be '/'.

100002

IdpRoute (fed/<idp_route>) does not exist in SAP CPQ.

100003

Identity provider for IdpRoute does not exist (not registered) in SAP CPQ.

100004

Identity provider for IdpRoute is not enabled in SAP CPQ.

100005

Tenant URL must be used.

100006

Not one enabled Federation settings was found.

200001

SAMLResponse is missing in the HTTP request as part of the form for the POST request or the query string for the REDIRECT request.

200002

SAMLResponse does not have a valid format. Root element in XML is missing.

200003

SAMLResponse XML root element is invalid. XML Root element must have Response name and XML Namespace urn:oasis:names:tc:SAML:2.0:protocol.

200004

SAMLResponse has an invalid value of the InResponseTo attribute. That means that the Identity Provider didn’t send an appropriate sign-on response for the SAMLRequest.

200005

Identity Provider generated SAMLResponse without 'Issuer' node.

200006

'Issuer' value from SAMLResponse is not registered in SAP CPQ.

200007

SAMLResponse has invalid value of ‘Issuer’ node. That means that Identity Provider didn’t send appropriate sign on response for SAMLRequest.

200008

Identity provider for SAMLResponse 'Issuer' value does not exist (not registered) in SAP CPQ.

200009

Federation settings for the Identity Provider requires that sign on SAMLResponse must be signed. Check the field: Sign the request from the the identity provider.

200010

SAMLResponse does not have value of ‘ID’ attribute in 'Response' node.

200011

SAMLResponse has invalid value of ‘ID’ attribute in 'Response' node. Value must not start with a number.

200012

SAMLResponse does not have value of ‘URI’ attribute in ‘Signature' node of 'Response'.

200013

SAMLResponse ‘ID’ attribute value of ‘Response’ node and ‘URI’ attribute value in ‘Signature' node of ‘Response’ are not matching in dedicated format.

200014

SAMLResponse certificate public key in ‘Signature’ node does not match the public key from Identity Provider XML metadata. It is possible that signing certificate has been changed on Identity Provider side and client needs to re-upload Identity Provider XML metadata file.

200015

Identity Provider generated invalid SAMLResponse signature for 'Response' node.

200016

Federation settings for Identity Provider requires that sign on SAMLResponse Assertion must be signed. Check field: 'WantAssertionsSigned'

200017

SAMLResponse does not have value of ‘ID’ attribute in 'Assertion' node.

200018

SAMLResponse has invalid value of ‘ID’ attribute in 'Assertion' node. Value must not start with a number.

200019

SAMLResponse does not have value of ‘URI’ attribute in ‘Signature' node of 'Assertion’.

200020

SAMLResponse ‘ID’ attribute value of ‘Assertion’ node and ‘URI’ attribute value in ‘Signature' node of ‘Assertion’ are not matching in dedicated format.

200021

SAMLResponse certificate public key in ‘Signature’ node does not match the public key from Identity Provider XML metadata. It is possible that signing certificate has been changed on Identity Provider side and client needs to re-upload Identity Provider XML metadata file.

200022

Identity Provider generated invalid SAMLResponse signature for 'Assertion' node.

200023

SAMLResponse has invalid value of ‘Audiences’ node. That means that Identity Provider didn’t send appropriate sign on response for SAMLRequest.

200024

SAMLResponse ‘Status Code' is not ‘Success’. That can indicate that authentication was not successful on Identity Provider side. 'Status Message’ can give more detailed explanation what was wrong during authentication on Identity Provider.

200025

Identity Provider generated SAMLResponse without ‘NameID’ node.

200026

‘Additional Attribute’ with configured name is not contained in SAMLResponse ‘Attributes’ nodes list.

200027
The system returned one of several possible login-related errors. Below is an explanation of what each error means and how to resolve it:

This is your first login. Please provide a new password. The user is logging in for the first time and must change their initial or temporary password. Enter a new password that meets the password policy requirements and try logging in again. Alternatively, your user account can be configured as an SSO user to avoid password expiration.

Incorrect domain name. Maintenance in progress or invalid Tenant URL.

Your password has expired. The password validity period has ended. Reset the password or contact your administrator. Alternatively, your user account can be configured as an SSO user to avoid password expiration.

The SAP CPQ URL that you are trying to access is obsolete and no longer valid. The URL used for login is outdated, possibly due to an environment change or migration. Contact your administrator to get the current SAP CPQ login URL.

Invalid login. Verify that the user's identifier (Global User Id or Federation ID) is correctly configured in SAP CPQ and matches the value defined by the User Identifier Attribute Source in the SAML response received from the Identity Provider.

The way SAP CPQ maps a local user account depends on the application parameter Global User Id as Federation Identifier (found under Setup → General Application Parameters → Users):

If set to FALSE – SAP CPQ identifies the user based on the Federation ID or Username field.

If set to TRUE – SAP CPQ identifies the user based on the Global User Id field.

When troubleshooting, ensure that the value provided by the Identity Provider in the SAML response exactly matches the corresponding user identifier in CPQ:

If the User Identifier Attribute Source is NameId, check the value within the NameId element.

If the User Identifier Attribute Source is Attribute, check the value of the configured attribute in the SAML response.

Any mismatch between these values will prevent successful Single Sign-On (SSO) authentication.
200028

Unhandled user login. Details should contain more specific error and explanation why login was not successful.

200029

Identity provider for IdpRoute is not enabled in CPQ.

200030

Identity provider does not have active signing certificate.

200031

Failed to decrypt Identity Provider response. XML encryption algorithm is not supported.

200032
Failed to decrypt response from Identity Provider.
200033

Failed to decrypt Identity Provider response. Encryption certificate does not exist, or it is not valid.

200034

Failed to decrypt Identity Provider response. EncryptedKey element not found.

200035

HTTP request parameter has an invalid value.

300001

SamlSession cookie not present, so Federated LogOut from CPQ side is not possible.

300002

Identity Provider from SamlSession does not exists in CPQ.

300003

Identity Provider does not have SingleLogoutService binding in Identity Provider Xml metadata, so Federated log out is not possible.

400001

SamlSession cookie not present, so Federated LogOut from Identity provider side is not possible. CPQ can not process LogOut request from Identity Provider.

400002

SAMLRequest is missing in Http request as part of form for POST request or query string for REDIRECT request.

400003

SAMLRequest does not have valid format. Root element in XML is missing.

400004

SAMLRequest XML root element is invalid. XML Root element must have ‘LogoutRequest’ name and XML Namespace 'urn:oasis:names:tc:SAML:2.0:protocol'.

400005

Identity Provider generated SAMLRequest without ‘ID’ attribute in ‘LogoutRequest’ node.

400006

Identity Provider generated SAMLRequest without 'Issuer' node.

400007

'Issuer' value from SAMLRequest is not registered in CPQ.

400008

SAMLRequest has invalid value of ‘Issuer’ node. That means that Identity Provider didn’t send appropriate logout request.

400009

Identity provider for SAMLRequest 'Issuer' value does not exist (not registered) in CPQ.

400010

Identity Provider does not have SingleLogoutService binding in Identity Provider Xml metadata, so Federated log out is not possible.

400011

Identity Provider generated SAMLRequest without 'SessionIndex' node.

400012

SAMLRequest has invalid value of ‘SessionIndex’ node. That means that Identity Provider didn’t send appropriate logout request.

400013

Identity Provider generated SAMLRequest without 'NameID' node.

400014

SAMLRequest has invalid value of ‘NameID’ node. That means that Identity Provider didn’t send appropriate logout request.

400015

Federation settings for Identity Provider requires that log out SAMLRequest must be signed. Check field: 'Sign the log out request'

400016

SAMLRequest has invalid value of ‘ID’ attribute in 'LogoutRequest' node. Value must not start with a number.

400017

SAMLRequest does not have value of ‘URI’ attribute in ‘Signature' node of 'LogoutRequest’.

400018

SAMLRequest ‘ID’ attribute value of ‘LogoutRequest’ node and ‘URI’ attribute value in ‘Signature' node are not matching in dedicated format.

400019

SAMLRequest certificate public key in ‘Signature’ node does not match the public key from Identity Provider XML metadata. It is possible that signing certificate has been changed on Identity Provider side and client needs to re-upload Identity Provider XML metadata file.

400020

Identity Provider generated invalid SAMLRequest signature for 'LogoutRequest' node.

400021

‘Signature’ query string is missing in request URL.

400022

‘SigAlg’ query string is missing in request URL.

400023

Signature Algorithm(SigAlg) query string value does not match the signature algorithm of certificate public key from Identity Provider XML metadata. It is possible that signing certificate has been changed on Identity Provider side and client needs to re-upload Identity Provider XML metadata file.

400024

Identity provider does not have active signing certificate.

500001

SAMLResponse is missing in Http request as part of form for POST request or query string for REDIRECT request.

500002

SAMLResponse does not have valid format. Root element in XML is missing.

500003

SAMLRequest XML root element is invalid. XML Root element must have ‘LogoutResponse’ name and XML Namespace 'urn:oasis:names:tc:SAML:2.0:protocol'.

500004

Identity Provider generated SAMLResponse without ‘InResponseTo’ attribute in ‘LogoutResponse’ node.

500005

SAMLResponse has invalid value of ‘InResponseTo’ attribute. That means that Identity Provider didn’t send appropriate logout response for SAMLRequest.

500006

Identity Provider generated SAMLResponse without 'Issuer' node.

500007

'Issuer' value from SAMLResponse is not registered in CPQ.

500008

SAMLResponse has invalid value of ‘Issuer’ node. That means that Identity Provider didn’t send appropriate logout response.

500009

Identity provider for SAMLResponse 'Issuer' value does not exist (not registered) in CPQ.

500010

SAMLResponse ‘Status Code' is not ‘Success’. That can indicate that logout was not successful on Identity Provider side. 'Status Message’ can give more detailed explanation what was wrong during logout from Identity Provider.

500011

Federation settings for Identity Provider requires that log out SAMLResponse must be signed. Check field: 'Sign the log out response'

500012

SAMLResponse does not have value of ‘ID’ attribute in 'LogoutResponse' node.

500013

SAMLResponse has invalid value of ‘ID’ attribute in 'LogoutResponse' node. Value must not start with a number.

500014

SAMLResponse does not have value of ‘URI’ attribute in ‘Signature' node of 'LogoutResponse’ node.

500015

SAMLResponse ‘ID’ attribute value of ‘LogoutResponse’ node and ‘URI’ attribute value in ‘Signature' node are not matching in dedicated format.

500016

SAMLResponse certificate public key in ‘Signature’ node does not match the public key from Identity Provider XML metadata. It is possible that signing certificate has been changed on Identity Provider side and client needs to re-upload Identity Provider XML metadata file.

500017

Identity Provider generated invalid SAMLResponse signature for 'LogoutResponse' node.

500018

‘Signature’ query string is missing in request URL.

500019

‘SigAlg’ query string is missing in request URL.

500020

Signature Algorithm(SigAlg) query string value does not match the signature algorithm of certificate public key from Identity Provider XML metadata. It is possible that signing certificate has been changed on Identity Provider side and client needs to re-upload Identity Provider XML metadata file.

500021

Identity provider does not have active signing certificate.

500022

HTTP request parameter has an invalid value.

600001

SAML Bearer Assertion Validation parameters does not exist. Internal error, contact CPQ support.

600002

SAML Bearer Assertion Validation parameter ‘ValidIssuer’ does not exist. Internal error, contact CPQ support.

600003

SAML Bearer Assertion Validation parameter ‘ValidAudience’ does not exist. Internal error, contact CPQ support.

600004

SAML Bearer Assertion Validation parameter ‘SigningCertificatePublicKey’ does not exist. Internal error, contact CPQ support.

600005

‘assertion’ parameter is missing in request body.

600006

‘assertion’ does not have valid format. Root element in XML is missing.

600007

‘assertion’ XML root element is invalid. XML Root element must have ‘Assertion’ name.

600008

‘assertion’ is generated without 'Issuer' node.

600009

‘assertion’ has invalid value of ‘Issuer’ node. That means that value of ‘Issuer’ node is not matching the Issuer value of Trusted Application.

600010

‘assertion’ is generated without 'Audience' node.

600011

CPQ requires that SamlBearer assertion must be signed.

600012

‘assertion’ has invalid value of ‘Audience’ node. That means that value of ‘Audience’ node is not matching the current request URL.

600013

‘assertion’ does not have value of ‘ID’ attribute in 'Assertion' node.

600014

‘assertion’ has invalid value of ‘ID’ attribute in 'Assertion' node. Value must not start with a number.

600015

‘assertion’ does not have value of ‘URI’ attribute in ‘Signature' node of 'Assertion’ node.

600016

‘assertion’ ‘ID’ attribute value of ‘Assertion’ node and ‘URI’ attribute value in ‘Signature' node are not matching in dedicated format.

600017

‘assertion’ has invalid generated signature for 'Assertion' node.

600018

‘assertion’ parameters are missing.

600019

‘assertion’ parameter 'Issuer' is invalid.

600020

‘assertion’ parameter 'Audience' is invalid.

600021

‘assertion’ parameter 'NameId' is invalid.

600022

‘assertion’ parameter 'Recipient' is invalid.

600023

‘assertion’ parameter 'SigningCertificate' is invalid.

600024

‘assertion’ parameter 'SigningCertificate' does not have private key.

600025

‘‘assertion’ is not in valid Base64 encoding format.

700001

Routing parameters does not exist. Internal error, contact CPQ support.

700002

TenantName does not exist. Internal error, contact CPQ support.

700002

EntityId does not exist. Internal error, contact CPQ support.

800001

SAMLRequest/SAMLResponse in not well-formatted XML document.

900001

Identity Provider created invalid SAMLRequest/SAMLResponse XML Signature node and it can not be verified.

900002

SAMLRequest/SAMLResponse XML Signature node can not be verified with certificate from XML metadata file. It might be that Signature Algorithm is not supported.

900003
The certificate provided in the Identity Provider metadata is invalid. This error may occur for one of the following reasons:

The Identity Provider certificate has expired — the validity period has ended.

The Identity Provider certificate is not yet valid — it will become active in the future.

The Identity Provider certificate format or value is incorrect — it cannot be parsed or validated.

All certificate validity dates (such as 'NotBefore' and 'NotAfter') are displayed and validated in UTC.
900004

CPQ service provider certificate record from database is invalid. It can missing certificate or password. Please contact CPQ support.

900005
CPQ service provider. This error may occur for one of the following reasons:

CPQ service provider has expired — the validity period has ended.

CPQ service provider certificate is not yet valid — it will become active in the future.

The CPQ service provider certificate format or value is incorrect — it cannot be parsed or validated.

All certificate validity dates (such as 'NotBefore' and 'NotAfter') are displayed and validated in UTC.
900006

CPQ service provider certificate does not have a valid RSA key. CPQ could have a poorly generated certificate.

To fix the issue, navigate to Setup  Providers  Federation Settings and choose a different provider from the list. The new provider should be based on the certificate purpose from the error message details. You can also request the CPQ Support to remove the problematic certificate from your tenant.

1000001

Resolved tenant does not exist or no longer valid. It could happen that tenant is deactivated/decommissioned. If tenant is deactivated/decommissioned contact SAP CPQ Support. If tenant is not deactivated/decommissioned clean all cookies and try again or try to use incognito windows or different browser.

On this page
100001
100002
100003
100004
100005
100006
200001
200002
View all
Yes
No