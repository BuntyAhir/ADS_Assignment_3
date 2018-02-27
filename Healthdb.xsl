<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
	<xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
	<xsl:template match="/">
		<html>
			<body>
				<table border="2">
				<font color="#6E2C00" >
					<tr bgcolor="#F39C12">
						<th style="text-align:left">CaseId</th>
						<th style="text-align:left">InjuryDate</th>
						<th style="text-align:left">ClaimDate</th>
						<th style="text-align:left">HealthPlan</th>
						<th style="text-align:left">Amount</th>
						<th style="text-align:left">DName</th>
					</tr>
					<xsl:for-each select="HEALTHDB/S1_CASES/CASE">
					<xsl:variable name="CaseId" select="CaseId" />
					<xsl:variable name="SSN" select="SSN" />
					
						<tr bgcolor="#F8C471">
							<td><xsl:value-of select="CaseId" /></td>
							<td><xsl:value-of select="InjuryDate" /></td>
							<td>
								<xsl:for-each select="/HEALTHDB/S2_CLAIMS/CLAIM[CaseId = $CaseId]" >
								<xsl:value-of select="ClaimDate"/>
								</xsl:for-each>
							</td>
							<td>
								<xsl:for-each select="/HEALTHDB/S1_PATIENTS/PATIENT[SSN = $SSN]" >
								<xsl:value-of select="HealthPlan"/>
								</xsl:for-each>
								</td>
							<td>
								<xsl:for-each select="/HEALTHDB/S2_CLAIMS/CLAIM[CaseId = $CaseId]" >
								<xsl:value-of select="Amount"/>
								</xsl:for-each>
							</td>
							<td>
								<xsl:for-each select="/HEALTHDB/S3_TREATMENTS/TREATMENT[CaseId = $CaseId]" >
								<xsl:value-of select="DName"/>
								</xsl:for-each>
							</td>							
						</tr>
					</xsl:for-each>	
					
				</font>					
				</table>
			</body>	
		</html>
	</xsl:template>
</xsl:stylesheet>

