# Perform Cart Action - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/838cf3f3fe6a4e1fa1ea28827f0977ad.html#input-xml-example-with-%3Ccomments%3E-node
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API


	
Simple Product Administration SOAP API
	
Customer Administration SOAP API
	
User Administration SOAP API
	
ImportMaterialsFromERP SOAP API
	
Company Administration SOAP API
	
Link Opportunity SOAP API
	
Custom Table Administration SOAP API
	
Get Catalogue Data SOAP API
	
Get Quote Data SOAP API
	
Get Quote Items Attributes SOAP API
	
Request for Quotation SOAP API
	
Search Quotes SOAP API
	
Search Quotes from SF SOAP API
	
New Quote SOAP API
	
Place Order SOAP API
	
Validate Catalogue Codes SOAP API
	
Get Cart Properties SOAP API
	
Get Cart Actions SOAP API
	
Perform Cart Action SOAP API


	
Perform Cart Action - Input Parameters
	
Perform Cart Action – Output Parameters
	
Result XML Examples
	
Input XML Schema - Perform Cart Action
	
Output XML Schema - Perform Cart Action
	
Add Items Data SOAP API
	
Perform Quote Action SOAP API
	
Set Cart Properties SOAP API
	
Set Cart Properties For Every Quote In Opportunity SOAP API
	
Set Cart Item Properties SOAP API
	
Create New Quote and Get Quote Data SOAP API
	
SOAP API Authentication
	
SOAP API Error Codes
	
Pricing API
	
DoYouSeeMe API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
Perform Cart Action - Input Parameters
Tag	Data Type	Description	Required	Comments


Username

	

String (20)

	

Only SAP CPQ users can execute this function. SAP CPQ user is defined in SAP CPQ Setup.

	

Yes

	

Username of API user




Password

	

String (25)

	

Only SAP CPQ users can execute this function. Password is defined in SAP CPQ Setup.

	

Yes

	

Password of API user




compositeCartId

	

Number (8)

	

Order# (8-digit number)

	

Yes

	

SAP CPQ System quotation number




erpId

	

String(255)

	

Not Used

	

No

	

This field is kept for backwards compatibility purpose - it is ignored today




ActionXML

	

XML

	

Action description

	

Yes

	

It is recommended to obtain a list of available actions using GetActionList API call prior to executing an action using this function (PerformCartAction).

Note

Parameters for custom actions are not suppported in the Perform Cart Action Web Method. Parameters are used only for a few standard actions that need parameters (Accept Proposal, Change Status, Create Partial Order and Order Status Update). In most cases, the parameter is the status.

Input XML Definition
Element Name	Data Type	Description	 	 


Action/Name

	 	

Tag containing action name

	 	

Name of the SAP CPQ Workflow action




Action/Parameters

	 	

Additional parameters

	 	

One node for each action parameter

Note

The Reassign action is not supported by API.

Input XML Example


<ACTION>
  <NAME>Change Status</NAME>
  <PARAMETER name="NewStatus">Order Placed</PARAMETER>
</ACTION>
<COMMENTS> Node Details

Only the Accept Proposal action supports sending comments, while the other three actions (Change Status, Create Partial Order and Order Status Update) do not.

<CommentSource>

The node is not required and refers to the system from which the comment originates (SAP Commerce Cloud, or SAP CPQ).

<CartComments>

The <UserFullName> subnode is required.

The <UserEmail> subnode is required.

The <UserCompany> subnode is optional.

The <Comment> subnode refers to the comment on the quote level and is optional. However, if the subnode is provided empty, the comment will not be saved.

<ItemComments>

The <ItemId> subnode refers to the quote item ID in SAP CPQ and is required.

The <UserFullName> subnode is required.

The <UserEmail> subnode is required.

The <UserCompany> subnode is optional.

The <Comment> subnode refers to the comment on the item level and is optional. However, if the subnode is provided empty, the comment will not be saved.

Input XML Example with <COMMENTS> Node


<?xml version="1.0" encoding="utf-8"?>
<ACTION>
    <NAME>Accept Proposal</NAME>
    <ORDER_ID>123456</ORDER_ID>
    <EXTERNAL__STATUS>Ordered</EXTERNAL__STATUS>
    <COMMENTS>
        <CommentSource>SAP Commerce Cloud</CommentSource>
        <CartComments>
            <CartComment>
                <UserFullName>Sandra Smith</UserFullName>
                <UserEmail>sandra_smith@zoho.com</UserEmail>
                <UserCompany>Acme</UserCompany>
                <Comment>Comment on the Cart Level</Comment>
            </CartComment>
        </CartComments>
        <ItemComments>
            <ItemComment>
                <ItemId>4280</ItemId>
                <UserFullName>Sandra Smith</UserFullName>
                <UserEmail>sandra_smith@zoho.com</UserEmail>
                <UserCompany>Acme</UserCompany>
                <Comment>Comment on the item level</Comment>
            </ItemComment>
        </ItemComments>
    </COMMENTS>
</ACTION>
On this page
Input XML Definition
Input XML Example
<COMMENTS> Node Details
Input XML Example with <COMMENTS> Node
Yes
No