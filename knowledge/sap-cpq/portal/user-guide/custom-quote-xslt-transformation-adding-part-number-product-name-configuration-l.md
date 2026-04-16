# Custom Quote XSLT Transformation - Adding Part Number / Product Name Configuration Link Feature | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/e2cafa5c06e5450a851b77d1f31c1b3f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation


	
Product Search
	
Catalog Navigation
	
Product Comparison
	
Product Configuration
	
Custom Quote XSLT Transformation - Adding Part Number / Product Name Configuration Link Feature
	
Document Upload in Configurator
	
Document Generation Journey
	
Load Existing Quotes
	
Quote
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
Custom Quote XSLT Transformation - Adding Part Number / Product Name Configuration Link Feature

If you’re using the custom load quote XSLT transformation, you need to replace certain parts of custom transformation in order to enable the functionality for managing the Part Number and Product Name links through administration.

In order to use the Part Number configuration link feature in custom quote transformation, replace the following part of code:



<xsl:call-template name="GenericCellTD">
  <xsl:with-param name="node" select="PartNumber"/>
  <xsl:with-param name="align" select="'left'"/>
 </xsl:call-template>

With this one:



<xsl:choose>
  <xsl:when test="PartNumber/@EditableGroup &gt; 0 or not(Actions/Action[ActionId='2']) or string-length(PartNumber) = 0 or IsSimple = 1">
   <xsl:call-template name="GenericCellTD">
    <xsl:with-param name="node" select="PartNumber"/>
    <xsl:with-param name="align" select="'left'"/>
   </xsl:call-template>
  </xsl:when>
  <xsl:otherwise>
   <xsl:call-template name="GenericCellTD">
    <xsl:with-param name="node" select="PartNumber"/>
    <xsl:with-param name="align" select="'left'"/>
    <xsl:with-param name="prefix">
     <![CDATA[<a href="javascript:void(0)" onclick="itemActionChanged('', '2', ']]><xsl:value-of select="CartItem"/><![CDATA[');">]]>
    </xsl:with-param>
    <xsl:with-param name="sufix"><xsl:text disable-output-escaping="yes"><![CDATA[</a>]]></xsl:text></xsl:with-param>
   </xsl:call-template>
  </xsl:otherwise>
 </xsl:choose>


In order to use the Product Name configuration link feature in custom quote transformation, replace following part of code:



<xsl:call-template name="GenericCellTD">
  <xsl:with-param name="node" select="ProductName"/>
  <xsl:with-param name="align" select="'left'"/>
 </xsl:call-template>

With this one:



<xsl:choose>
  <xsl:when test="PartNumber/@EditableGroup &gt; 0 or not(Actions/Action[ActionId='2']) or string-length(PartNumber) = 0 or IsSimple = 1">
   <xsl:call-template name="GenericCellTD">
    <xsl:with-param name="node" select="ProductName"/>
    <xsl:with-param name="align" select="'left'"/>
   </xsl:call-template>
  </xsl:when>
  <xsl:otherwise>
   <xsl:call-template name="GenericCellTD">
    <xsl:with-param name="node" select="ProductName"/>
    <xsl:with-param name="align" select="'left'"/>
    <xsl:with-param name="prefix">
     <![CDATA[<a href="javascript:void(0)" onclick="itemActionChanged('', '2', ']]><xsl:value-of select="CartItem"/><![CDATA[');">]]>
    </xsl:with-param>
    <xsl:with-param name="sufix"><xsl:text disable-output-escaping="yes"><![CDATA[</a>]]></xsl:text></xsl:with-param>
   </xsl:call-template>
  </xsl:otherwise>
 </xsl:choose>

Yes
No