# One-click Approval HTML Email Template | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/38d17a0fbb0a46e4a00d599ed2c520c5.html?locale=en-US&state=PRODUCTION&version=2603
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


	Setup Help

	
Statuses
	
Workflow Actions
	
Workflow
	
Workflow Permissions
	
Required Fields By Workflow Action
	
Item Actions Workflow
	
Email Lists
	
Notifications


	
Notification Implementation
	
Approval via PDA
	
One-click Approval HTML Email Template
	
Approval Rules
	
Approval Branch
	
Approval Auto-Reminder
	
Likelihood of Approval
	
Approving Quotes in One Click
	
Quote Revisions
	
Outbound SAP CPQ Emails
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
One-click Approval HTML Email Template

The one-click approval HTML email template helps you set up the approval request email Approvers receive when Quotes are submitted for approval.

The email contains the Quote number, the description of the violated rules and customer information. By using the HTML email template and following the steps outlined in Approving Quotes in One Click, Approvers are able to accept or reject Quotes directly from the email, without logging into SAP CPQ.

You can modify CSS properties as needed.



<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
padding: 0px;
overflow-x: hidden !important;
font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
font-size: 14px;
line-height: 1.42857143;
color: #636466;
background-color: #fff;
margin: 0;
text-align: center;
}
a {
text-decoration: none;
}
a,a:hover {
color: #00ABE3;
}
 h2 {
color: #636466;
font-weight: 500;
}
.cald_header_bar {
background-color: #fff;
color: #636466;
height: 64px;
margin: 0;
text-align: center;
vertical-align: middle;
width: 100%;
}
.cald_logo {
margin: 10px;
height: 40px;
background: url('https://yourdomain.cpq.cloud.sap/mt/DEFAULT/images/logo_left.gif') no-repeat center center;
background-size: contain;
}
.rainbow {
height: 5px;
width: 100%;
background-image: linear-gradient( 90deg, #fab423 0%, #94c84a 25%, #00a7e0 50%, #00ABE3 60%, #364CA0 80%, #904D9E 90%, #a96dae 100%);
background-repeat: no-repeat;
background-size: contain;
min-height: 5px;
max-height: 5px;
height: 5px;
width: 100%;
display: table;
content: " ";
}
.content-wrapper {
display: block;
margin: 0 auto;
padding: 0 15px;
}
.section-content {
text-align:left;
border-top: 1px solid #d7d7d7;
border-bottom: 1px solid #d7d7d7;
padding: 15px 0px;
overflow: auto;
}.section {
display: inline-block;
width:30%;
margin-right: 20px;
float: left;
}
.button-container {
padding-top: 20px;
text-align: center;
}
.dynamic {
text-align:left;
font-weight: 600;
word-break: break-word;
}
.blue {
-webkit-border-radius: 8;
-moz-border-radius: 8;
border-radius: 8px;
color: #ffffff;
font-size: 18px;
background: #337ab7;
padding: 10px 30px 10px 30px;
text-decoration: none;
border: none;
margin-left: 30px;
float: left;
}
.blue:hover {
background: #2980b9;
text-decoration: none;
cursor: pointer;
color: #ffffff;
}
.red {
-webkit-border-radius: 8;
-moz-border-radius: 8;
border-radius: 8px;
color: #ffffff;
font-size: 18px;
background: #ad3a3a;
padding: 10px 30px 10px 30px;
text-decoration: none;
border: none;
float: right;
margin-right: 30px;
}
.red:hover {
background: #903D3D;
text-decoration: none;
cursor: pointer;
color: #ffffff;
}
@media only screen and (max-width: 767px) {
.section {
display: block;
width: 100%;
margin-right: 0px;
}
.static,.dynamic {
display: block;
float: left;
}
.info {
max-width: 100vw;
}
.content-wrapper {
display: block;
}
.quote-details{
margin:0;
}
.blue, .red {
display: block;
width: 80%;
margin: 0 auto;
float: none;
}
}
@media only screen and (min-width: 1560px) {
.button-container{
width:30%;
margin: 0 auto;
}
}
@media only screen and (min-width: 1200px) {
.button-container{
width:50%;
margin: 0 auto;
}
}
</style>
</head>
 
<body>
<div class="cald_header_bar">
<table class="cald_logo" width="181px" border="0" cellspacing="0" cellpadding="20" background="https://yourdomain.cpq.cloud.sap/mt/DEFAULT/images/logo_left.gif" background-repeat = "no-repeat" style="height: 58px;background-repeat: no-repeat;background-position: center; margin:0 auto; margin-bottom:5px;">
<tr><td></td></tr>
</table>
<table class="rainbow" width="100%" border="0" cellspacing="0" cellpadding="20" background="linear-gradient( 90deg, #fab423 0%, #94c84a 25%, #00a7e0 50%, #00ABE3 60%, #364CA0 80%, #904D9E 90%, #a96dae 100%)" style="height: 5px;
width: 100%;
background-image: linear-gradient( 90deg, #fab423 0%, #94c84a 25%, #00a7e0 50%, #00ABE3 60%, #364CA0 80%, #904D9E 90%, #a96dae 100%);
background-repeat: no-repeat;
background-size: contain;
min-height: 5px;
max-height: 5px;
height: 5px;
width: 100%;
display: table;
content: ' ';">
</table>
</div>
<div class="content-wrapper">
<h2 style="text-align:left;">Approval Request for Quote
<* SYSTEMQUOTATIONNUMBER *>
</h2>
<div class="info">
</div>
<p style="text-align:left;">
<strong>
<* CO_INFO(NAME) *>
</strong>
<span> has submitted </span>
<a href='<*CTX( Quote.Link.Crypted )*>' target="_blank"> Quote </a>
<span>for your approval</span>
</p>
<div class="section-content">
<div class="section">
<div class="static">
Violated Rule(s):
</div>
<div class="dynamic">					
<div style="text-align:justify;">
[IF]([EQ](<*CTX( Quote.Approvals.ApprovalRule(Exceeded Discount).IsViolated )*>,True)){
<p class="rule-validation"><*CTX( Quote.Approvals.ApprovalRule(Exceeded Discount).Description )*></p>
}{}[ENDIF]
</div>											
</div>
</div>
<div class="section">
<table><tr>
<td class="static" style="text-align:left;">
Customer:
</td>
<td class="dynamic">
<p class="quote-details">
<*CTX( Quote.Customer(BillTo).Company )*>
</p>
</td>
</tr>
<tr>
<td class="static" style="text-align:left;">
Country:
</td>
<td class="dynamic">
<p class="quote-details">
<*CTX( Quote.Customer(BillTo).Country )*>
</p>
</td>
</tr>
<tr>
<td class="static" style="text-align:left;">
Email:
</td>
<td class="dynamic">
<p class="quote-details">
<*CTX( Quote.Customer(BillTo).Email )*>
</p>
</td>
</tr></table>
</div>
<!--[if  gte mso 9]>
<p></p>
<![endif]-->
<div class="section">
<table>
<tr>
<td class="static" style="text-align:left;">
Total Amount:
</td>
<td class="dynamic">
<p class="quote-details">
<*CTX( Quote.Total.TotalAmount.MarketDisplay )*>
</p>
</td>
</tr>
<tr>
<td class="static" style="text-align:left;">
Average Discount Percent
</td>
<td class="dynamic">
<p class="quote-details">
<* Eval(FormatNumber(<* AverageDiscountPercent *>,2)) *>
</p>
</td>
</tr>
<tr>
<td class="static" style="text-align:left;">
Gross Margin:
</td>
<td class="dynamic">
<p class="quote-details">
<*CTX( Quote.Total.GrossMarginPercent.MarketDisplay )*>
</p>
</td>
</tr></table>
</div>
</div>
<div class="button-container" style="max-width:850px; margin:0 auto;">
<!--[if  gte mso 9]>
<br></br><div style="width:50%">
<table width="30%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td bgcolor="#337ab7" style="padding: 12px 18px 12px 18px; -webkit-border-radius:3px; border-radius:3px" align="center"><a href="<*CTX( Quote.Approvals.ApproveQuoteLink )*>" target="_blank" style="font-size: 16px; font-family: Helvetica, Arial, sans-serif; font-weight: normal; color: #ffffff; text-decoration: none; display: inline-block; borer-radius:8px; background-clip: padding-box">Accept</a></td>
        <td style="width:200px;"></td>
          <td bgcolor="#ad3a3a" style="padding: 12px 18px 12px 18px; -webkit-border-radius:3px; border-radius:3px" align="center"><a href="<*CTX( Quote.Approvals.RejectQuoteLink )*>" target="_blank" style="font-size: 16px; font-family: Helvetica, Arial, sans-serif; font-weight: normal; color: #ffffff; text-decoration: none; display: inline-block; borer-radius:8px; background-clip: padding-box">Reject</a></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<![endif]-->
<a href="<*CTX( Quote.Approvals.ApproveQuoteLink )*>" target="_blank" class="blue" style="mso-hide:all;">Accept</a>
<a href="<*CTX( Quote.Approvals.RejectQuoteLink )*>" target="_blank" class="red" style="mso-hide:all;">Reject</a>
</div>
</div>
</div>
</body>
</html>

Yes
No