	&lt;cffunction name="create<xsl:value-of select="//bean/@name"/>" access="public" output="false" returntype="<xsl:value-of select="//bean/@path"/>"&gt;
		<xsl:for-each select="root/bean/dbtable/column">&lt;cfargument name="<xsl:value-of select="@name" />" type="<xsl:value-of select="@type" />" required="<xsl:choose><xsl:when test="@primaryKey='Yes'">true</xsl:when><xsl:otherwise>false</xsl:otherwise></xsl:choose>" /&gt;
		</xsl:for-each>
			
		&lt;cfset var <xsl:value-of select="//bean/@name"/> = createObject("component","<xsl:value-of select="//bean/@path"/>").init(argumentCollection=arguments) /&gt;
		&lt;cfreturn <xsl:value-of select="//bean/@name"/> /&gt;
	&lt;/cffunction&gt;