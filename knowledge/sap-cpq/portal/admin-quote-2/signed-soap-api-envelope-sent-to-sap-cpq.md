# Signed SOAP API Envelope Sent to SAP CPQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/1fc497b3423c4d8db0e38b261911fb18.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security


	Setup Help

	
DKIM Support for Outbound Emails
	
Automatic Data Deletion
	
Personally Identifiable Information
	
Personal Data Log
	
WSDL and Certificate Management


	
Certificate Management


	
System Certificates for Secure Communication


	
Signed SOAP API Envelope Sent to SAP CPQ
	
Create User Certificates
	
WSDL Management
	
Credential Management
	
Trusted Applications
	
Password Policy
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Signed SOAP API Envelope Sent to SAP CPQ

This is the format of a signed SOAP envelope that is sent to SAP CPQ. The signature needs to be provided in the certificate body.



<?xml version="1.0" encoding="utf-8"?>
<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">
	<SOAP-ENV:Header>
		<wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" SOAP-ENV:mustUnderstand="1">
			<wsse:BinarySecurityToken EncodingType="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary" ValueType="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-x509-token-profile-1.0#X509v3" wsu:Id="X509-EC95425802FB9F663F15021186132611">MIIDLDCCAhSgAwIBAgIIabHgneew2KAwDQYJKoZIhvcNAQELBQAwRDEcMBoGA1UEAwwTdjYwdGVzdC5fZG9tYWlua2V5LjEMMAoGA1UECwwDY3BxMRYwFAYDVQQKDA1DYWxsaWR1c0Nsb3VkMB4XDTIxMDYxMDAwMDAwMFoXDTMxMDYxMDAwMDAwMFowRDEcMBoGA1UEAwwTdjYwdGVzdC5fZG9tYWlua2V5LjEMMAoGA1UECwwDY3BxMRYwFAYDVQQKDA1DYWxsaWR1c0Nsb3VkMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqJtUgTvlzCQZknIUiHvti5MMtz36V2XTiOfUUq4QB+tLPXEBiiEflKAVRNTfBXnTlBKwzZmsnbLkrHecLp/AyJwzg9ralpfn9JAJvE+UH0MALR/MEWVgbXOImPgW/h7DzI1cOHCLsBGiBvssRlZNFCFutode7J0jlTcbJgGLysMFB6s/k/RfVNiqbrNnrqVK88Rq/naY9d0Oz/n4uRuQ2fvvHCj+5jdvcQwFWLODNxCFHgj0TQM2rdQhOfyngSAZDIsINVH11jveVeYPskHHH+KkXmL5V/0oL3mSpzOf2yg9B6x6Cern+/tdvPQnuLlO4U7y2qHqlHIEh+pOZ5Q9iQIDAQABoyIwIDAJBgNVHRMEAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMEMA0GCSqGSIb3DQEBCwUAA4IBAQB9hTLpSJP3fJBNAISmLm919ExnfQm3n+s2a5SOkm7fIPhsqhbkuaYa1Z8lJSkwsbmhfCHZssaRMvjqFnlBPvQh6zG34ChP32ZKjYBl3+QQUkPHuISCtoIaQJFty4XDzJKrYTKcN0CGw+49MUqIHZK80AaA8mu8WXKCq6iueo7f7ndF9pc+Nqu7xZB738/uO5nghvr1f6kCq6wy80lIPgu9GaunWjyTLVZ1YVMmaMgv/rL2qvJO82cButBG4h5tPRcTxYXn/cN4aZKIJo0tTak8Dy5ORaI1qY9JyWvIJsxlna/9+BfVdTcV9T8jSEkt7/994iFIo8577BiD7hT12qiw</wsse:BinarySecurityToken>
			<wsu:Timestamp wsu:Id="TS-d3e519ce-263f-4697-b37c-c50a87d5c8db">
				<wsu:Created xmlns:wsu="wsu">2021-06-10T15:51:10.134Z</wsu:Created>
				<wsu:Expires xmlns:wsu="wsu">2021-06-10T15:56:10.134Z</wsu:Expires>
			</wsu:Timestamp>
			<ds:Signature Id="SIG-2" xmlns:ds="http://www.w3.org/2000/09/xmldsig#">
				<SignedInfo xmlns="http://www.w3.org/2000/09/xmldsig#">
					<CanonicalizationMethod Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#">
						<InclusiveNamespaces PrefixList="SOAP-ENV" xmlns="http://www.w3.org/2001/10/xml-exc-c14n#" />
					</CanonicalizationMethod>
					<SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256" />
					<Reference URI="#id-1">
						<Transforms>
							<Transform Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#">
								<InclusiveNamespaces PrefixList="" xmlns="http://www.w3.org/2001/10/xml-exc-c14n#" />
							</Transform>
						</Transforms>
						<DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256" />
						<DigestValue>ZPD4rH5iHVsusb8aTaZn/ghi9TjXXRA5rsYt8k0boiE=</DigestValue>
					</Reference>
					<Reference URI="#TS-d3e519ce-263f-4697-b37c-c50a87d5c8db">
						<Transforms>
							<Transform Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#">
								<InclusiveNamespaces PrefixList="wsse SOAP-ENV" xmlns="http://www.w3.org/2001/10/xml-exc-c14n#" />
							</Transform>
						</Transforms>
						<DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256" />
						<DigestValue>2xn5LiijL0Edak8pO778BbbvvT6xtH0vX69OZHXNPb0=</DigestValue>
					</Reference>
				</SignedInfo>
				<ds:SignatureValue>YXe4coMb4tFwJgGhyYMpQZ/tXD35S7IsJGQCJ3iHABVCZX95GLgPpRLFpBQhOg1as/mL3RMOqanC39FEgivyfSDj/Nq+5kH4sfpuGC/+Rw5etpNUQHVvIht7GckKwULP5juaXFJGL4cGLb8gw3vaakd45uV0j9ER2KdL5zTB6zMkl2ahmLbp2lC+KpVT4i8/H7wpCNSDM6Av9Wj5tnArrYplrhmPI+hkjfmgZTo+cdVYcLbgdZZx9nhOI+6QGaMiVKU0IsInkT2WH2kzxWBfGuu/dxcgsdzzTof08K3U3PXrPgSM5ONHYPmZB9/+ibZqbqPgrUUVOt9teAPGSYO8og==</ds:SignatureValue>
				<ds:KeyInfo Id="KI-EC95425802FB9F663F15021186132692">
					<wsse:SecurityTokenReference xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" wsu:Id="STR-EC95425802FB9F663F15021186132713">
						<wsse:Reference URI="#X509-EC95425802FB9F663F15021186132611" ValueType="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-x509-token-profile-1.0#X509v3" />
					</wsse:SecurityTokenReference>
				</ds:KeyInfo>
			</ds:Signature>
		</wsse:Security> 
	</SOAP-ENV:Header>
	<SOAP-ENV:Body xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" wsu:Id="id-1">
		<PlaceOrder xmlns="http://webcominc.com/">
			<username />
			<password />
			<owner />
		</PlaceOrder>
	</SOAP-ENV:Body>
</SOAP-ENV:Envelope>

Yes
No