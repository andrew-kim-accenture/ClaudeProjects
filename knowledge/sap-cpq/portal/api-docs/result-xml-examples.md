# Result XML Examples | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/36cc23a7771e40f09ea4c75262224d17.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Result XML Examples
	
Output XML Schema - Get Catalogue Data
	
Get Catalogue Data - Input and Output Parameters
	
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
Result XML Examples


<?xml version="1.0" encoding="utf-16"?>
<CATALOGUE>
  <CATEGORIES>
    <CATEGORY>
      <ID>1</ID>
      <NAME>Hardware</NAME>
      <RANK>10</RANK>
      <ACTIVE>1</ACTIVE>
      <STARTDATE />
      <ENDDATE />
      <REDIRECTTOURL />
      <IMAGE>category_hardware.jpg</IMAGE>
      <PRODUCTS>
        <PRODUCT>
          <ID>30</ID>
          <NAME>SMB5 Desktop computer</NAME>
          <PARTNUM>SMB5&lt;*CATCODE(Processor) *&gt;&lt;*CATCODE(Memory) *&gt;&lt;*CATCODE(Hard Drive) *&gt;&lt;*CATCODE(CD or DVD drive) *&gt;&lt;*CATCODE(Monitor) *&gt;</PARTNUM>
          <DESCRIPTION>
            &lt;table style="width:100%;font-size:9pt;" cellpadding="5px"&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="border-top:1px solid #CCCCCC"&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="color:#414141;font-weight:bold;"&gt;Reliable Desktop computers for any kind of exploitation&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="border-top:1px solid #CCCCCC"&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;tr style="background-color: #EEE;"&gt;&lt;td&gt;&lt;b&gt;Processor&lt;/b&gt;&lt;br /&gt;Intel Pentium 2.0GHz&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td&gt;&lt;b&gt;Operating System&lt;/b&gt;&lt;br /&gt;Windows XP Home&lt;/td&gt;&lt;/tr&gt;
            &lt;tr style="background-color: #EEE;"&gt;&lt;td&gt;&lt;b&gt;Optical Drive&lt;/b&gt;&lt;br /&gt;DVD-R 12/4&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td&gt;&lt;b&gt;Memory&lt;/b&gt;&lt;br /&gt;2GB&lt;/td&gt;&lt;/tr&gt;
            &lt;tr style="background-color: #EEE;"&gt;&lt;td&gt;&lt;b&gt;Hard Drive&lt;/b&gt;&lt;br /&gt;500GB&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td&gt;&lt;b&gt;Warranty&lt;/b&gt;&lt;br /&gt;1 year limited&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="border-top:1px solid #CCCCCC"&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;/table&gt;
          </DESCRIPTION>
          <PRICE>0.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT>0</WEIGHT>
          <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>1</ID>
          <NAME>SMB2 Desktop computer</NAME>
          <PARTNUM>SMB2&lt;*CATCODE(Processor) *&gt;&lt;*CATCODE(Memory) *&gt;&lt;*CATCODE(Hard Drive) *&gt;&lt;*CATCODE(CD or DVD drive) *&gt;&lt;*CATCODE(Monitor) *&gt;</PARTNUM>
          <DESCRIPTION>
            &lt;table style="width:100%;font-size:9pt;" cellpadding="5px"&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="border-top:1px solid #CCCCCC"&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="color:#414141;font-weight:bold;"&gt;Reliable Desktop computers for any kind of exploitation&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="border-top:1px solid #CCCCCC"&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;tr style="background-color: #EEE;"&gt;&lt;td&gt;&lt;b&gt;Processor&lt;/b&gt;&lt;br /&gt;Intel Pentium 3.0GHz&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td&gt;&lt;b&gt;Operating System&lt;/b&gt;&lt;br /&gt;Windows XP Home&lt;/td&gt;&lt;/tr&gt;
            &lt;tr style="background-color: #EEE;"&gt;&lt;td&gt;&lt;b&gt;Optical Drive&lt;/b&gt;&lt;br /&gt;DVD 12x&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td&gt;&lt;b&gt;Memory&lt;/b&gt;&lt;br /&gt;3GB&lt;/td&gt;&lt;/tr&gt;
            &lt;tr style="background-color: #EEE;"&gt;&lt;td&gt;&lt;b&gt;Hard Drive&lt;/b&gt;&lt;br /&gt;320GB&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td&gt;&lt;b&gt;Warranty&lt;/b&gt;&lt;br /&gt;1 year limited&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="border-top:1px solid #CCCCCC"&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;/table&gt;
          </DESCRIPTION>
          <PRICE>0.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT>0</WEIGHT>
          <RANKWITHINCATEGORY>4</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>28</ID>
          <NAME>SMB3 Desktop computer</NAME>
          <PARTNUM>SMB3&lt;*CATCODE(Processor) *&gt;&lt;*CATCODE(Memory) *&gt;&lt;*CATCODE(Hard Drive) *&gt;&lt;*CATCODE(CD or DVD drive) *&gt;&lt;*CATCODE(Monitor) *&gt;</PARTNUM>
          <DESCRIPTION>
            &lt;table style="width:100%;font-size:9pt;" cellpadding="5px"&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="border-top:1px solid #CCCCCC"&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="color:#414141;font-weight:bold;"&gt;Reliable Desktop computers for any kind of exploitation&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="border-top:1px solid #CCCCCC"&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;tr style="background-color: #EEE;"&gt;&lt;td&gt;&lt;b&gt;Processor&lt;/b&gt;&lt;br /&gt;Intel Celeron 2.4GHz&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td&gt;&lt;b&gt;Operating System&lt;/b&gt;&lt;br /&gt;Windows XP Home&lt;/td&gt;&lt;/tr&gt;
            &lt;tr style="background-color: #EEE;"&gt;&lt;td&gt;&lt;b&gt;Optical Drive&lt;/b&gt;&lt;br /&gt;CD-R 52/16/52&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td&gt;&lt;b&gt;Memory&lt;/b&gt;&lt;br /&gt;1GB&lt;/td&gt;&lt;/tr&gt;
            &lt;tr style="background-color: #EEE;"&gt;&lt;td&gt;&lt;b&gt;Hard Drive&lt;/b&gt;&lt;br /&gt;250GB&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td&gt;&lt;b&gt;Warranty&lt;/b&gt;&lt;br /&gt;1 year limited&lt;/td&gt;&lt;/tr&gt;
            &lt;tr&gt;&lt;td style="background-color: #fff;"&gt;&lt;div style="border-top:1px solid #CCCCCC"&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;
            &lt;/table&gt;
          </DESCRIPTION>
          <PRICE>0.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT>0</WEIGHT>
          <RANKWITHINCATEGORY>5</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>33</ID>
          <NAME>SMB2 Desktop and Printer Bundle</NAME>
          <PARTNUM>SMB2&lt;*CATCODE(Processor) *&gt;&lt;*CATCODE(Memory) *&gt;&lt;*CATCODE(Hard Drive) *&gt;&lt;*CATCODE(CD or DVD drive) *&gt;&lt;*CATCODE(Monitor) *&gt;</PARTNUM>
          <DESCRIPTION>Reliable Desktop computers for any kind of exploitation</DESCRIPTION>
          <PRICE>799.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT>0</WEIGHT>
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>192</ID>
          <NAME>Desktop Computer</NAME>
          <PARTNUM>Desk-1054</PARTNUM>
          <DESCRIPTION />
          <PRICE>1500.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>193</ID>
          <NAME>Desktop Computer 2</NAME>
          <PARTNUM>Desk-2-1283</PARTNUM>
          <DESCRIPTION />
          <PRICE>2000.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
      </PRODUCTS>
      <CATEGORY>
        <ID>47</ID>
        <NAME>Accessories</NAME>
        <RANK>10</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>ScreenShot008.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>70</ID>
            <NAME>SMB Extended Warranty</NAME>
            <PARTNUM>SMB-3YR</PARTNUM>
            <DESCRIPTION>3 year extended warranty for SMB model desktop computers.</DESCRIPTION>
            <PRICE>175.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Warranty</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>6</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>22</ID>
            <NAME>Router</NAME>
            <PARTNUM>RDI-&lt;*VALUE(Router) *&gt;</PARTNUM>
            <DESCRIPTION>Configurable router</DESCRIPTION>
            <PRICE>40.0000</PRICE>
            <COST>10</COST>
            <PRODUCTTYPE>Accessories</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>7</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>23</ID>
            <NAME>Hub</NAME>
            <PARTNUM>H-345-01</PARTNUM>
            <DESCRIPTION>Commonly used to connect segments of a LAN.</DESCRIPTION>
            <PRICE>40.0000</PRICE>
            <COST>10</COST>
            <PRODUCTTYPE>Accessories</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>7</ID>
            <NAME>Personal Printer</NAME>
            <PARTNUM>&lt;*VALUE(Personal printer) *&gt;</PARTNUM>
            <DESCRIPTION>Choose the right printer for your home or small office</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Hardware</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT>0</WEIGHT>
            <RANKWITHINCATEGORY>100</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>8</ID>
            <NAME>Printer Toner</NAME>
            <PARTNUM>&lt;*CATCODE(Toner) *&gt;</PARTNUM>
            <DESCRIPTION>Black and white or color toners for your printer</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Hardware</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT>100</WEIGHT>
            <RANKWITHINCATEGORY>100</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>9</ID>
            <NAME>Network cable</NAME>
            <PARTNUM>NC&lt;*VALUE(CableLength) *&gt;</PARTNUM>
            <DESCRIPTION>100mbps high speed network cable for home or small office</DESCRIPTION>
            <PRICE>10.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Accessories</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT>0</WEIGHT>
            <RANKWITHINCATEGORY>100</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>13</ID>
            <NAME>52X High Speed Branded CD-R</NAME>
            <PARTNUM>CD-R</PARTNUM>
            <DESCRIPTION>52X High Speed Branded CD-R 80min/700MB Bulk.</DESCRIPTION>
            <PRICE>18.0000</PRICE>
            <COST>4.5</COST>
            <PRODUCTTYPE>Accessories</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>100</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>14</ID>
            <NAME>DVD-R 1X-8X / 9.4GB Double-Sided Bulk</NAME>
            <PARTNUM>DVD-R</PARTNUM>
            <DESCRIPTION>DVD-R 1X-8X / 9.4GB Double-Sided Bulk by Matrix.</DESCRIPTION>
            <PRICE>29.5000</PRICE>
            <COST>7.375</COST>
            <PRODUCTTYPE>Accessories</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>100</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
    </CATEGORY>
    <CATEGORY>
      <ID>2</ID>
      <NAME>Software</NAME>
      <RANK>20</RANK>
      <ACTIVE>1</ACTIVE>
      <STARTDATE />
      <ENDDATE />
      <REDIRECTTOURL />
      <IMAGE>category_software.jpg</IMAGE>
      <PRODUCTS>
        <PRODUCT>
          <ID>5</ID>
          <NAME>Microsoft Office XP Pro</NAME>
          <PARTNUM>MOXP</PARTNUM>
          <DESCRIPTION>Microsoft Office Tools Pro Edition</DESCRIPTION>
          <PRICE>310.0000</PRICE>
          <COST>77.5</COST>
          <PRODUCTTYPE>Software</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT>0</WEIGHT>
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>1</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>6</ID>
          <NAME>Microsoft SQL</NAME>
          <PARTNUM>SQL</PARTNUM>
          <DESCRIPTION>Microsoft Structure Query Language-Enterprise edition</DESCRIPTION>
          <PRICE>2700.0000</PRICE>
          <COST>675</COST>
          <PRODUCTTYPE>Software</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT>0</WEIGHT>
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>1</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>4</ID>
          <NAME>Microsoft Windows XP</NAME>
          <PARTNUM>WXP</PARTNUM>
          <DESCRIPTION>Microsoft operating system Windows XP with SP2</DESCRIPTION>
          <PRICE>210.0000</PRICE>
          <COST>52.5</COST>
          <PRODUCTTYPE>Software</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT>0</WEIGHT>
          <RANKWITHINCATEGORY>11</RANKWITHINCATEGORY>
          <ISSIMPLE>1</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>10</ID>
          <NAME>Custom Software</NAME>
          <PARTNUM>&lt;*VALUE(Custom Part Number) *&gt;</PARTNUM>
          <DESCRIPTION>Customizable software item</DESCRIPTION>
          <PRICE>0.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Software</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>1000</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>35</ID>
          <NAME>Configurable Software</NAME>
          <PARTNUM>CD-&lt;*VALUE(Number of users) *&gt;U&lt;*VALUE(Hours of implementation) *&gt;Hw&lt;*VALUECODE(Maintenance duration) *&gt;00</PARTNUM>
          <DESCRIPTION>The new version of the NINO Network Manager Suite</DESCRIPTION>
          <PRICE>0.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Software</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>1000</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
      </PRODUCTS>
    </CATEGORY>
    <CATEGORY>
      <ID>3</ID>
      <NAME>Services</NAME>
      <RANK>30</RANK>
      <ACTIVE>1</ACTIVE>
      <STARTDATE />
      <ENDDATE />
      <REDIRECTTOURL />
      <IMAGE>category_service1.jpg</IMAGE>
      <PRODUCTS>
        <PRODUCT>
          <ID>3</ID>
          <NAME>Project Management</NAME>
          <PARTNUM>PM&lt;*CATCODE(Type of project management) *&gt;&lt;*CATCODE(Project lenght) *&gt;&lt;*CATCODE(Number of meetings) *&gt;</PARTNUM>
          <DESCRIPTION>Let our experience be your greatest strength. We provide all kind of consulting services.</DESCRIPTION>
          <PRICE>0.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Service</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT>0</WEIGHT>
          <RANKWITHINCATEGORY>0</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>12</ID>
          <NAME>Custom Service Offering</NAME>
          <PARTNUM>&lt;*VALUE(Custom Part Number) *&gt;</PARTNUM>
          <DESCRIPTION>Specify Custom Service item by typing in price, description, and part number.</DESCRIPTION>
          <PRICE>0.0000</PRICE>
          <COST>&lt;*Value(Our Cost) *&gt;</COST>
          <PRODUCTTYPE>Service</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>36</ID>
          <NAME>Maintenance</NAME>
          <PARTNUM />
          <DESCRIPTION />
          <PRICE>750.0000</PRICE>
          <COST>187.5</COST>
          <PRODUCTTYPE>Maintenance</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>1</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>37</ID>
          <NAME>Services</NAME>
          <PARTNUM />
          <DESCRIPTION>Implementation</DESCRIPTION>
          <PRICE>500.0000</PRICE>
          <COST>125</COST>
          <PRODUCTTYPE>Services</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>1</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>42</ID>
          <NAME>Admin Demo Script prod</NAME>
          <PARTNUM />
          <DESCRIPTION />
          <PRICE>1000.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>189</ID>
          <NAME>Renewal</NAME>
          <PARTNUM />
          <DESCRIPTION />
          <PRICE>0.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Services</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
      </PRODUCTS>
    </CATEGORY>
    <CATEGORY>
      <ID>5</ID>
      <NAME>Vision Boats</NAME>
      <RANK>50</RANK>
      <ACTIVE>1</ACTIVE>
      <STARTDATE />
      <ENDDATE />
      <REDIRECTTOURL />
      <IMAGE>category_boats.jpg</IMAGE>
      <PRODUCTS>
        <PRODUCT>
          <ID>19</ID>
          <NAME>180 LE Horizon-2</NAME>
          <PARTNUM>180 LE</PARTNUM>
          <DESCRIPTION>Four Winns 180 LE Horizon</DESCRIPTION>
          <PRICE>12000.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
      </PRODUCTS>
    </CATEGORY>
    <CATEGORY>
      <ID>13</ID>
      <NAME>Cell Phones</NAME>
      <RANK>100</RANK>
      <ACTIVE>1</ACTIVE>
      <STARTDATE />
      <ENDDATE />
      <REDIRECTTOURL />
      <IMAGE>3_Cell_Phones.jpg</IMAGE>
      <PRODUCTS />
      <CATEGORY>
        <ID>14</ID>
        <NAME>ATT</NAME>
        <RANK>100</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>att_logo.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>51</ID>
            <NAME>Blackberry Bold</NAME>
            <PARTNUM>Bold</PARTNUM>
            <DESCRIPTION>Accept no substitutes. The BlackBerry® Bold™ smartphone embodies elegant design – without sacrificing the features or functionality you expect from a premium smartphone.</DESCRIPTION>
            <PRICE>199.9900</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>0</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>52</ID>
            <NAME>HTC Fuze</NAME>
            <PARTNUM>Fuze</PARTNUM>
            <DESCRIPTION>A powerful smartphone that features a large VGA touch screen that features the HTC one touch single-handed operation TouchFLO™ 3D user interface for quick access to the items most important to you.</DESCRIPTION>
            <PRICE>299.9900</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>5</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>53</ID>
            <NAME>Nokia 2600</NAME>
            <PARTNUM>2600</PARTNUM>
            <DESCRIPTION>The Nokia 2600 is a convenient easy-to-use phone with a VGA camera and multiple messaging options. Download MP3 ringtones and games. Surf the Internet with MEdia Net &amp; talk effortlessly on the hands-free speakerphone or with Bluetooth® capabilities.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>54</ID>
            <NAME>LG Shine</NAME>
            <PARTNUM>Shine</PARTNUM>
            <DESCRIPTION>This elegant slider has a mirror finish and shine through screen and is loaded with multimedia features. Listen to digital music and more. Take pictures with the 2MP camera and camcorder.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>15</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>55</ID>
            <NAME>Samsung A237</NAME>
            <PARTNUM>A237</PARTNUM>
            <DESCRIPTION>Talk easily and conveniently with the Samsung a237 camera phone. Get messaging, entertainment and Bluetooth® wireless capabilities - all in one attractively priced compact flip. The a237 has mobile email, MEdia(TM) Net browsing, text &amp; instant messaging.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>20</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>69</ID>
            <NAME>AT&amp;T Wireless Phone Insurance</NAME>
            <PARTNUM>ATT-WPI123</PARTNUM>
            <DESCRIPTION>One year of phone insurance.  Protects your wireless phone against loss, theft, accidental physical or liquid damage, and mechanical and/or electrical failure after the manufacturer's warranty period has expired.</DESCRIPTION>
            <PRICE>60.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Warranty</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>25</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>16</ID>
        <NAME>T Mobile</NAME>
        <RANK>100</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>TMobileLogo_5.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>61</ID>
            <NAME>Motorola RAZR2</NAME>
            <PARTNUM>RAZR2</PARTNUM>
            <DESCRIPTION>The MOTORAZR2 V8 combines the premium RAZR style with innovative improvements that make staying connected more fun than ever.</DESCRIPTION>
            <PRICE>149.9900</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>0</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>62</ID>
            <NAME>Samsung Behold</NAME>
            <PARTNUM>Behold</PARTNUM>
            <DESCRIPTION>Experience the freedom of the web truly at your fingertips. The full touch screen of the beautifully designed Samsung Behold gives you seamless access to your mobile life.</DESCRIPTION>
            <PRICE>149.9900</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>5</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>63</ID>
            <NAME>Nokia 5610</NAME>
            <PARTNUM>5610</PARTNUM>
            <DESCRIPTION>Your music is just a thumb away with the unique music slider key and quality sound of the Nokia 5610 XpressMusic.</DESCRIPTION>
            <PRICE>79.9900</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>64</ID>
            <NAME>Samsung t229</NAME>
            <PARTNUM>t229</PARTNUM>
            <DESCRIPTION>The dependable Samsung t229 will keep you connected through voice calls, Bluetooth connectivity and text messaging.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>15</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>65</ID>
            <NAME>T Mobile G1</NAME>
            <PARTNUM>G1</PARTNUM>
            <DESCRIPTION>Got questions? Now you can get all the answers— anytime, anywhere. They’re just a touch away with the simple, smart, and sleek T-Mobile G1.</DESCRIPTION>
            <PRICE>179.9900</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>20</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>68</ID>
            <NAME>T-Mobile Handset Protection</NAME>
            <PARTNUM>TMB-HDP-123</PARTNUM>
            <DESCRIPTION>One year of protection.  Protect your device from loss, theft, accidental damage, or malfunction. Get a little peace of mind.</DESCRIPTION>
            <PRICE>72.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Warranty</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>25</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>15</ID>
        <NAME>Verizon</NAME>
        <RANK>100</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>verizon_logo.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>56</ID>
            <NAME>Samsung SCH-u340</NAME>
            <PARTNUM>SCH-u340</PARTNUM>
            <DESCRIPTION>The basics just got better with the Samsung SCH–u340. Capture the moment, even on the go, with a VGA digital camera. Also, have access to the In Case of Emergency (I.C.E.) contacts menu, even when the phone is locked. This sleek tri–mode phone with internal antenna gets you where you need to be in affordable style.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>0</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>57</ID>
            <NAME>Samsung Sway</NAME>
            <PARTNUM>Sway</PARTNUM>
            <DESCRIPTION>Fashionable phone with sharp looks and smart features. With an ultra–slim .47 inch profile and a super sharp screen, the Sway is designed to fit beautifully into your life. It’s loaded with multi–media features including a music player, 2.0 megapixel camera/camcorder, Media Center capabilities and multiple messaging options.</DESCRIPTION>
            <PRICE>29.9900</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>5</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>58</ID>
            <NAME>Motorola Rapture VU30</NAME>
            <PARTNUM>Rapture VU30</PARTNUM>
            <DESCRIPTION>The Motorola Rapture VU30 will get you noticed. With its unique, rounded design and jewel–like keypad, all you have to do is pull it out of your pocket and wait for the reactions. The vanishing external display will awe your friends as it lights up and comes to life with one touch, providing easy access to your music and photos</DESCRIPTION>
            <PRICE>169.9900</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>59</ID>
            <NAME>LG Dare</NAME>
            <PARTNUM>Dare</PARTNUM>
            <DESCRIPTION>Dare to be different with the Dare by LG. This new handset will surpass your expectations with a large 3–inch touch screen that recognizes your handwriting and gives you tactile feedback. Zoom in closer to find a 3.2 megapixel camera/camcorder with advanced features like face detection for outstanding image quality.</DESCRIPTION>
            <PRICE>179.9900</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>15</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>60</ID>
            <NAME>Motorola MOTO Q</NAME>
            <PARTNUM>MOTO Q</PARTNUM>
            <DESCRIPTION>This sleek and robust device is packed with power, functionality and offers a cool design that satisfies the appetite of gadget lovers, business professionals and even fashion conscious consumers.</DESCRIPTION>
            <PRICE>249.9900</PRICE>
            <COST />
            <PRODUCTTYPE>Cell Phone</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>20</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>67</ID>
            <NAME>Verizon Equipment Protection</NAME>
            <PARTNUM>VZ-EQP-123</PARTNUM>
            <DESCRIPTION>One year of protection.  Provides convenient coverage against any mechanical or electrical malfunctions and manufacturer defects after the manufacturer's warranty expires.</DESCRIPTION>
            <PRICE>72.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Warranty</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>25</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
    </CATEGORY>
    <CATEGORY>
      <ID>4</ID>
      <NAME>Guided Selling Examples</NAME>
      <RANK>100</RANK>
      <ACTIVE>1</ACTIVE>
      <STARTDATE />
      <ENDDATE />
      <REDIRECTTOURL />
      <IMAGE>category_guided.jpg</IMAGE>
      <PRODUCTS>
        <PRODUCT>
          <ID>20</ID>
          <NAME>Small Office Wizard</NAME>
          <PARTNUM>SOW</PARTNUM>
          <DESCRIPTION>This wizard is set to assist you in purchasing your small office computer network</DESCRIPTION>
          <PRICE>0.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Product</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>27</ID>
          <NAME>Desktop Selection Assistant</NAME>
          <PARTNUM>The Desktop Selection Assistant helps you in finding the right desktop computer for your needs.</PARTNUM>
          <DESCRIPTION />
          <PRICE>0.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>32</ID>
          <NAME>Desk</NAME>
          <PARTNUM>&lt;*Value(Desk Location) *&gt;</PARTNUM>
          <DESCRIPTION>Configure items for a desk</DESCRIPTION>
          <PRICE>0.0000</PRICE>
          <COST />
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT>0</WEIGHT>
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>0</ISSIMPLE>
        </PRODUCT>
      </PRODUCTS>
    </CATEGORY>
    <CATEGORY>
      <ID>8</ID>
      <NAME>Vertical Demos</NAME>
      <RANK>100</RANK>
      <ACTIVE>1</ACTIVE>
      <STARTDATE />
      <ENDDATE />
      <REDIRECTTOURL />
      <IMAGE />
      <PRODUCTS />
      <CATEGORY>
        <ID>17</ID>
        <NAME>Software</NAME>
        <RANK>5</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>mouse_w_at_sign.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>71</ID>
            <NAME>WebApp X</NAME>
            <PARTNUM>WAX&lt;*CatCode(Type of Quote) *&gt;&lt;*CatCode(No of Users) *&gt;&lt;*CatCode(Disk Size) *&gt;&lt;*CatCode(Software Rental) *&gt;</PARTNUM>
            <DESCRIPTION>Software can be purchased through licenses or with a subscription.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Software</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>18</ID>
        <NAME>Services</NAME>
        <RANK>10</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>category_service1.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>3</ID>
            <NAME>Project Management</NAME>
            <PARTNUM>PM&lt;*CATCODE(Type of project management) *&gt;&lt;*CATCODE(Project lenght) *&gt;&lt;*CATCODE(Number of meetings) *&gt;</PARTNUM>
            <DESCRIPTION>Let our experience be your greatest strength. We provide all kind of consulting services.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Service</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT>0</WEIGHT>
            <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>72</ID>
            <NAME>Cleaning Service</NAME>
            <PARTNUM>CLEANING SERVICE</PARTNUM>
            <DESCRIPTION>For commercial and residential, we clean everything from carpets to windows.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Service</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>19</ID>
        <NAME>Hi-Tech</NAME>
        <RANK>15</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>motherboard.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>73</ID>
            <NAME>Server</NAME>
            <PARTNUM>SVR&lt;*CatCode(Processor) *&gt;&lt;*CatCode(Memory) *&gt;&lt;*CatCode(Hard Drive Controller) *&gt;</PARTNUM>
            <DESCRIPTION>Powerful, affordable network engines emphasizing scalability and reliability.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Hardware</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>20</ID>
        <NAME>Media</NAME>
        <RANK>20</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>newspapers.jpg</IMAGE>
        <PRODUCTS />
        <CATEGORY>
          <ID>35</ID>
          <NAME>Classified Ads</NAME>
          <RANK>5</RANK>
          <ACTIVE>1</ACTIVE>
          <STARTDATE />
          <ENDDATE />
          <REDIRECTTOURL />
          <IMAGE>newspapers.jpg</IMAGE>
          <PRODUCTS>
            <PRODUCT>
              <ID>76</ID>
              <NAME>Auto Advertisement</NAME>
              <PARTNUM>&lt;*ValueCode(Styles) *&gt;</PARTNUM>
              <DESCRIPTION>One car ad in a single publication or web site.</DESCRIPTION>
              <PRICE>0.0000</PRICE>
              <COST />
              <PRODUCTTYPE>Hardware</PRODUCTTYPE>
              <STARTDATE />
              <ENDDATE />
              <WEIGHT />
              <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
              <ISSIMPLE>0</ISSIMPLE>
            </PRODUCT>
          </PRODUCTS>
        </CATEGORY>
        <CATEGORY>
          <ID>34</ID>
          <NAME>Online Ads</NAME>
          <RANK>10</RANK>
          <ACTIVE>1</ACTIVE>
          <STARTDATE />
          <ENDDATE />
          <REDIRECTTOURL />
          <IMAGE>cityjobs.gif</IMAGE>
          <PRODUCTS>
            <PRODUCT>
              <ID>75</ID>
              <NAME>Online Job Advertisement</NAME>
              <PARTNUM>JobSite.com Advert</PARTNUM>
              <DESCRIPTION>Place online job ads at CityJobs.com</DESCRIPTION>
              <PRICE>100.0000</PRICE>
              <COST />
              <PRODUCTTYPE>Hardware</PRODUCTTYPE>
              <STARTDATE />
              <ENDDATE />
              <WEIGHT />
              <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
              <ISSIMPLE>0</ISSIMPLE>
            </PRODUCT>
          </PRODUCTS>
        </CATEGORY>
        <CATEGORY>
          <ID>30</ID>
          <NAME>Television Ads</NAME>
          <RANK>15</RANK>
          <ACTIVE>1</ACTIVE>
          <STARTDATE />
          <ENDDATE />
          <REDIRECTTOURL />
          <IMAGE>television.jpg</IMAGE>
          <PRODUCTS>
            <PRODUCT>
              <ID>74</ID>
              <NAME>Commercial</NAME>
              <PARTNUM>TV-AD-035</PARTNUM>
              <DESCRIPTION>Commercial at specified length of time and channel</DESCRIPTION>
              <PRICE>3000.0000</PRICE>
              <COST />
              <PRODUCTTYPE>Product</PRODUCTTYPE>
              <STARTDATE />
              <ENDDATE />
              <WEIGHT />
              <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
              <ISSIMPLE>0</ISSIMPLE>
            </PRODUCT>
          </PRODUCTS>
        </CATEGORY>
      </CATEGORY>
      <CATEGORY>
        <ID>21</ID>
        <NAME>Telecom and Managed Services</NAME>
        <RANK>25</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>global_communications.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>145</ID>
            <NAME>Site Connection</NAME>
            <PARTNUM>&lt;*CatCode(Distance Range) *&gt;</PARTNUM>
            <DESCRIPTION>High speed connection between two sites</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AttributeCost(Distance Range) *&gt;</COST>
            <PRODUCTTYPE>Service</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>22</ID>
        <NAME>CPG and FMCG</NAME>
        <RANK>30</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>consumer_goods.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>91</ID>
            <NAME>Liquorice 2mg Chewing Gum Triple Pack</NAME>
            <PARTNUM>NICL-2CGTP</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>93</ID>
            <NAME>Mint Chewing Gum 4mg</NAME>
            <PARTNUM>NICMINCG-4</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>50</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>90</ID>
            <NAME>Liquorice 2mg Chewing Gum</NAME>
            <PARTNUM>NICL-2CG</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>90</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>94</ID>
            <NAME>Original Fruit 2mg Chewing Gum</NAME>
            <PARTNUM>NICOF</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>100</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>92</ID>
            <NAME>Mint Chewing Gum 2mg</NAME>
            <PARTNUM>NICMINCG-2</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>110</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>104</ID>
            <NAME>Pain Tablets</NAME>
            <PARTNUM>VOLTAROL-P-TAB</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>150</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>78</ID>
            <NAME>Cream Triple Pack</NAME>
            <PARTNUM>LAMISIL-AT-CTP</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>160</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>77</ID>
            <NAME>Cream</NAME>
            <PARTNUM>LAMISIL-AT-C</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>170</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>82</ID>
            <NAME>Cream + Spray</NAME>
            <PARTNUM>LAMISIL-C-S</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>180</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>79</ID>
            <NAME>Gel</NAME>
            <PARTNUM>LAMISIL-AT-G</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>190</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>83</ID>
            <NAME>Once 1% Cutaneous Solution</NAME>
            <PARTNUM>LAMISIL-O-1</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>200</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>80</ID>
            <NAME>Spray 1%</NAME>
            <PARTNUM>LAMISIL-AT-S-1</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>210</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>81</ID>
            <NAME>Spray 1% Triple Pack</NAME>
            <PARTNUM>LAMISIL-AT-S-1TP</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>220</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>96</ID>
            <NAME>Adult Formula Spray</NAME>
            <PARTNUM>OTRIVINE-AFS</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>230</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>97</ID>
            <NAME>Menthol Nasal Spray</NAME>
            <PARTNUM>OTRIVINE-MNS</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>240</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>98</ID>
            <NAME>Sinusitis Spray</NAME>
            <PARTNUM>OTRIVINE-SS</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>250</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>102</ID>
            <NAME>Cough and Cold Linctus - Sugar &amp; Colour Free</NAME>
            <PARTNUM>TIXYLIX-CCL</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>260</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>99</ID>
            <NAME>Antiseptic Cream</NAME>
            <PARTNUM>SAVLON-AC</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>270</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>100</ID>
            <NAME>Antiseptic Wipes</NAME>
            <PARTNUM>SAVLON-AW</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>280</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>101</ID>
            <NAME>Sterile Alginate Dressings x 5</NAME>
            <PARTNUM>SAVLON-AD-5</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>290</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>103</ID>
            <NAME>Night Cough 2-10 years 100ml</NAME>
            <PARTNUM>TIXYLIX-NC-10-100</PARTNUM>
            <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
            <PRODUCTTYPE>Product</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>300</RANKWITHINCATEGORY>
            <ISSIMPLE>1</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
        <CATEGORY>
          <ID>46</ID>
          <NAME>This Month's Promotions</NAME>
          <RANK>0</RANK>
          <ACTIVE>1</ACTIVE>
          <STARTDATE />
          <ENDDATE />
          <REDIRECTTOURL />
          <IMAGE>rsz_sale.jpg</IMAGE>
          <PRODUCTS>
            <PRODUCT>
              <ID>77</ID>
              <NAME>Cream</NAME>
              <PARTNUM>LAMISIL-AT-C</PARTNUM>
              <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
              <PRICE>0.0000</PRICE>
              <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
              <PRODUCTTYPE>Product</PRODUCTTYPE>
              <STARTDATE />
              <ENDDATE />
              <WEIGHT />
              <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
              <ISSIMPLE>1</ISSIMPLE>
            </PRODUCT>
            <PRODUCT>
              <ID>102</ID>
              <NAME>Cough and Cold Linctus - Sugar &amp; Colour Free</NAME>
              <PARTNUM>TIXYLIX-CCL</PARTNUM>
              <DESCRIPTION>&lt;*AUX(NovartisPrice,Description_&lt;*MCODE*&gt;,PartNumber,&lt;*ProductCode*&gt;) *&gt; [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensione della confezione}{Pack Size}[ENDIF]: &lt;*AUX(NovartisPrice,PackSize,PartNumber,&lt;*ProductCode*&gt;) *&gt; . [IF]([EQ](&lt;*MCODE*&gt;,ITA)){Dimensioni unità di vendita}{Selling Unit Size}[ENDIF]: &lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;.</DESCRIPTION>
              <PRICE>0.0000</PRICE>
              <COST>&lt;*AUX(NovartisPrice,Price,PartNumber,&lt;*ProductCode*&gt;) *&gt;*&lt;*AUX(NovartisPrice,SelingPack,PartNumber,&lt;*ProductCode*&gt;) *&gt;*(1-&lt;*AUX(NovartisPrice,MarkUp,PartNumber,&lt;*ProductCode*&gt;) *&gt;)</COST>
              <PRODUCTTYPE>Product</PRODUCTTYPE>
              <STARTDATE />
              <ENDDATE />
              <WEIGHT />
              <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
              <ISSIMPLE>1</ISSIMPLE>
            </PRODUCT>
          </PRODUCTS>
        </CATEGORY>
      </CATEGORY>
      <CATEGORY>
        <ID>23</ID>
        <NAME>Utilities</NAME>
        <RANK>35</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>meter.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>180</ID>
            <NAME>Electricity</NAME>
            <PARTNUM>&lt;*Value(MPAN Core) *&gt;</PARTNUM>
            <DESCRIPTION />
            <PRICE>0.0000</PRICE>
            <COST>&lt;*Value(Annual Spend Quoted) *&gt; * (1-&lt;*Value(BMI Quoted Number) *&gt;/100)</COST>
            <PRODUCTTYPE>Power</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>181</ID>
            <NAME>Gas</NAME>
            <PARTNUM>&lt;*Value(MPR Number) *&gt; &lt;*setGI(MPR,&lt;*Value(MPR Number) *&gt;)*&gt;</PARTNUM>
            <DESCRIPTION />
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Gas</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>24</ID>
        <NAME>Freight and Shipping</NAME>
        <RANK>40</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>box.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>108</ID>
            <NAME>Shipping Rate</NAME>
            <PARTNUM>RQ-&lt;*CatCode(Transport) *&gt;</PARTNUM>
            <DESCRIPTION>For rate information please complete the following form and submit it to us.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Service</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>28</ID>
        <NAME>Controls and Automation</NAME>
        <RANK>42</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>controls_automation.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>148</ID>
            <NAME>VFD-720</NAME>
            <PARTNUM>VFD-720&lt;*CATCODE(Construction) *&gt;&lt;*CATCODE(Amps_Volts) *&gt;&lt;*CATCODE(Enclosure) *&gt;&lt;*CATCODE(Drive Options) *&gt;&lt;*CATCODE(FieldBus Communication Options) *&gt;&lt;*CATCODE(Input / Output Options) *&gt;</PARTNUM>
            <DESCRIPTION>
              1 - 500 HP&lt;br&gt;
              208 - 600 VAC Input&lt;br&gt;
              Commercial HVAC
            </DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>HVAC Drives</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT>0</WEIGHT>
            <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>29</ID>
        <NAME>Automotive</NAME>
        <RANK>44</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>automotive.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>109</ID>
            <NAME>DOBLO` CARGO</NAME>
            <PARTNUM>&lt;*Value(Model) *&gt;</PARTNUM>
            <DESCRIPTION>&lt;b&gt;This is the work mate you were looking for. &lt;/b&gt;&lt;ul&gt;&lt;li&gt;Versatile, sturdy and friendly, it makes your job less tiring, more fun, much safer.&lt;/li&gt;&lt;li&gt;High quality seats and pleasant trim certainly make your day more comfortable.&lt;/li&gt;&lt;/ul&gt;</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Van</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>110</ID>
            <NAME>2008 Veracruz</NAME>
            <PARTNUM>&lt;*Value(Model) *&gt;</PARTNUM>
            <DESCRIPTION>
              &lt;b&gt;Sophistication, style, convenience and power&lt;/b&gt;
              &lt;ul&gt;
              &lt;li&gt; Advanced standard safety technologies&lt;/li&gt;
              &lt;li&gt; Premium comfort and convenience feautures&lt;/li&gt;
              &lt;li&gt; Powerful and technologically advanced&lt;/li&gt;
              &lt;li&gt;Striking, sophisticated styling&lt;/li&gt;
              &lt;/ul&gt;
            </DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Sport Utility</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>186</ID>
            <NAME>DOBLO` CARGO (CONFIGURE IN 3D)</NAME>
            <PARTNUM>&lt;*Value(Model) *&gt;</PARTNUM>
            <DESCRIPTION>This is the work mate you were looking for. Versatile, sturdy and friendly, it makes your job less tiring, more fun, much safer.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Cargo Van</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>25</ID>
        <NAME>Events</NAME>
        <RANK>45</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>badge.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>149</ID>
            <NAME>Stand</NAME>
            <PARTNUM>&lt;*Value(stand)*&gt;</PARTNUM>
            <DESCRIPTION />
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Stand</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>26</ID>
        <NAME>Insurance</NAME>
        <RANK>50</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>insurance-form.jpg</IMAGE>
        <PRODUCTS>
          <PRODUCT>
            <ID>155</ID>
            <NAME>Single Coverage Health Care Plan</NAME>
            <PARTNUM />
            <DESCRIPTION />
            <PRICE>1000.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Hardware</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT>0</WEIGHT>
            <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>157</ID>
            <NAME>Family Coverage Health Care Plan</NAME>
            <PARTNUM />
            <DESCRIPTION />
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Service</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>4</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
          <PRODUCT>
            <ID>150</ID>
            <NAME>Plumbing &amp; Drainage</NAME>
            <PARTNUM />
            <DESCRIPTION>Fuss-free help at hand when your plumbing or drains go up the spout.</DESCRIPTION>
            <PRICE>0.0000</PRICE>
            <COST />
            <PRODUCTTYPE>Service</PRODUCTTYPE>
            <STARTDATE />
            <ENDDATE />
            <WEIGHT />
            <RANKWITHINCATEGORY>6</RANKWITHINCATEGORY>
            <ISSIMPLE>0</ISSIMPLE>
          </PRODUCT>
        </PRODUCTS>
      </CATEGORY>
      <CATEGORY>
        <ID>27</ID>
        <NAME>Furniture</NAME>
        <RANK>55</RANK>
        <ACTIVE>1</ACTIVE>
        <STARTDATE />
        <ENDDATE />
        <REDIRECTTOURL />
        <IMAGE>office_chair.jpg</IMAGE>
        <PRODUCTS />
        <CATEGORY>
          <ID>45</ID>
          <NAME>Tables</NAME>
          <RANK>5</RANK>
          <ACTIVE>1</ACTIVE>
          <STARTDATE />
          <ENDDATE />
          <REDIRECTTOURL />
          <IMAGE />
          <PRODUCTS>
            <PRODUCT>
              <ID>166</ID>
              <NAME>Quickly Standard</NAME>
              <PARTNUM />
              <DESCRIPTION>
                Design Johannes Foersom &amp; Peter Hiort-Lorenzen 2000
                light weight folding table
                Frame of Ø30 mm conical welded steel tubing, powder
                coated or chromium plated. 25 mm top of blockboard with
                birch (some sizes also in oak) veneer alt. laminate (K2010
                UN). Edges of wood or plastic. All tables linkable, linking
                device against order. Modesty panel in light grey MDF
                RAL7047 for all table sizes. 1/4-circle top of light grey
                MDF RAL7047, lacquered to match plastic edge standard.
              </DESCRIPTION>
              <PRICE>0.0000</PRICE>
              <COST>645</COST>
              <PRODUCTTYPE>Hardware</PRODUCTTYPE>
              <STARTDATE />
              <ENDDATE />
              <WEIGHT />
              <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
              <ISSIMPLE>0</ISSIMPLE>
            </PRODUCT>
          </PRODUCTS>
        </CATEGORY>
        <CATEGORY>
          <ID>44</ID>
          <NAME>Chairs</NAME>
          <RANK>100</RANK>
          <ACTIVE>1</ACTIVE>
          <STARTDATE />
          <ENDDATE />
          <REDIRECTTOURL />
          <IMAGE />
          <PRODUCTS>
            <PRODUCT>
              <ID>164</ID>
              <NAME>Snow 300</NAME>
              <PARTNUM>300</PARTNUM>
              <DESCRIPTION>Snow chair, injected polypropylene, lightweight and UV rays resistant, is ideal for outdoor use. Peculiar is the water outflow hole on the seat part. Characterized by oval profiles that make it strong and handly. Available in colours: red, white, orange, green and blue. Stackable. 1st Prize YOUNG&amp;DESIGN 2008.</DESCRIPTION>
              <PRICE>51.0000</PRICE>
              <COST>51</COST>
              <PRODUCTTYPE>Product</PRODUCTTYPE>
              <STARTDATE />
              <ENDDATE />
              <WEIGHT />
              <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
              <ISSIMPLE>0</ISSIMPLE>
            </PRODUCT>
            <PRODUCT>
              <ID>165</ID>
              <NAME>Miss Alu</NAME>
              <PARTNUM>ALU</PARTNUM>
              <DESCRIPTION>
                Chair with die-casted-aluminium frame, back in polypropylene or wood and seat in polypropylene, wood or covered with vinyl.
                Armchair version is also available.
                Suitable for outside, light and stackable.
              </DESCRIPTION>
              <PRICE>115.5000</PRICE>
              <COST>115.5</COST>
              <PRODUCTTYPE>Product</PRODUCTTYPE>
              <STARTDATE />
              <ENDDATE />
              <WEIGHT />
              <RANKWITHINCATEGORY>2</RANKWITHINCATEGORY>
              <ISSIMPLE>0</ISSIMPLE>
            </PRODUCT>
            <PRODUCT>
              <ID>161</ID>
              <NAME>Daydream 400</NAME>
              <PARTNUM>400</PARTNUM>
              <DESCRIPTION>An ergonomic shape for Day Dream with polycarbonate injected shell. Polycarbonate is a very resistant and flexible material, that allows to obtain full colours with high-gloss finish. The appealing design makes the chair suitable for any environment.</DESCRIPTION>
              <PRICE>96.0000</PRICE>
              <COST>96</COST>
              <PRODUCTTYPE>SuperPlastic</PRODUCTTYPE>
              <STARTDATE />
              <ENDDATE />
              <WEIGHT />
              <RANKWITHINCATEGORY>5</RANKWITHINCATEGORY>
              <ISSIMPLE>1</ISSIMPLE>
            </PRODUCT>
            <PRODUCT>
              <ID>162</ID>
              <NAME>Daydream 401</NAME>
              <PARTNUM>401</PARTNUM>
              <DESCRIPTION>Day Dream, a creative idea has originated a chair with an ergonomic and appealing shape. Designed by Archirivolto, once more handling with testing on plastic materials, Day Dream has a coloured trasparent polycarbonate shell which is clipped on the frame without screws, the result is a clean and pure look.</DESCRIPTION>
              <PRICE>101.0000</PRICE>
              <COST>101</COST>
              <PRODUCTTYPE>SuperPlastic</PRODUCTTYPE>
              <STARTDATE />
              <ENDDATE />
              <WEIGHT />
              <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
              <ISSIMPLE>1</ISSIMPLE>
            </PRODUCT>
            <PRODUCT>
              <ID>163</ID>
              <NAME>Daydream 404</NAME>
              <PARTNUM>404</PARTNUM>
              <DESCRIPTION>Day Dream, a creative idea has originated a chair with an ergonomic and appealing shape. Designed by Archirivolto, once more handling with testing on plastic materials, Day Dream has a coloured trasparent polycarbonate shell which is clipped on the frame without screws, the result is a clean and pure look.</DESCRIPTION>
              <PRICE>183.0000</PRICE>
              <COST>183</COST>
              <PRODUCTTYPE>SuperPlastic</PRODUCTTYPE>
              <STARTDATE />
              <ENDDATE />
              <WEIGHT />
              <RANKWITHINCATEGORY>15</RANKWITHINCATEGORY>
              <ISSIMPLE>1</ISSIMPLE>
            </PRODUCT>
          </PRODUCTS>
        </CATEGORY>
      </CATEGORY>
    </CATEGORY>
    <CATEGORY>
      <ID>6</ID>
      <NAME>Appliances</NAME>
      <RANK>120</RANK>
      <ACTIVE>1</ACTIVE>
      <STARTDATE />
      <ENDDATE />
      <REDIRECTTOURL />
      <IMAGE>category_appliance.jpg</IMAGE>
      <PRODUCTS>
        <PRODUCT>
          <ID>43</ID>
          <NAME>Nestar Portable Air Conditioner</NAME>
          <PARTNUM>NPAC-2335</PARTNUM>
          <DESCRIPTION>Nestar offers the ideal portable Air Conditioning units for individual room cooling.</DESCRIPTION>
          <PRICE>350.0000</PRICE>
          <COST>87.5</COST>
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>1</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>44</ID>
          <NAME>Venhouse Portable Air Conditioner</NAME>
          <PARTNUM>VPAC-0340</PARTNUM>
          <DESCRIPTION>It provides both "library quiet" cooling with sleek, slim styling and a Plasmacluster ion generator</DESCRIPTION>
          <PRICE>550.0000</PRICE>
          <COST>137.5</COST>
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>1</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>45</ID>
          <NAME>Royal AC Portable Air Conditioner</NAME>
          <PARTNUM>RAC-5722</PARTNUM>
          <DESCRIPTION>This air conditioner doesn't just look cool - it's a powerful cooling machine with multiple speeds.</DESCRIPTION>
          <PRICE>449.0000</PRICE>
          <COST>112.25</COST>
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>1</ISSIMPLE>
        </PRODUCT>
        <PRODUCT>
          <ID>46</ID>
          <NAME>Systeram Portable Air Conditioner</NAME>
          <PARTNUM>SPAC-4333</PARTNUM>
          <DESCRIPTION>Systeram's new 4300 series Air Conditioner provides a powereful cooler in a small portable package.</DESCRIPTION>
          <PRICE>299.0000</PRICE>
          <COST>74.75</COST>
          <PRODUCTTYPE>Hardware</PRODUCTTYPE>
          <STARTDATE />
          <ENDDATE />
          <WEIGHT />
          <RANKWITHINCATEGORY>10</RANKWITHINCATEGORY>
          <ISSIMPLE>1</ISSIMPLE>
        </PRODUCT>
      </PRODUCTS>
    </CATEGORY>
  </CATEGORIES>
</CATALOGUE>

Yes
No