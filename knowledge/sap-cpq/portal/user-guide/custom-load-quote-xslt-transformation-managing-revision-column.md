# Custom Load Quote XSLT Transformation - Managing Revision Column | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/bdc1aed832c74c1e91ab78100922b321.html?locale=en-US&state=PRODUCTION&version=2603
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
Custom Load Quote XSLT Transformation - Managing Revision Column

If you’re using the custom load quote XSLT transformation, you need to replace certain parts of custom transformation in order to enable the functionality for managing the Revision column through administration.

Remove the following part of code:



<xsl:if test="not(/LoadQuote/IsBackdoor = '1') and /LoadQuote/SelectMode != 1">
  <th>{{xsltRevLQ}}.</th>
 </xsl:if>
 <xsl:if test="/LoadQuote/SelectMode = 1">
  <th><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></th>
 </xsl:if>


Replace this part of code:



<xsl:for-each select="./Header/Column">
    <!-- HERE IS EXISTING CODE LOGIC FOR DISPLAY COLUMNS. IT SHOULD BE ADDED TO APPROPRIATE POSITION IN CHANGED TRANSFORMATION - SEE CODE BELOW  -->
 </xsl:for-each>


With this one:



<xsl:for-each select="./Header/Column">
  <th>
   <table cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
     <xsl:choose>
      <xsl:when test="contains(current()/@ColumnName, 'REVISION')">
       <!-- existing condition for display revision column -->
       <xsl:if test="not(/LoadQuote/IsBackdoor = '1') and /LoadQuote/SelectMode != 1">
        <td><xsl:value-of select="."/></td>
       </xsl:if>
       <xsl:if test="/LoadQuote/SelectMode = 1">
        <td><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></td>
       </xsl:if>
      </xsl:when>
      <xsl:otherwise>
       <!-- HERE GOES EXISTING CODE LOGIC FOR DISPLAY COLUMNS !!! -->
      </xsl:otherwise>
     </xsl:choose>
    </tr>
   </table>
  </th>
 </xsl:for-each>


Remove the following part of code:



<xsl:if test="not(/LoadQuote/IsBackdoor = '1') and /LoadQuote/SelectMode != 1">
  <td style="text-align: center;">
   <a>
    <xsl:attribute name="href">Revisions.aspx?cr=1&amp;o=<xsl:value-of select="@OwnerIdCrypted"/>&amp;c=<xsl:value-of select="@CartIdCrypted"/></xsl:attribute>
     <xsl:value-of select="@ActiveRev" disable-output-escaping="yes"/>
   </a>
  </td>
 </xsl:if>


Replace the following part of code inside the <xsl:for-each select=”./Column”> node if there’s the ScParam part in it:



<xsl:otherwise>
  <![CDATA[ ]]><xsl:value-of disable-output-escaping="yes" select="." />
 </xsl:otherwise>

With this one:



<xsl:otherwise>
  <xsl:choose>
   <xsl:when test="contains(current()/@ColumnName, 'revision')">
    <!-- existing condition for display revision column -->
    <xsl:if test="not(/LoadQuote/IsBackdoor = '1') and /LoadQuote/SelectMode != 1">
     <a>
      <xsl:attribute name="href">Revisions.aspx?cr=1&amp;o=<xsl:value-of select="../@OwnerIdCrypted"/>&amp;c=<xsl:value-of select="../@CartIdCrypted"/></xsl:attribute>
      <xsl:value-of select="../@ActiveRev" disable-output-escaping="yes"/>
     </a>
    </xsl:if>
   </xsl:when>
   <xsl:otherwise>
    <![CDATA[ ]]><xsl:value-of disable-output-escaping="yes" select="." />  
   </xsl:otherwise>
  </xsl:choose>
 </xsl:otherwise>

Yes
No