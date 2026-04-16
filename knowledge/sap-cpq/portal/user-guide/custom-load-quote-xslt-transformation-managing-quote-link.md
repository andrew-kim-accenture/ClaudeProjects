# Custom Load Quote XSLT Transformation - Managing Quote Link | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/2459f6bdfb90413cb878e0ebe210c8e6.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey
	
Load Existing Quotes


	
Recently Visited Objects
	
Custom Load Quote XSLT Transformation - Managing Quote Link
	
Custom Load Quote XSLT Transformation - Managing Revision Column
	
Quote Management
	
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
Custom Load Quote XSLT Transformation - Managing Quote Link

If you’re using the custom load quote XSLT transformation, you need to replace certain parts of custom transformation in order to enable the functionality for managing the Quote link through administration.

In order to show Quote link in custom existing quotes transformation replace the following part of code:



<xsl:template match="/LoadQuote">
    <xsl:variable name="sort_by">

With this one:



<xsl:template match="/LoadQuote">
    <div id="dialogMessage" class="mw" style="display: none;"><!-- permission message popup -->
      <div class="mw_head">
          <a href="" onclick="closePermissionMessage(); return false;">close</a>
      </div>
      <div style="padding: 40px;">
        <label for="" id="lblMessage" class="message" />
      </div>
    </div>
    <div id="overlay" style="display: none;">
      <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
    </div>
    <xsl:variable name="sort_by">


Replace following part of code inside <xsl:for-each select=”./Column”> node if it contains ScParam inside:



<xsl:otherwise>
  <![CDATA[ ]]><xsl:value-of disable-output-escaping="yes" select="." />
 </xsl:otherwise>

With following one:



<xsl:otherwise>
  <xsl:choose>
   <xsl:when test="contains(current()/@ColumnName, 'quoteNumber')">
    <a href="">
     <xsl:attribute name="onclick">
      openPermissionMessage(<xsl:value-of disable-output-escaping="yes" select="." />, <xsl:value-of disable-output-escaping="yes" select="$ownerId" />, <xsl:value-of disable-output-escaping="yes" select="$cartId" />); return false;
     </xsl:attribute>
     <![CDATA[ ]]><xsl:value-of disable-output-escaping="yes" select="." />  
    </a> 
   </xsl:when>
  <xsl:otherwise>
   <![CDATA[ ]]><xsl:value-of disable-output-escaping="yes" select="." />  
  </xsl:otherwise>
 </xsl:choose>
</xsl:otherwise>

Yes
No