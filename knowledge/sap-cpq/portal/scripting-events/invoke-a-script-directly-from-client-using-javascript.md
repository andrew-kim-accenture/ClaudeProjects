# Invoke a script directly from client using javascript | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/3cfc05ebfe6a401bbb49a4a86032884f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Scripting Events, Properties and Event PipelineVersion: 2603English
Provide feedback on our search

	
Introduction
	
SAP CPQ script plugin
	
Alternatives to CLR Module Import
	
Common properties
	
Iron Python Events
	
How-to Examples


	
Replace New Style classes with Old Style classes in IronPython
	
Use custom table data
	
Invoke a script directly from client using javascript
	
Call an external web service
	
Consume Python Global Scripts as REST Webservices
	
Rest Service Call
	
Send xml to an external system
	
Using Arg.Custom paramter
	
Configure container child product
	
Use ApplyProductChanges method
	
Quote
	
Product Configurator
	
Working with Streams
	
Other Examples
	
Using Trace and Log
	
Tips and Tricks
	
Calculate Product Type Custom Discount field
	
How to use Scripting Modules?
	
How to Hide Custom Field
	
How to integrate with Litmos using IronPython scripting?
	
Integrate with MS CRM
	
Product completed event
	
Product Type Multiplier to Parent Items Only
	
Set cart item to optional by default?
	
Set custom field to optional/required?
	
Set the Multiplier and Quantity of all child items to the Multiplier and Quantity of the parent item
	
Total Extended Amount and Total Cost of Optional Items
	
Use Product Type Item custom calculations?
	
Use Quote Total custom calculations?
	
Use SelectedAttributes of Quote item
	
Unicode Support in Scripting
	
Get Cookies for REST UI API Authentication
	
Use the <*ExecuteScript()*> Tag
	
Send Attribute Values via Scripting in Bulk to SAP Variant Configuration and Pricing
	
Reset Values via Scripting
	
Random Object
	
Event Pipeline in Quote 1.0
	
Event Pipeline in Quote 2.0
	
Script Performance
Invoke a script directly from client using javascript
How to invoke a script directly from client using javascript?

An administrator can invoke script execution directly from the client by a JavaScript method.

Method signature: executeCustomScript(scriptName, param, refreshPage)

scriptName: (type: string) represents name of the script that should be invoked

param: (type: JSON object) that will be passed to the scipt as "Param" argument

refreshPage: (type: bool) if true the page will be refreshed after the script execution.

This example sends "PromoCode" entered by user and applies a promotion.

If PromoCode exists in the custom table and if it's not already added, the script will add a new additional discount.

SAP CPQ uses Scripting.ISqlHelper class to read data from the custom table.

In order to run this script admin should add the following code to the quote XSLT file:



<!-- Promotion -->
<div class="new_df">
  <h3>Promotion</h3>
  <div id="promotion">
    <table>
      <tr>
        <th>Promo code</th>
        <td class="scField">
          <input type="text" class="abbtextbox" style="width: 200px" id="PromoCodeField" value=""/>
        </td>
        <td>
          <a href="#">
            <xsl:attribute name="onclick">executeCustomScript('AddPromotion', { PromoCode: jQuery("#PromoCodeField").val() }, true); return false;</xsl:attribute>
            Apply promotion
          </a>
         </td>
       </tr>
     </table>
  </div>
</div>



promotion = SqlHelper.GetFirst("SELECT Name, Discount FROM PromoCodes WHERE PromoCode='" + Param.PromoCode + "'");
if promotion is not None and Quote.GetAdditionalDiscount(promotion.Name) is None:
    additionalDiscount = Quote.NewAdditionalDiscount();
    additionalDiscount.Description = promotion.Name;
    additionalDiscount.DiscountAmount = float(promotion.Discount);
    Quote.AddAdditionalDiscount(additionalDiscount);
    Quote.Calculate();
    Quote.Save();


Also, in responsive design an administrator can invoke script execution directly from the client by a JavaScript method defined in the script block within responsive template.

Method signature: executeScript(scriptName, param, callback)

scriptName: (type: string) represents name of the script that should be invoked

param: that will be passed to the script as "Param" argument

callback: callback function

In order to run the script admin should add the following code to the appropriate responsive template:



<script type="text/javascript">

  getXMLForCS = function (){
  cpq.server.executeScript('GetXMLScript', null, function(data) {alert( data );});      
}      

  </script>

Yes
No