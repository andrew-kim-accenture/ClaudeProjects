# Integrate with MS CRM | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/7fc27540a0f14bd1a10b639117a9d4d7/d2c0fe6d05f44b57b5d88933357984fb.html?locale=en-US&state=PRODUCTION&version=2603
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
Integrate with MS CRM

An administrator can write scripts to fully integrate Microsoft CRM with CPQ.

IropPython script engine exposes MSCrm toolkit classes.

There are two main objects available in scripting for communication with MSCrm:

MSCrmService of type IOrganizationService

MSCrmServiceContext that allows us to use LINQ with Microsoft Dynamics CRM 2011 and Microsoft Dynamics CRM Online.

Note

In the following script examples, we use MSCrmServiceContext.OpportunitySet.Where(lambda x: x.OpportunityId == oppId).FirstOrDefault() to retrieve the entire opportunity object with all the involved properties. Have in mind that this may affect the performance of the integration and slow down the system, but it can be used if you need to retrieve all opportunity properties.

Alternatively, for an improved performance, you should retrieve only the necessary properties of the opportunity by using the Retrieve and the ColumnSet methods: opportunity = MSCrmService.Retrieve(Opportunity.EntityLogicalName, oppId, ColumnSet("name","customerid","parentcontactid")).

ColumnSet retrieves the values of stated attributes contained in the Column property, and the values of other attributes are retrieved as null.

For an optimal performance, retrieve only the properties that are needed, not the entire opportunity. If you are using the example scripts in this page, replace MSCrmServiceContext.OpportunitySet.Where(lambda x: x.OpportunityId == oppId).FirstOrDefault() with MSCrmService.Retrieve(Opportunity.EntityLogicalName, oppId, ColumnSet("name","customerid","parentcontactid")).

Example
Example below will show how to create an opportunity with line items from a CPQ quote using IronPython script.


# MSCRMOpportunityId is string so it must be converted to System.Guid
oppId = Guid.Parse(MSCRMOpportunityId)
# Get Primary Unit
uoMId = next((x for x in MSCrmServiceContext.UoMSet if x.Name == "Primary Unit"), None).Id
# Get Default Subject
subjectId = next((x for x in MSCrmServiceContext.SubjectSet if x.Title == "Default Subject"), None).Id
# Get Default Unit
uoMScheduleId = next((x for x in MSCrmServiceContext.UoMScheduleSet if x.Name == "Default Unit"), None).Id
# Get opportunity by id
opp = next((x for x in MSCrmServiceContext.OpportunitySet if x.OpportunityId == oppId), None)
# Create opportuniy if does not exist.
if opp is None:
    opp = Opportunity()
    opp.Id = Guid.NewGuid()
    opp.Name = "My Opportunity"
    # Get the customer and attach it to opportunity.
    opp.CustomerId = EntityReference(Account.EntityLogicalName, next((x for x in MSCrmServiceContext.AccountSet if x.Name == Quote.BillToCustomer.CompanyName), None).Id)
    # Create opportunity.
    MSCrmService.Create(opp)
# Delete all opportunity products
for op in [x for x in MSCrmServiceContext.OpportunityProductSet if x.OpportunityId.Id == oppId]:
    MSCrmService.Delete(OpportunityProduct.EntityLogicalName, op.OpportunityProductId)
# Create opportunuty products from quote main items.
for mainItem in Quote.MainItems:
    # Get product by product name.
    product = next((x for x in MSCrmServiceContext.ProductSet if x.Name == mainItem.ProductName), None)
    # Create product if does not exist.
    if product is None:
        product = Crm.MSCrmService.Product()
        # Assign product properties
        product.Name = mainItem.ProductName
        product.Description = mainItem.Description
        product.ProductNumber = mainItem.PartNumber
        product.SubjectId = EntityReference(Subject.EntityLogicalName, subjectId)
        product.DefaultUoMScheduleId = EntityReference(UoMSchedule.EntityLogicalName, uoMScheduleId)
        product.DefaultUoMId = EntityReference(UoM.EntityLogicalName, uoMId)
        product.QuantityDecimal = 2
        product.Price = Money(mainItem.ListPrice)
        # Assign opportunity price list to the product
        product.PriceLevelId = EntityReference(PriceLevel.EntityLogicalName, opp.PriceLevelId.Id)
        # Create product and store product id for further usage.
        productId = MSCrmService.Create(product)
        # Get newly created product.
        product = next((x for x in MSCrmServiceContext.ProductSet if x.Id == productId), None)
    # Gets the product price list by product id.
    ppl = next((x for x in MSCrmServiceContext.ProductPriceLevelSet if x.ProductId.Id  == product.Id), None)
    # If price list does not exist create it.
    if ppl is None:
        ppl = ProductPriceLevel()
        ppl.ProductId = EntityReference(Crm.MSCrmService.Product.EntityLogicalName, product.Id)
        ppl.UoMId = EntityReference(UoM.EntityLogicalName, uoMId)
        ppl.Amount = Money(mainItem.ListPriceInMarket)
        ppl.QuantitySellingCode = OptionSetValue(1)
        ppl.PricingMethodCode = OptionSetValue(1)
        ppl.PriceLevelId = EntityReference(PriceLevel.EntityLogicalName, opp.PriceLevelId.Id)
        MSCrmService.Create(ppl)
    # Create new opportunity product.
    op = OpportunityProduct()
    # Assign oportunity poroduct properties.
    op.OpportunityProductId = Guid.NewGuid()
    op.ProductId = EntityReference(Crm.MSCrmService.Product.EntityLogicalName, product.Id)
    op.OpportunityId = EntityReference(Opportunity.EntityLogicalName, opp.Id)
    op.Quantity = mainItem.Quantity
    op.IsPriceOverridden = True
    op.UoMId = EntityReference(UoM.EntityLogicalName, uoMId)
    op.PricePerUnit = Money(mainItem.ListPrice)
    op.ManualDiscountAmount = Money(mainItem.DiscountAmount)
    MSCrmService.Create(op)
# If quote is not attached to opportunuty create CPQ Quote custom object.
if not Quote.OpportunityId:
    e = Entity()
    e.LogicalName = "new_cpqquote"
    e["new_name"] = Quote.CompositeNumber
    e["new_opportunity"] = EntityReference(Opportunity.EntityLogicalName, opp.Id)
    # Create a direct link to quote.
    linkToQuote = "https://yourdomain.cpq.cloud.sap/mscrm/mscrmlogin.aspx?domain_name=mydomain&userId={}&id={{{}}}&action=edit&quote={}&typename=opportunity".format(MSCRMUserId, MSCRMOpportunityId, Quote.CompositeNumberCrypted)
    e["new_linktoquote"] = linkToQuote
    MSCrmService.Create(e)
# Attach the quote to the opportunity.
Quote.OpportunityId = MSCRMOpportunityId

Example
How to update a MSCRM opportunity custom field with value from a CPQ quote custom field.


opp = next((x for x in MSCrmServiceContext.OpportunitySet if x.Name == "Test Oppty Webcom"), None)
opp.Attributes["new_webcomtest"] = Quote.GetCustomField("CPQ_CUSTOM_FIELD").Content
MSCrmServiceContext.UpdateObject(opp)
MSCrmService.Update(opp)

Example
How to update a MSCRM opportunity custom object via an IronPython script.


e = Entity();
e.LogicalName = "new_testcustomobject";
e["new_partnumbertest"] = "some part number";
e["new_name"] = "something new webcom1"
e["new_testcustomobjectsid"] = EntityReference("opportunity", Guid.Parse('0b5d6495-2506-e111-8e8f-1cc1def1b5ff'));
MSCrmService.Create(e);

Example
How to set CPQ customer information from Opportunity account/contact


# Title: How to update MSCRM opportunity stage.
# Title: How to set CPQ customer information from Opportunity account/contact.
from Microsoft.Xrm.Sdk.Query import ColumnSet

oppId = Guid.Parse(MSCRMOpportunityId)
opportunity = next((x for x in MSCrmServiceContext.OpportunitySet if x.OpportunityId == oppId), None)
account = next((x for x in MSCrmServiceContext.AccountSet if x.Id == opportunity.CustomerId.Id), None)
contact = next((x for x in MSCrmServiceContext.ContactSet if x.Id == account.PrimaryContactId.Id), None)

customerCode = 'A' + str(account.Id) + '-C' + str(contact.Id)
customer = CustomerHelper.GetCustomer(customerCode, 'BillTo')
if (customer is None):
  customer = Quote.NewCustomer("BillTo")
  customer.Active = True
  customer.CustomerCode = customerCode

#update customer based on account and contact information
customer.FirstName = contact.FirstName
customer.LastName = contact.LastName
customer.CompanyName = account.Name
customer.Address1 = contact.Address1_Line1
customer.ZipCode = contact.Address1_PostalCode
customer.City = contact.Address1_City
customer.Email = contact.EMailAddress1
customer.CrmAccountId = str(account.Id)
customer.CrmContactId = str(contact.Id)
customer.BusinessPhone = contact.Telephone1

Quote.SaveCustomer(customer)

On this page
Example
Example
Example
Example
Yes
No