# Using Arg.Custom paramter | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/1d045747353d436a88706e29f91cdc24.html?locale=en-US&state=PRODUCTION&version=2603
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
Using Arg.Custom paramter
How to use Arg.Custom paramter to pass quantity for all Main items

Workflow manager, when executing actions, passes the arg argument, which holds the Custom object. Custom object can hold various parameters received from UI layer. Action being executed has access to the Custom object and this can be used to achieve certain business logic based on user input from UI layer.

Example

Assigns received quantity to all Main items created from simple products

Input: Desired target quantity - passed via cart AJAX Param.Custom - WorkflowContext.Custom.Custom

Output: No output - affects Item Quantities

A Cart Custom Action will be written in IronPython. The action should read the Custom object of the WorkflowContext and check if it has a value. This value is the user entered quantity from the Cart form.

If it does have a value, the action should iterate through all main items, and for each main item that is simple product, it would assign the value from the Custom object (the quantity entered by user) into the Quantity of each item. After going through all items, the action should execute Calculate() method on the Quote and then the Save() method to save the items with new quantities and prices. If Custom argument does not have a value, the action should just stop, without returning any error.



#checks if parameter is a number
def isNumber(s):
try:
    float(s)
    return True
    except ValueError:
    return False

    Trace.Write('Mass Assigning Quantity. Custom = ' + WorkflowContext.Custom.Custom)
        if WorkflowContext.Custom.Custom is not None and isNumber(WorkflowContext.Custom.Custom):
            targetQty=float(WorkflowContext.Custom.Custom)
                Trace.Write('targetQty=' + str(targetQty))
                for QuoteItem in Quote.MainItems:
                            if QuoteItem.IsSimple:
                                Trace.Write('Assigning Item with PN: ' + QuoteItem.PartNumber)
                                    QuoteItem.Quantity = targetQty
                            Quote.Calculate()
                        Quote.Save()


To populate this Custom object, Quote Transformation need to be edited and JS function has to be added. This function will take value from TextBox, Custom Field or some other field on the quote and set that value to the cartAjaxParam.Custom object and than Custom object will be available through the cartAjaxParam when Webcom.Configurator.CartManager.ExecuteCartAction(actionId, cartAjaxParam, null, stdCallback) is called.



<div style="text-align:left; padding: 5px;"> 
<span class="ac_section_title" style="color:#616161">Mass assign Quantity: </span><input type="text" style="width:40px;" id="txtMassAssignQuantity"></input>
<script type="text/javascript">
        function massAssign(){
            var actionId=<xsl:choose><xsl:when test="count(/Cart/Actions/Action[ActionNameInDefaultLanguage='Mass Assign Quantity'])>0"><xsl:value-of disable-output-escaping="yes" select="/Cart/Actions/Action[ActionNameInDefaultLanguage='Mass Assign Quantity']/ActionId"></xsl:value-of></xsl:when><xsl:otherwise>0</xsl:otherwise></xsl:choose>;
            if (actionId!=0){
                var ctrl=document.getElementById("txtMassAssignQuantity");
                if(ctrl != undefined){
                    if (ctrl.value !=''){ //only if textbox has value
                        if (!isNaN(ctrl.value)){//only if textbox has a number
                            cartAjaxParam.Custom=ctrl.value;
                            Webcom.Configurator.CartManager.ExecuteCartAction(actionId, cartAjaxParam, null, stdCallback);
                        }
                    }
                }
            }
        }
</script><para xmlns="http://ddue.schemas.microsoft.com/authoring/2003/5" />
<xsl:if test="count(/Cart/Actions/Action[ActionNameInDefaultLanguage='Mass Assign Quantity'])>0">
    <input type="button" value="Go">
      <xsl:if test="count(/Cart/MainItems/MainItem)>0">
        <xsl:attribute name="onclick">massAssign()</xsl:attribute>
      </xsl:if>
    </input>
  </xsl:if>    
</div>

On this page
How to use Arg.Custom paramter to pass quantity for all Main items
Example
Yes
No