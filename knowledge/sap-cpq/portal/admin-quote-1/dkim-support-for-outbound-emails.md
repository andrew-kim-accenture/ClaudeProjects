# DKIM Support for Outbound Emails | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/311c336d80914f8dad33dc0d007f1e4e.html?locale=en-US&state=PRODUCTION&version=2603
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

	
DKIM Support for Outbound Emails


	
Test DKIM Signature
	
Automatic Data Deletion
	
Personally Identifiable Information
	
Personal Data Log
	
WSDL and Certificate Management
	
Credential Management
	
Trusted Applications
	
Password Policy
	
Content Security Policy in SAP CPQ
	
Multi-factor Authentication
	
Security Recommendations
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
DKIM Support for Outbound Emails

The DomainKey Identified Mail (DKIM) authentication standard adds an encrypted digital signature to outbound email messages sent on company’s behalf.

As a result, email recipients who have implemented DKIM on their side can be certain that messages really come from SAP CPQ and have not been modified along the way.

SAP CPQ uses its own email servers that are configured per environment, while DKIM keys are configured per a tenant (each tenant in the environment needs to be configured separately).

Note

You can't export DKIM keys once they are imported to SAP CPQ.

Note

DKIM is supported only from an application. DKIM is not supported from scripting.

Setting up a DKIM Signature
To set up the functionality and generate a key, take the following steps:

Go to Setup  Security  DKIM Keys.

Enable the functionality.

Click New Key.

A pop-up displays.

In Selector, enter a unique name (for example: SAP).

The selector is added to the domain name and will be visible in the email header.

In Domain, enter the company’s domain name for which the DKIM key is generated.

From the Encryption drop-down list, select the signing algorithm.

RSA-SHA256 is selected by default.

Define how a certificate is generated.

Let SAP CPQ generate a certificate - If selected, SAP CPQ generates a new certificate and a private key. The length of each key is 2,048 bits.

Upload a certificate from a file - If selected, upload a PFX file containing a private key and a certificate by clicking Upload new file. Additionally, enter the password for unlocking the file in the corresponding field.

Click Save Key.

The key is displayed in the grid.

Note

There cannot be more than one DKIM key per domain.

The private key is not visible, whereas the public key of the defined DKIM key can be copied from the Public Key column or downloaded as a .cer file. Additionally, the DKIM key can be edited by clicking the Edit button. The selector, domain and encryption algorithm can all be edited, whereas the private/public key pair cannot be modified. You can leave the existing key pair as is or generate a new pair, as explained in step 7.

The following conditions determine whether or not an email message has a DKIM signature:

If the sender’s email is defined in Setup  Application Parameters  General Parameters  Sender Email Address and the DKIM signature has been set up for the sender’s email domain, the email is signed with the DKIM signature set for the sender’s email domain.

If neither the sender nor the From (user) email domain match any available DKIM settings, the email is not signed.

Activating the DKIM Key and Updating the DNS

The newly created DKIM key is inactive by default, so you have to activate it by enabling the toggle switch in the Active column. However, before activating the DKIM key, you need to add the public key to the DNS record.

When adding the public key to the DNS, the format of the name of the TXT record is selector._domainkey.domain.com, whereas the value in the TXT record is in the following format: v=DKIM1; k=rsa; p=MIIBIjANBgkqhki…;

The value after p= is the public key.

On this page
Setting up a DKIM Signature
Activating the DKIM Key and Updating the DNS
Yes
No