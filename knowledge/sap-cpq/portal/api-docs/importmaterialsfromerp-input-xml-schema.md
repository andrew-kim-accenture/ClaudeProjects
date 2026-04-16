# ImportMaterialsFromERP - Input XML Schema | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/9128e5d5758d416391d40cc71c7386f7.html?locale=en-US&state=PRODUCTION&version=2603
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


	
ImportMaterialsFromERP - Input Parameters
	
ImportMaterialsFromERP - Input XML Schema
	
ImportMaterialsFromERP - Input Examples
	
ImportMaterialsFromERP - Output XML Schema
	
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
ImportMaterialsFromERP - Input XML Schema


<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
 <xs:element name="Products">
  <xs:complexType>
   <xs:sequence>
    <xs:element name="Product" maxOccurs="unbounded" minOccurs="1">
     <xs:complexType>
      <xs:sequence>
       <xs:element name="Categories" maxOccurs="1" minOccurs="1">
        <xs:complexType>
         <xs:sequence>
          <xs:element type="xs:string" name="USEnglish"/>
         </xs:sequence>
        </xs:complexType>
        </xs:element>
        <xs:element name="ProductName" maxOccurs="1" minOccurs="1">
         <xs:complexType>
          <xs:sequence>
           <xs:element type="xs:string" name="USEnglish"/>
          </xs:sequence>
         </xs:complexType>
        </xs:element>
        <xs:element name="ProductType" type="xs:string" maxOccurs="1" minOccurs="1">
        </xs:element>
        <xs:element name="ProductSystemId" type="xs:string" maxOccurs="1" minOccurs="1">
        </xs:element>
        <xs:element name="UnitOfMeasure" type="xs:string" maxOccurs="1" minOccurs="0">
        </xs:element>
        <xs:element name="Description">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="xs:string" name="USEnglish"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
        <xs:element name="PartNumber" type="xs:string" maxOccurs="1" minOccurs="0"> 
        </xs:element>
        <xs:element name="GeneralItemCategoryGroup" type="xs:string" maxOccurs="1" minOccurs="0"> 
        </xs:element>
        <xs:element name="HasUsagePricing" type="xs:string" maxOccurs="1" minOccurs="0"> 
        </xs:element>
        <xs:element name="IsBundleProduct" type="xs:boolean" maxOccurs="1" minOccurs="0">
        </xs:element>
        <xs:element name="PricingMechanism" type="xs:string" maxOccurs="1" minOccurs="0">
        </xs:element>
        <xs:element name="PricingCode" type="xs:string" maxOccurs="1" minOccurs="0">
        </xs:element>
        <xs:element name="ProductVersion" type="xs:string" maxOccurs="1" minOccurs="0">
        </xs:element>
        <xs:element name="OrderItemType" type="xs:string" maxOccurs="1" minOccurs="0">
        </xs:element>
        <xs:element name="IsSAPProduct" type="xs:boolean" maxOccurs="1" minOccurs="0">
        </xs:element>
        <xs:element name="IsSyncedFromBackOffice" type="xs:boolean" maxOccurs="1" minOccurs="0">
        </xs:element>
        <xs:element name="IsSubscription" type="xs:boolean" maxOccurs="1" minOccurs="0">
        </xs:element> 
        <xs:element name="Active" type="xs:boolean" maxOccurs="1" minOccurs="0">
        </xs:element>
        <xs:element name="BillingCycle" maxOccurs="1" minOccurs="0">
         <xs:complexType>
          <xs:sequence>
           <xs:element name="Values" maxOccurs="1" minOccurs="0">
            <xs:complexType>
             <xs:sequence>
              <xs:element name="Value" maxOccurs="unbounded" minOccurs="0">
               <xs:complexType>
                <xs:sequence>
                 <xs:element name="ValueCode" type="xs:string" maxOccurs="1" minOccurs="1">
                 </xs:element>
                </xs:sequence>
               </xs:complexType>
              </xs:element>
             </xs:sequence>
            </xs:complexType>
           </xs:element>
          </xs:sequence>
         </xs:complexType>
        </xs:element>
        <xs:element name="ContractDuration" maxOccurs="1" minOccurs="0">
         <xs:complexType>
          <xs:sequence>
           <xs:element name="Values" maxOccurs="1" minOccurs="0">
            <xs:complexType>
             <xs:sequence>
              <xs:element name="Value" maxOccurs="unbounded" minOccurs="0">
               <xs:complexType>
                <xs:sequence>
                 <xs:element name="ValueCode" type="xs:string" maxOccurs="1" minOccurs="1">
                 </xs:element>
                 <xs:element name="Unit" type="xs:string" maxOccurs="1" minOccurs="1">
                 </xs:element>
                </xs:sequence>
               </xs:complexType>
              </xs:element>
             </xs:sequence>
            </xs:complexType>
           </xs:element>
          </xs:sequence>
         </xs:complexType>
        </xs:element>
        <xs:element name="ContractExtensionPeriod" maxOccurs="1" minOccurs="0">
         <xs:complexType>
          <xs:sequence>
           <xs:element name="Values" maxOccurs="1" minOccurs="0">
            <xs:complexType>
             <xs:sequence>
              <xs:element name="Value" maxOccurs="unbounded" minOccurs="0">
               <xs:complexType>
                <xs:sequence>
                 <xs:element name="ValueCode" type="xs:string" maxOccurs="1" minOccurs="1">
                 </xs:element>
                 <xs:element name="Unit" type="xs:string" maxOccurs="1" minOccurs="1">
                 </xs:element>
                </xs:sequence>
               </xs:complexType>
              </xs:element>
             </xs:sequence>
            </xs:complexType>
           </xs:element>
          </xs:sequence>
         </xs:complexType>
        </xs:element>
        <xs:element name="ServiceProfile" maxOccurs="1" minOccurs="0">
         <xs:complexType>
          <xs:sequence>
           <xs:element name="Values" maxOccurs="1" minOccurs="0">
            <xs:complexType>
             <xs:sequence>
              <xs:element name="Value" maxOccurs="unbounded" minOccurs="0">
               <xs:complexType>
                <xs:sequence>
                 <xs:element name="ValueCode" type="xs:string" maxOccurs="1" minOccurs="1">
                 </xs:element> 
                </xs:sequence>
               </xs:complexType>
              </xs:element>
             </xs:sequence>
            </xs:complexType>
           </xs:element>
          </xs:sequence>
         </xs:complexType>
        </xs:element>
        <xs:element name="ResponseProfile" maxOccurs="1" minOccurs="0">
         <xs:complexType>
          <xs:sequence>
           <xs:element name="Values" maxOccurs="1" minOccurs="0">
            <xs:complexType>
             <xs:sequence>
              <xs:element name="Value" maxOccurs="unbounded" minOccurs="0">
               <xs:complexType>
                <xs:sequence>
                 <xs:element name="ValueCode" type="xs:string" maxOccurs="1" minOccurs="1">
                 </xs:element>
                </xs:sequence>
               </xs:complexType>
              </xs:element>
             </xs:sequence>
            </xs:complexType>
           </xs:element>
          </xs:sequence>
         </xs:complexType>
        </xs:element>
        <xs:element name="ServiceContractDuration" maxOccurs="1" minOccurs="0">
         <xs:complexType>
          <xs:sequence>
           <xs:element name="Values" maxOccurs="1" minOccurs="0">
            <xs:complexType>
             <xs:sequence>
              <xs:element name="Value" maxOccurs="unbounded" minOccurs="0">
               <xs:complexType>
                <xs:sequence>
                 <xs:element name="ValueCode" type="xs:string" maxOccurs="1" minOccurs="1">
                 </xs:element>
                 <xs:element name="Unit" type="xs:string" maxOccurs="1" minOccurs="1">
                </xs:element>
               </xs:sequence>
              </xs:complexType>
             </xs:element>
            </xs:sequence>
           </xs:complexType>
          </xs:element>
         </xs:sequence>
        </xs:complexType>
        </xs:element>
        <xs:element name="SettlementPeriod" maxOccurs="1" minOccurs="0">
         <xs:complexType>
          <xs:sequence>
           <xs:element name="Values" maxOccurs="1" minOccurs="0">
            <xs:complexType>
             <xs:sequence>
              <xs:element name="Value" maxOccurs="unbounded" minOccurs="0">
               <xs:complexType>
                <xs:sequence>
                 <xs:element name="ValueCode" type="xs:string" maxOccurs="1" minOccurs="1">
                 </xs:element>
                </xs:sequence>
               </xs:complexType>
              </xs:element>
             </xs:sequence>
            </xs:complexType>
           </xs:element>
          </xs:sequence>
         </xs:complexType>
        </xs:element>
        <xs:element name="BillingDate" maxOccurs="1" minOccurs="0">
         <xs:complexType>
          <xs:sequence>
           <xs:element name="Values" maxOccurs="1" minOccurs="0">
            <xs:complexType>
             <xs:sequence>
              <xs:element name="Value" maxOccurs="unbounded" minOccurs="0">
               <xs:complexType>
                <xs:sequence>
                 <xs:element name="ValueCode" type="xs:string" maxOccurs="1" minOccurs="1">
                 </xs:element>
                </xs:sequence>
               </xs:complexType>
              </xs:element>
             </xs:sequence>
            </xs:complexType>
           </xs:element>
          </xs:sequence>
         </xs:complexType>
        </xs:element>
        <xs:element name="ContractAutoRenewalIndicator" type="xs:boolean" maxOccurs="1" minOccurs="0">
        </xs:element>
       </xs:sequence>
      </xs:complexType>
     </xs:element>
    </xs:sequence>
    <xs:attribute type="xs:boolean" name="skipCategoriesOnProductUpdate"/>
   </xs:complexType>
  </xs:element>
 </xs:schema>



Yes
No