# Output XML Schema - Get Quote Data | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/0877e7396e2141fbb3bc46c98b1e893d.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Get Quote Data - Input and Output Parameters
	
Result XML Examples, List No. 1
	
Output XML Schema - Get Quote Data
	
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
Output XML Schema - Get Quote Data



<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xs:element name="Cart">
		<xs:complexType>
			<xs:sequence>
				<xs:element name="DateOrdered">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="DateClosed">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="DateCreated">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="DateModified">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="SubCartId">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="SubOwnerId">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="ActiveRevision">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="GlobalsCsv">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="RevisionNumber">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="MarketId">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="MarketFactor">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="PaymentApproved">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="PaymentMethod">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TrackingKey">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="CRMAccountRoleId">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="Revision">
					<xs:complexType>
						<xs:sequence>
							<xs:element name="MasterId" type="xs:string" />
							<xs:element name="ParentId" type="xs:string" />
							<xs:element name="CartId" type="xs:string" />
							<xs:element name="Name" type="xs:string" />
							<xs:element name="Description" type="xs:string" />
							<xs:element name="RevisionNumber" type="xs:string" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="CartComment">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalProductModelPrice">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalPromoDiscountAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="AveragePromoDiscountPercent">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalListPrice">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalNetPrice">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="AverageProductDiscountPercent">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalProductDiscountAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="AverageProductMultiplier">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalProductMultiplierAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="AdditionalMultiplier">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="AdditionalMultiplierAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="OverallDiscountAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="OverallDiscountPercent">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="SubTotalAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalChannelMarkupPercent">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalChannelMarkupAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="EndUserSubTotalAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalCost">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalGrossMarginPercent">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalGrossMarginAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="MarginHealthColor">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="MarginHealthImage">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalChannelCost">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalChannelGrossMarginPercent">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalChannelGrossMarginAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalChannelCommisionPercent">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalChannelCommisionAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalUserCommisionPercent">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalUserCommisionAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalShippingStaticPrice">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalShippingCost">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="VatAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="VatPercent">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TaxPercent">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TaxAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalWeight">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalUpfrontAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalMonthlyFeeAmount">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="MonthlyFee">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="NumberOfPayments">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalCustomColumn1">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalCustomColumn2">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalCustomColumn3">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="TotalCustomColumn4">
					<xs:complexType>
						<xs:simpleContent>
							<xs:extension base="xs:string">
								<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
							</xs:extension>
						</xs:simpleContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="MainItems">
					<xs:complexType>
						<xs:sequence>
							<xs:element maxOccurs="unbounded" name="MainItem">
								<xs:complexType>
									<xs:sequence>
										<xs:element name="Id">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:id">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Rank">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CartItem">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="RolledUpCartItem">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ParentItem">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Quantity">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PartNumber">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Cost">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ExtendedCost">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ProductModelPrice">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PromoDiscountAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PromoDiscountPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ListPrice">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="BaseListPrice">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ExtendedListPrice">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="DiscountPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="UnitDiscountAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="DiscountAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Multiplier">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="UnitMultiplierAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="MultiplierAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="NetPrice">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ExtendedAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ManufacturesGrossMargin">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ChannelMarkupPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ChannelMarkupAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="EndUserNet">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="EndUserExtendedAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ChannelMarginPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ProductTypeName">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ProductTypeId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ProductTypeSystemId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ChannelCommisionPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ChannelCommisionAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="UserCommisionPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="UserCommisionAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="IsOptional">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="MarginHealthColor">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="MarginHealthImage">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ProductId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ProductSystemId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ProductName">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ProductNameInDefaultLanguage">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Description">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="DescriptionLong">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="UserDescription">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CategoryId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="DateAdded">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ItemDeliveryMethod">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ItemDeliveryStatus">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="EffDate">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="GroupId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="BaseQuantity">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="DefaultDiscountPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="MinDiscountPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="MaxDiscountPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="DefaultMultiplier">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="MinMultiplier">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="MaxMultiplier">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Weight">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="UpfrontPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="UpfrontAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="MonthlyFeeAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CustomColumn1">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CustomColumn2">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CustomColumn3">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CustomColumn4">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="IsSimple">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ItemShippingCost">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ProductWizardCfgId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ProductWizardCfgAttrCode">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="RolledUpListPrice">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="RolledUpExtendedListPrice">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="RolledUpNetPrice">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="RolledUpExtendedAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="IsComplete">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="IsInvalid">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="RolledUpEndCustomerUnitPrice">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="RolledUpEndCustomerExtendedPrice">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="LineItems">
											<xs:complexType>
												<xs:sequence>
													<xs:element maxOccurs="unbounded" name="LineItem">
														<xs:complexType>
															<xs:sequence>
																<xs:element type="xs:int" name="Id"/>
																<xs:element type="xs:string" name="Rank"/>
																<xs:element type="xs:string" name="CartItem"/>
																<xs:element type="xs:string" name="RolledUpCartItem"/>
																<xs:element type="xs:string" name="ParentItem"/>
																<xs:element name="Quantity">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="PartNumber">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:string">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element type="xs:string" name="UnitOfMeasure"/>
																<xs:element name="Cost">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ExtendedCost">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ProductModelPrice">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ProductCost">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="PromoDiscountAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="PromoDiscountPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ListPrice">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="BaseListPrice">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ExtendedListPrice">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="DiscountPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																				<xs:attribute type="xs:string" name="FieldErrorMessage"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="UnitDiscountAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="DiscountAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="Multiplier">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																				<xs:attribute type="xs:string" name="FieldErrorMessage"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="UnitMultiplierAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MultiplierAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="NetPrice">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ExtendedAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ManufacturesGrossMargin">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ChannelMarkupPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ChannelMarkupAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="EndUserNet">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="EndUserExtendedAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ChannelMarginPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element type="xs:string" name="ProductTypeName"/>
																<xs:element type="xs:string" name="ProductTypeNameInDefaultLanguage"/>
																<xs:element type="xs:unsignedByte" name="ProductTypeId"/>
																<xs:element type="xs:string" name="ProductTypeSystemId"/>
																<xs:element type="xs:unsignedByte" name="ProductTypeRank"/>
																<xs:element type="xs:unsignedByte" name="ProductTypeAddToCRM"/>
																<xs:element name="ChannelCommisionPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ChannelCommisionAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="UserCommisionPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="UserCommisionAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element type="xs:unsignedByte" name="IsOptional"/>
																<xs:element type="xs:string" name="MarginHealthColor"/>
																<xs:element type="xs:string" name="MarginHealthImage"/>
																<xs:element type="xs:string" name="MRCMarginHealthColor"/>
																<xs:element type="xs:string" name="MRCMarginHealthImage"/>
																<xs:element type="xs:short" name="ProductId"/>
																<xs:element type="xs:string" name="ProductSystemId"/>
																<xs:element type="xs:string" name="ProductName"/>
																<xs:element type="xs:string" name="ProductNameInDefaultLanguage"/>
																<xs:element type="xs:string" name="Description"/>
																<xs:element type="xs:string" name="DescriptionLong"/>
																<xs:element name="UserDescription">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:string">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element type="xs:short" name="CategoryId"/>
																<xs:element type="xs:string" name="DateAdded"/>
																<xs:element type="xs:string" name="ItemDeliveryMethod"/>
																<xs:element type="xs:unsignedByte" name="ItemDeliveryStatus"/>
																<xs:element type="xs:string" name="EffDate"/>
																<xs:element type="xs:string" name="GroupId"/>
																<xs:element name="BaseQuantity">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="DefaultDiscountPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MinDiscountPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MaxDiscountPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="DefaultMultiplier">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MinMultiplier">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MaxMultiplier">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="DefaultMRCDiscountPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MinMRCDiscountPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MaxMRCDiscountPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="DefaultMRCMultiplier">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MinMRCMultiplier">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MaxMRCMultiplier">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="Weight">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="UpfrontPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="UpfrontAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MonthlyFeeAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="CustomColumn1">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="CustomColumn2">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="CustomColumn3">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="CustomColumn4">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="CustomColumn5">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="CustomColumn6">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element type="xs:string" name="ProductVersion"/>
																<xs:element type="xs:string" name="ExternalId"/>
																<xs:element type="xs:string" name="ExternalCartItem"/>
																<xs:element type="xs:string" name="UPC"/>
																<xs:element type="xs:string" name="MPN"/>
																<xs:element type="xs:string" name="LeadTime"/>
																<xs:element type="xs:unsignedByte" name="Inventory"/>
																<xs:element type="xs:unsignedByte" name="ProductDisplayInfo"/>
																<xs:element type="xs:string" name="FamilyCode"/>
																<xs:element type="xs:string" name="PRODUCT_WEIGHT"/>
																<xs:element name="ForwardCurrencyRate">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="ItemType">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:unsignedByte">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element type="xs:unsignedByte" name="BaseItem"/>
																<xs:element name="MRCListPrice">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCExtendedListPrice">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCDiscountPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																				<xs:attribute type="xs:string" name="FieldErrorMessage"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCDiscountAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCUnitDiscountAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCNetPrice">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCExtendedAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCGrossMarginPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCCost">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCExtendedCost">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCMultiplier">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																				<xs:attribute type="xs:string" name="FieldErrorMessage"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCMultiplierAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedunsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedunsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCUnitMultiplierAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCChannelMarkupPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCChannelMarkupAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCChannelMarginPercent">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCChannelMarginAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCEndUserNet">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element name="MRCEndUserExtendedAmount">
																	<xs:complexType>
																		<xs:simpleContent>
																			<xs:extension base="xs:float">
																				<xs:attribute type="xs:unsignedByte" name="Editable"/>
																				<xs:attribute type="xs:unsignedByte" name="EditableGroup"/>
																			</xs:extension>
																		</xs:simpleContent>
																	</xs:complexType>
																</xs:element>
																<xs:element type="xs:string" name="CartItemGuid"/>
																<xs:element type="xs:string" name="BaseItemGuid"/>
																<xs:element type="xs:string" name="ParentItemGuid"/>
																<xs:element type="xs:unsignedByte" name="AttributeRank"/>
																<xs:element type="xs:unsignedByte" name="AttributeSubRank"/>
																<xs:element name="Details">
																	<xs:complexType>
																		<xs:sequence>
																			<xs:element maxOccurs="unbounded" name="Detail">
																				<xs:complexType>
																					<xs:sequence>
																						<xs:element name="Id" type="xs:unsignedByte" />
																						<xs:element name="CartId" type="xs:unsignedByte" />
																						<xs:element name="UserId" type="xs:unsignedByte" />
																						<xs:element name="CartItem" type="xs:unsignedByte" />
																						<xs:element name="Sequence" type="xs:unsignedByte" />
																						<xs:element name="ActualShipDate" type="xs:string" />
																						<xs:element name="EstimatedShipDate" type="xs:string" />
																						<xs:element name="SN" type="xs:string" />
																						<xs:element name="TrackingNumber" type="xs:string" />
																						<xs:element name="TrackingURL" type="xs:string" />
																						<xs:element name="MiscDetail01" type="xs:string" />
																						<xs:element name="MiscDetail02" type="xs:string" />
																						<xs:element name="MiscDetail03" type="xs:string" />
																						<xs:element name="MiscDetail04" type="xs:string" />
																						<xs:element name="MiscDetail05" type="xs:string" />
																					</xs:sequence>
																				</xs:complexType>
																			</xs:element>
																		</xs:sequence>
																	</xs:complexType>
																</xs:element>
																<xs:element name="AppliedPromotions">
																	<xs:complexType>
																		<xs:sequence>
																			<xs:element maxOccurs="unbounded" name="Promotion">
																				<xs:complexType>
																					<xs:sequence>
																						<xs:element name="PromoId" type="xs:unsignedByte" />
																						<xs:element name="ActionRank" type="xs:unsignedByte" />
																						<xs:element name="ModifiedAmount" type="xs:float" />
																						<xs:element name="Description" type="xs:string" />
																					</xs:sequence>
																				</xs:complexType>
																			</xs:element>
																		</xs:sequence>
																	</xs:complexType>
																</xs:element>
															</xs:sequence>
															<xs:attribute type="xs:unsignedByte" name="CanOverrideMinMaxValues"/>
														</xs:complexType>
													</xs:element>
												</xs:sequence>
											</xs:complexType>
										</xs:element>
										<xs:element name="Actions"> 
											<xs:complexType>
												<xs:sequence>
													<xs:element maxOccurs="unbounded" name="Action">
														<xs:complexType>
															<xs:sequence>
																<xs:element name="ActionId" type="xs:unsignedByte" />
																<xs:element name="ActionName" type="xs:string" />
																<xs:element name="ActionNameInDefaultLanguage" type="xs:string" />
																<xs:element name="UpgradeType" type="xs:unsignedByte" />
																<xs:element name="ClientScript" type="xs:string" />
																<xs:element name="EndStatusId" type="xs:unsignedByte" />
																<xs:element name="EndStatusName" type="xs:string" />
																<xs:element name="SortOrder" type="xs:unsignedByte" />
																<xs:element name="ActionDisplayLevel" type="xs:boolean" />
																<xs:element name="Image" type="xs:string" />
																<xs:element name="LightningImg" type="xs:string" />
															</xs:sequence>
														</xs:complexType>
													</xs:element>
												</xs:sequence>
											</xs:complexType>
										</xs:element>
										<xs:element name="KeyAttributes">
											<xs:complexType>
												<xs:sequence>
													<xs:element maxOccurs="unbounded" name="KeyAttribute">
														<xs:complexType>
															<xs:sequence>
																<xs:element name="Rank" type="xs:unsignedByte" />
																<xs:element name="Expression" type="xs:string" />
																<xs:element name="Label" type="xs:string" />
																<xs:element name="Value" type="xs:string" />
																<xs:element name="CartItemId" type="xs:integer" />
															</xs:sequence>
														</xs:complexType>
													</xs:element>
												</xs:sequence>
											</xs:complexType>
										</xs:element>
										<xs:element name="Details">
											<xs:complexType>
												<xs:sequence>
													<xs:element maxOccurs="unbounded" name="Detail">
														<xs:complexType>
															<xs:sequence>
																<xs:element name="Id" type="xs:unsignedByte" />
																<xs:element name="CartId" type="xs:unsignedByte" />
																<xs:element name="UserId" type="xs:unsignedByte" />
																<xs:element name="CartItem" type="xs:unsignedByte" />
																<xs:element name="Sequence" type="xs:unsignedByte" />
																<xs:element name="ActualShipDate" type="xs:string" />
																<xs:element name="EstimatedShipDate" type="xs:string" />
																<xs:element name="SN" type="xs:string" />
																<xs:element name="TrackingNumber" type="xs:string" />
																<xs:element name="TrackingURL" type="xs:string" />
																<xs:element name="MiscDetail01" type="xs:string" />
																<xs:element name="MiscDetail02" type="xs:string" />
																<xs:element name="MiscDetail03" type="xs:string" />
																<xs:element name="MiscDetail04" type="xs:string" />
																<xs:element name="MiscDetail05" type="xs:string" />
															</xs:sequence>
														</xs:complexType>
													</xs:element>
												</xs:sequence>
											</xs:complexType>
										</xs:element>
										<xs:element name="AppliedPromotions">
											<xs:complexType>
												<xs:sequence>
													<xs:element maxOccurs="unbounded" name="Promotion">
														<xs:complexType>
															<xs:sequence>
																<xs:element name="PromoId" type="xs:unsignedByte" />
																<xs:element name="ActionRank" type="xs:unsignedByte" />
																<xs:element name="ModifiedAmount" type="xs:float" />
																<xs:element name="Description" type="xs:string" />
															</xs:sequence>
														</xs:complexType>
													</xs:element>
												</xs:sequence>
											</xs:complexType>
										</xs:element>
									</xs:sequence>
									<xs:attribute name="CanOverrideMinMaxValues" type="xs:unsignedByte" use="required" />
								</xs:complexType>
							</xs:element>
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="ProductTypes">
					<xs:complexType>
						<xs:sequence>
							<xs:element name="ProductType">
								<xs:complexType>
									<xs:sequence>
										<xs:element name="PTName">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTRank">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ProductModelSubTotal">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTPromoDiscountAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTPromoDiscountPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTListSubTotal">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTMultiplier">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTMultiplierAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTDiscountPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTDiscountAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTSubTotal">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTChannelMarkupPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTChannelMarkupAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTEndUserSubTotal">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTChannelCommisionPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTChannelCommisionAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTUserCommisionPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTUserCommisionAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTCost">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTGrossMarginPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTGrossMarginAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTChannelCost">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTChannelGrossMarginPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTChannelGrossMarginAmount">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="MarginHealthColor">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="MarginHealthImage">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTDefaultDiscountPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTMinDiscountPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTMaxDiscountPercent">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTDefaultMultiplier">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTMinMultiplier">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTMaxMultiplier">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTCustomColumn1">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTCustomColumn2">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTCustomColumn3">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PTCustomColumn4">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="EditableGroup" type="xs:unsignedByte" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
									</xs:sequence>
									<xs:attribute name="CanOverrideMinMaxValues" type="xs:unsignedByte" use="required" />
								</xs:complexType>
							</xs:element>
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="PromoCodes" />
				<xs:element name="AdditionalDiscounts">
					<xs:complexType>
						<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
					</xs:complexType>
				</xs:element>
				<xs:element name="Markets">
					<xs:complexType>
						<xs:sequence>
							<xs:element name="Market">
								<xs:complexType>
									<xs:sequence>
										<xs:element name="MarketName" type="xs:string" />
										<xs:element name="MarketId" type="xs:string" />
										<xs:element name="MarketFactor" type="xs:string" />
										<xs:element name="MarketCode" type="xs:string" />
										<xs:element name="CurrencyCode" type="xs:string" />
										<xs:element name="CurrencyQuote" type="xs:string" />
										<xs:element name="CurrencyDescription" type="xs:string" />
										<xs:element name="CurrencySign" type="xs:string" />
										<xs:element name="CurrencyDefault" type="xs:string" />
									</xs:sequence>
									<xs:attribute name="Selected" type="xs:unsignedByte" use="required" />
								</xs:complexType>
							</xs:element>
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Shippings">
					<xs:complexType>
						<xs:sequence>
							<xs:element name="Shipping">
								<xs:complexType>
									<xs:sequence>
										<xs:element name="ShippingName" type="xs:string" />
										<xs:element name="ShippingId" type="xs:string" />
										<xs:element name="StaticPriceFormula" type="xs:string" />
										<xs:element name="ErrorMessage" type="xs:string" />
									</xs:sequence>
									<xs:attribute name="Selected" type="xs:unsignedByte" use="required" />
									<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
								</xs:complexType>
							</xs:element>
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Customers">
					<xs:complexType>
						<xs:sequence>
							<xs:element maxOccurs="unbounded" name="Customer">
								<xs:complexType>
									<xs:sequence>
										<xs:element name="CustomerId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ShopCartId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="UserId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="FirstName">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedShort" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="LastName">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedShort" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Company">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedShort" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Address1">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedShort" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Address2">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedShort" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="City">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedShort" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="StateAbbrev">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="ZipCode">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CountryAbbrev">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="TerritoryId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="TerritoryName">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="BusinessPhone">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="BusinessFax">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Email">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedShort" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="DirtyFlag">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CustomerCode">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="RevisionNumber">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CRMAccountId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CRMContactId">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Province">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="OwnerName">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedInt" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="PrimaryIndustry">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CustomerPassword">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="CustomerType">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Active">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Title">
											<xs:complexType>
												<xs:simpleContent>
													<xs:extension base="xs:string">
														<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
														<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
														<xs:attribute name="FieldDisplaySize" type="xs:unsignedByte" use="required" />
														<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
														<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
														<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsAjaxField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInAjaxLookup" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IsLookupField" type="xs:unsignedByte" use="required" />
														<xs:attribute name="IncludeInLookupResult" type="xs:unsignedByte" use="required" />
														<xs:attribute name="CustomerInfoColumn" type="xs:string" use="required" />
													</xs:extension>
												</xs:simpleContent>
											</xs:complexType>
										</xs:element>
										<xs:element name="Actions">
											<xs:complexType>
												<xs:sequence>
													<xs:element maxOccurs="unbounded" name="Action">
														<xs:complexType>
															<xs:attribute name="ActionId" type="xs:unsignedByte" use="required" />
															<xs:attribute name="ActionName" type="xs:string" use="required" />
														</xs:complexType>
													</xs:element>
												</xs:sequence>
											</xs:complexType>
										</xs:element>
									</xs:sequence>
									<xs:attribute name="CustomerRoleType" type="xs:unsignedByte" use="required" />
									<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
									<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
									<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
									<xs:attribute name="Personal" type="xs:unsignedByte" use="required" />
									<xs:attribute name="Rank" type="xs:unsignedByte" use="required" />
								</xs:complexType>
							</xs:element>
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Actions"> 
					<xs:complexType>
						<xs:sequence>
							<xs:element maxOccurs="unbounded" name="Action">
								<xs:complexType>
									<xs:sequence>
										<xs:element name="ActionId" type="xs:unsignedByte" />
										<xs:element name="ActionName" type="xs:string" />
										<xs:element name="ActionNameInDefaultLanguage" type="xs:string" />
										<xs:element name="UpgradeType" type="xs:unsignedByte" />
										<xs:element name="ClientScript" type="xs:string" />
										<xs:element name="EndStatusId" type="xs:unsignedByte" />
										<xs:element name="EndStatusName" type="xs:string" />
										<xs:element name="SortOrder" type="xs:unsignedByte" />
										<xs:element name="ActionDisplayLevel" type="xs:boolean" />
										<xs:element name="Image" type="xs:string" />
										<xs:element name="LightningImg" type="xs:string" />
									</xs:sequence>
								</xs:complexType>
							</xs:element>
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="ScParams">
					<xs:complexType>
						<xs:sequence>
							<xs:element maxOccurs="unbounded" name="SCParam">
								<xs:complexType>
									<xs:sequence>
										<xs:element name="ScParamId" type="xs:string" />
										<xs:element name="Label" type="xs:string" />
										<xs:element name="StrongName" type="xs:string" />
										<xs:element name="Content" type="xs:string" />
										<xs:element name="ShowInTab" type="xs:string" />
										<xs:element name="Rank" type="xs:string" />
										<xs:element name="IsGlobal" type="xs:string" />
										<xs:element name="IsLineItem" type="xs:string" />
										<xs:element name="ScParamType" type="xs:string" />
										<xs:element name="StdAttrCode" type="xs:string" />
										<xs:element name="IsTransferToItem" type="xs:string" />
										<xs:element name="IsPlaceOrder" type="xs:string" />
										<xs:element name="CalculationFormula" type="xs:string" />
										<xs:element name="CalculationType" type="xs:string" />
									</xs:sequence>
									<xs:attribute name="Required" type="xs:unsignedByte" use="required" />
									<xs:attribute name="Editable" type="xs:unsignedByte" use="required" />
									<xs:attribute name="Visible" type="xs:unsignedByte" use="required" />
									<xs:attribute name="FieldDisplayName" type="xs:string" use="required" />
									<xs:attribute name="FieldDisplayType" type="xs:string" use="required" />
									<xs:attribute name="FieldDisplaySize" type="xs:unsignedShort" use="required" />
									<xs:attribute name="FieldSelectListData" type="xs:string" use="required" />
									<xs:attribute name="FieldErrorMessage" type="xs:string" use="required" />
									<xs:attribute name="AccessLevel" type="xs:unsignedByte" use="required" />
								</xs:complexType>
							</xs:element>
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="OrderStatus">
					<xs:complexType>
						<xs:sequence>
							<xs:element name="OrderStatusId" type="xs:string" />
							<xs:element name="OrderStatusName" type="xs:string" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="MT_PATH" type="xs:string" />
				<xs:element name="SHOW_MARGIN_HEALTH" type="xs:unsignedByte" />
				<xs:element name="SHOW_PRICES" type="xs:unsignedByte" />
				<xs:element name="PlaceOrder_OverrideGenericEmail" type="xs:unsignedByte" />
				<xs:element name="OwnerIdCrypted" type="xs:string" />
				<xs:element name="CartIdCrypted" type="xs:string" />
				<xs:element name="History">
					<xs:complexType>
						<xs:attribute name="CanUndo" type="xs:unsignedByte" use="required" />
						<xs:attribute name="CanRedo" type="xs:unsignedByte" use="required" />
					</xs:complexType>
				</xs:element>
				<xs:element name="ApprovalRules">
					<xs:complexType>
						<xs:sequence>
							<xs:element name="ErrorMessages" />
						</xs:sequence>
						<xs:attribute name="IsApprovalNeeded" type="xs:unsignedByte" use="required" />
					</xs:complexType>
				</xs:element>
				<xs:element name="ShowProposalOnCart" type="xs:unsignedByte" />
				<xs:element name="ShowQuoteOnViewProposal" type="xs:unsignedByte" />
			</xs:sequence>
			<xs:attribute name="CartCompositeNumber" type="xs:string" use="required" />
			<xs:attribute name="CartId" type="xs:unsignedByte" use="required" />
			<xs:attribute name="OwnerId" type="xs:unsignedByte" use="required" />
		</xs:complexType>
	</xs:element>
</xs:schema>

Yes
No