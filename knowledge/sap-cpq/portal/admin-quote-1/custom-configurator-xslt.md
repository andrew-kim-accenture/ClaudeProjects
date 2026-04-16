# Custom Configurator XSLT | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/169677d7829d41d98e9668383b17627a.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	
Custom Configurator XSLT
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Custom Configurator XSLT

Users who use custom configurator XSLT transformation should replace a part of custom transformation in order to enable attribute span functionality.

The code to be replaced:


<xsl:for-each select="/Configuration/Tabs/Tab[@selected='1']/Attributes/Attribute[@DisplayAs != 93 and @DisplayAs != 94 and @DisplayAs != 96 and (@Rank = $CurrentStep or @Rank = '1') and @IsPositionAbsolute = '0' and @AliasDisplay != '2' and not(@SimpleRefProduct='1') ]">     
      <xsl:sort select="@SubRank" data-type="number" order="ascending" />   
      <xsl:if test="(position()-1) mod $Columns = 0">
        <xsl:variable name="parentPosition" select="position()"></xsl:variable>
 
        <tr>
          <td valign="top">
            <xsl:if test="Allowed='True'">
              <xsl:attribute name="class">inputborder</xsl:attribute>
            </xsl:if>
            <xsl:attribute name="width"><xsl:value-of select ="$ColumnWidth"/></xsl:attribute>
            <xsl:call-template name="ShowAttribute">
              <xsl:with-param name="StdAttrCode" select="@StdAttrCode"></xsl:with-param>
              <xsl:with-param name="PA_ID" select="@PA_ID"></xsl:with-param>
              <xsl:with-param name="SelectedTabId" select="$SelectedTabId"></xsl:with-param>
              <xsl:with-param name="CurrentStep" select="$CurrentStep"></xsl:with-param>
            </xsl:call-template>
          </td>
 
          <xsl:for-each select ="/Configuration/Tabs/Tab[@selected='1']/Attributes/Attribute[@DisplayAs != 93 and @DisplayAs != 94 and @DisplayAs != 96 and (@Rank = $CurrentStep or @Rank = '1') and @IsPositionAbsolute = '0' and @AliasDisplay != '2' and not(@SimpleRefProduct='1') ]">
            <xsl:sort select="@SubRank" data-type="number" order="ascending" />
 
            <xsl:if test="(position() &gt; $parentPosition) and (position() &lt; ($parentPosition + $Columns))">
 
              <td valign="top">
                <xsl:if test="Allowed='True'"><xsl:attribute name="class">inputborder</xsl:attribute></xsl:if>
                <xsl:attribute name="width"><xsl:value-of select ="$ColumnWidth"/></xsl:attribute>
                <xsl:call-template name="ShowAttribute">
                  <xsl:with-param name="StdAttrCode" select="@StdAttrCode"></xsl:with-param>
                  <xsl:with-param name="PA_ID" select="@PA_ID"></xsl:with-param>
                  <xsl:with-param name="SelectedTabId" select="$SelectedTabId"></xsl:with-param>
                  <xsl:with-param name="CurrentStep" select="$CurrentStep"></xsl:with-param>
                </xsl:call-template>  
              </td>
            </xsl:if>
          </xsl:for-each>
 
          <xsl:if test="position() &gt; $Count - $Columns ">
            <xsl:variable name="TdLeft" select="($Columns - ($Count mod $Columns)) mod $Columns"></xsl:variable>
            <xsl:if test="$TdLeft &gt; 0">
              <xsl:call-template name="RecurseEmptyTd">
                <xsl:with-param name="CurrentCount" select="1"></xsl:with-param>
                <xsl:with-param name="MaxCount" select="$TdLeft"></xsl:with-param>
                <xsl:with-param name="Width" select="$ColumnWidth"></xsl:with-param>
                <xsl:with-param name="Class" select="''"></xsl:with-param>
                <xsl:with-param name="VAlign" select="''"></xsl:with-param>
              </xsl:call-template>
            </xsl:if>
          </xsl:if>
        </tr>
      </xsl:if>
    </xsl:for-each>      

Replace the previous code with the following:


<xsl:for-each select="/Configuration/Tabs/Tab[@selected='1']/Attributes/Attribute[@DisplayAs != 93 and @DisplayAs != 94 and @DisplayAs != 96 and (@Rank = $CurrentStep or @Rank = '1') and @IsPositionAbsolute = '0' and @AliasDisplay != '2' and not(@SimpleRefProduct='1') ]">     
      <xsl:sort select="@SubRank" data-type="number" order="ascending" />   
          <xsl:if test="@IsFirstInRow ='1'">
            <xsl:text disable-output-escaping="yes"><![CDATA[<tr>]]> </xsl:text>
          </xsl:if>
          <td valign="top">
            <xsl:attribute name="colspan"><xsl:value-of disable-output-escaping="yes" select="@Colspan"/></xsl:attribute>
            <xsl:if test="Allowed='True'">
              <xsl:attribute name="class">inputborder</xsl:attribute>
            </xsl:if>
            <xsl:attribute name="width"><xsl:value-of select ="$ColumnWidth"/></xsl:attribute>
            <xsl:call-template name="ShowAttribute">
              <xsl:with-param name="StdAttrCode" select="@StdAttrCode"></xsl:with-param>
              <xsl:with-param name="PA_ID" select="@PA_ID"></xsl:with-param>
              <xsl:with-param name="SelectedTabId" select="$SelectedTabId"></xsl:with-param>
              <xsl:with-param name="CurrentStep" select="$CurrentStep"></xsl:with-param>
            </xsl:call-template>
          </td>
 
          <xsl:if test="@NumberOfFollowingEmptyTD &gt; 0">
            <xsl:call-template name="RecurseEmptyTd">
              <xsl:with-param name="CurrentCount" select="1"></xsl:with-param>
              <xsl:with-param name="MaxCount" select="@NumberOfFollowingEmptyTD"></xsl:with-param>
              <xsl:with-param name="Width" select="$ColumnWidth"></xsl:with-param>
              <xsl:with-param name="Class" select="''"></xsl:with-param>
              <xsl:with-param name="VAlign" select="''"></xsl:with-param>
            </xsl:call-template>
          </xsl:if>
 
          <xsl:if test="@IsLastInRow ='1'">
            <xsl:text disable-output-escaping="yes"><![CDATA[</tr>]]> </xsl:text>
          </xsl:if>
    </xsl:for-each>

Related Information
Products
Yes
No