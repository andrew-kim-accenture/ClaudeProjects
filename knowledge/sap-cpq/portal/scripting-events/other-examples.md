# Other Examples | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/2b3c1dde6ee04bf4a119f0172e5ee3f5.html?locale=en-US&state=PRODUCTION&version=2603
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
Other Examples

Tabular view of database data in Script Workbench

This example script shows administrators how to display data in a table in the Script Workbench. The script is designed for administrators who want to get a cleaner overview of extensive data retrieved from the database.



def PrintTable(list):

    headers = []
    columnLenList = {}

    for column in list[0]:
        headers.append(column.Key)
        columnLenList[column.Key] = len(column.Key) + 3

    for row in list:
        for column in row:
            try:
                colLen = len(str(column.Value))
            except:
                colLen = 0

            if (colLen > 0 and colLen > columnLenList[column.Key]):
                columnLenList[column.Key] = colLen + 3
    row_format = ""
    for header in headers:
        row_format += "{:<" + str(columnLenList[header]) + "}"

    Trace.Write(row_format.format(*headers))
    for row in list:
        columns = []
        for column in row:
            try:
                columns.append(str(column.Value))
            except:
                columns.append("")

        Trace.Write(row_format.format(*columns))

PrintTable(SqlHelper.GetList('select * from users'))
Popup Notification


WorkflowContext.ClientScript = "alert('The quote owner has been notified');"

Setting a cart item customfield (based on the level of hierarchy (BoMLevel) assign a numeric sort to the column cartsort)


for theItem in Quote.Items:
                if theItem.BoMLevel.Value == "":
                                theItem.cartsort.Value = str(float(theItem.RolledUpQuoteItem)*1000000000)
                elif theItem.BoMLevel.Value == "1":
                                theItem.cartsort.Value = str(float(theItem.ParentRolledUpQuoteItem)*1000000000+float(theItem.QuoteItem)*1000000)
#................................

Setting the discount % based on table data

Sets discounts on field edit based on criteria. If it is not a printer and part of a printer bom set discount to 100 if no floor pricing is defined always set discount to 0 This allowed to have a line by line check where within a product type some can exceed discount while some can't.



tablename = "ijs_"+Quote.GetCustomField("CurrencyCode").Content+"_floorprice";
isprinter = SqlHelper.GetFirst("select sales_bom from " + tablename + " where sales_bom = '" + Item.Parent.Value + "' and part_number = '" + Item.PartNumber + "'");
printerparent = SqlHelper.GetFirst("select sales_bom from " + tablename + " where sales_bom = '" + Item.Parent.Value + "'");
hasfloor = SqlHelper.GetFirst("select part_number from " + tablename + " where part_number = '" + Item.PartNumber + "'");<para xmlns="http://ddue.schemas.microsoft.com/authoring/2003/5" />
if isprinter is None:
        if printerparent is not None:
                Item.DiscountPercent = 100;
        else:
                if hasfloor is None:
                        Item.DiscountPercent = 0;

Adjust the Quantity of a Line Item with an Expression (example of using TagParserQuote)


expr = "<*EVAL((<*CTX( Quote.ProductType(Equipment).SubTotal.DefaultDecimal )*>+<*CTX( Quote.ProductType(License).SubTotal.DefaultDecimal )*>)-((<*CTX( Quote.ProductType(Equipment).SubTotal.DefaultDecimal )*>+<*CTX( Quote.ProductType(License).SubTotal.DefaultDecimal )*>)*(<*TABLE( select customerSupportRate from SupportDiscountRates where discountPercent = (Select supportRate from PartnerInfo where resellerID='<*CTX( Visitor.Company.CompanyCode )*>') )*>/100)))*>"


if sender.ProductTypeName == "Support":    
        sender.Quantity = float(TagParserQuote.ParseString(expr))

Script to default the Channel Markup Percent field based on a custom table lookup


#create variable to hold the SQL lookup
cm=SqlHelper.GetFirst("SELECT CAST(PRICE as FLOAT) as PRICE FROM PRICING WHERE PART='-C5'")

#check if the channel markup perecent field is 0 or not - this ensures the script does not override a new value entered
if Item.ChannelMarkupPercent == 0:    
                #set the channel markup percent field to the PRICE field from the sql lookup
                Item.ChannelMarkupPercent=cm.PRICE

Compare items in cart to custom field value and set a 2nd custom field based on results


esp = SqlHelper.GetFirst("SELECT top 1 description from cart_item CI join cartitemcustomfields CF on CF.cart_id = CI.cart_id and CF.userid = CI.userid and CF.cart_item = CI.cart_item where CI.cart_id = '" + str(Quote.QuoteId) + "' and CI.userid = '" + Quote.GetCustomField("ownerid").Content + "' and warranty = 1 order by cast(description as nvarchar) asc");<para xmlns="http://ddue.schemas.microsoft.com/authoring/2003/5" />
if esp is not None:
        lesp = esp.description[:7];
        if Quote.GetCustomField("Supported ESP Level").Content == "Critical":
                Quote.GetCustomField("ESP Approved").Content = "1";
        elif Quote.GetCustomField("Supported ESP Level").Content == "Proactive" and lesp == "ESP PRO":
                Quote.GetCustomField("ESP Approved").Content = "1";
        elif Quote.GetCustomField("Supported ESP Level").Content == "Proactive" and lesp == "ESP CRI":
                Quote.GetCustomField("ESP Approved").Content = "0";
        else:
                Quote.GetCustomField("ESP Approved").Content = "0";
else:
        Quote.GetCustomField("ESP Approved").Content = "1"

On this page
Tabular view of database data in Script Workbench
Popup Notification
Setting a cart item customfield (based on the level of hierarchy (BoMLevel) assign a numeric sort to the column cartsort)
Setting the discount % based on table data
Adjust the Quantity of a Line Item with an Expression (example of using TagParserQuote)
Script to default the Channel Markup Percent field based on a custom table lookup
Compare items in cart to custom field value and set a 2nd custom field based on results
Yes
No