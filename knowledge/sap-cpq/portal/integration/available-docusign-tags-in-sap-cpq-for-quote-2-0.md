# Available DocuSign Tags in SAP CPQ for Quote 2.0 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/10b874260c5046878e2cda8207505be9.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration


	
Configuration in DocuSign
	
Configuration in SAP CPQ


	
Available DocuSign Tags in SAP CPQ for Quote 2.0
	
DocuSign Integration for Quote 1.0
	
DocuSign Integration for Quote 2.0
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Available DocuSign Tags in SAP CPQ for Quote 2.0

Available DocuSign tags for Quote 2.0 in SAP CPQ.

The following table lists the available tags you can use in SAP CPQ for Quote 2.0.

Tip

X represents the incremental number of the (counter)signers order in the document signing process. It starts from number 1 and it is incremented by 1 for each signing step each time.

Tag

	

Description




<<signhere_X>>

	

Marks the position in the document where the signer's signature is placed.




<<signer_X_name>>

	

Marks the position in the document where the signer's name is placed (corresponds to Name column from the e-mail form where the envelope is prepared).




<<signer_X_position>>

	

Marks the position in the document where the signer's position is placed (corresponds to Position column from the e-mail form where envelope is prepared).




<<signer_X_company>>

	

Marks the position in the document where the signer's company name is placed (corresponds to Company Name column from the e-mail form where the envelope is prepared).




<<countersign_X>>

	

Marks the position in the document where the countersigner’s signature is placed.




<<countersigner_X_name>>

	

Marks the position in the document where the countersigner’s name is placed (corresponds to Name column from the Setup page for countersigners).




<<countersigner_X_company>>

	

Marks the position in the document where the countersigner's company name is placed. (corresponds to Company column from the Setup page for countersigners).




<<countersigner_X_position>>

	

Marks the position in the document where the countersigner's position is placed (corresponds to Position column from the Setup page for countersigners).




<<signer_X_initials>>

	

Marks the position in the document where the signer's initials are placed (corresponds to DocuSign's standard field Initial).




<<signer_X_datesigned>>

	

Marks the position in the document where DocuSign places the document signing date by signer X (corresponds to DocuSign's standard field Date Signed).




<<signer_X_checkbox_Y_mandatory>>

	

Marks the position in the document where a mandatory checkbox is placed. The checkbox is assigned to a specific signer. Multiple checkbox controls can be assigned to the same signer. Therefore, the counter Y starts from 1 and is incremented by 1. This tag corresponds to DocuSign's standard field Checkbox.




<<signer_X_checkbox_Y_optional>>

	

Marks the position in the document where an optional checkbox is placed. The checkbox is assigned to specific signer. Multiple checkbox controls can be assigned to the same signer. Therefore, the counter Y starts from 1 and is incremented by 1. This tag corresponds to DocuSign's standard field Checkbox.




<<signer_X_radiogroup_Y_mandatory_radio_Z>>

	

Marks the position in the document where a mandatory radio button group is placed. The mandatory radio button group is assigned to a specific signer. Mandatory multiple radio button groups with multiple radio buttons can be assigned to the same signer. Therefore, Y is used to count groups (starts from 1 and it's increment by 1) and Z is used to count the radio button order within the group (starts from 1 and it's increment by 1). This tag corresponds to DocuSign's standard field Radio Group.




<<signer_X_radiogroup_Y_optional_radio_Z>>

	

Marks the position in the document where an optional radio button group is placed. The optional radio button group is assigned to a specific signer. Optional multiple radio button groups with multiple radio buttons can be assigned to the same signer. Therefore, Y is used to count groups (starts from 1 and it's increment by 1) and Z is used to count the radio button order within the group (starts from 1 and it's increment by 1). This tag corresponds to DocuSign's standard field Radio Group.




<<countersigner_X_initials>>

	

Marks the position in the document where countersigner's initials are placed (corresponds to DocuSign's standard field Initial),




<<countersigner_X_datesigned>>

	

Marks the position in the document where DocuSign places the document signing date by the countersigner X (corresponds to DocuSign's standard field Date Signed).




<<countersigner_X_checkbox_Y_mandatory>>

	

Marks the position in the document where the mandatory checkbox is placed. The checkbox is assigned to a specific countersigner. Multiple checkbox controls can be assigned to the same countersigner. Therefore, the counter Y starts from 1 and is incremented by 1. This tag corresponds to DocuSign's standard field Checkbox.




<<countersigner_X_checkbox_Y_optional>>

	

Marks the position in the document where an optional checkbox is placed. The checkbox is assigned to a specific countersigner. Multiple checkbox controls can be assigned to the same countersigner. Therefore, the counter Y starts from 1 and is incremented by 1. This tag corresponds to DocuSign's standard field Checkbox.




<<countersigner_X_radiogroup_Y_mandatory_radio_Z>>

	

Marks the position in the document where a mandatory radio button group is placed. A mandatory radio button group is assigned to a specific countersigner. Mandatory multiple radio button groups with multiple radio buttons can be assigned to the same countersigner. Therefore, Y is used to count groups (starts from 1 and it's increment by 1) and Z is used to count the radio button order within the group (starts from 1 and it's increment by 1). This tag corresponds to DocuSign's standard field Radio Group.




<<countersigner_X_radiogroup_Y_optional_radio_Z>>

	

Marks the position in the document where an optional radio button group is placed. An optional radio button group is assigned to specific countersigner. Optional multiple radio button groups with multiple radio buttons can be assigned to the same countersigner.Therefore, Y is used to count groups (starts from 1 and it's increment by 1) and Z is used to count the radio button order within the group (starts from 1 and it's increment by 1). This tag corresponds to DocuSign's standard field Radio Group.

Note

The DocuSign tag text must match the document background color. This keeps the tag invisible in the document template and ensures a seamless signing experience.

Yes
No