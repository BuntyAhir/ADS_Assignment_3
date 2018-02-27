<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
	<xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
	<xsl:template match="/">
		<html>
			<body>
				<table border="2">
					<tr bgcolor="#F39C12">
						<th>CaseId</th>
					</tr>
					<xsl:variable name="CaseId" select="//CaseId" />
					<xsl:variable name="SSN" select="//SSN" />
					
					<xsl:for-each select="HEALTHDB/S1_CASES/CASE/CaseId">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>	
				</table><br />
				<table border="2">
					<tr bgcolor="#F39C12">
						<th>InjuryDate</th>
					</tr>
					<xsl:for-each select="HEALTHDB/S1_CASES/CASE/InjuryDate">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>
				</table><br />
				<table border="2">
					<tr bgcolor="#F39C12">
						<th>ClaimDate</th>
					</tr>
					<xsl:for-each select="HEALTHDB/S2_CLAIMS/CLAIM[CaseId = $CaseId]/ClaimDate">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>	
				</table><br />
				<table border="2">
					<tr bgcolor="#F39C12">
						<th>HealthPlan</th>
					</tr>
					<xsl:for-each select="HEALTHDB/S1_PATIENTS/PATIENT[SSN = $SSN]/HealthPlan">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>
				</table><br />
				<table border="2">
					<tr bgcolor="#F39C12">
						<th>Amount</th>
					</tr>
					<xsl:for-each select="HEALTHDB/S2_CLAIMS/CLAIM[CaseId = $CaseId]/Amount">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>
				</table><br />
				<table border="2">
					<tr bgcolor="#F39C12">
						<th>DName</th>
					</tr>
					<xsl:for-each select="HEALTHDB/S3_TREATMENTS/TREATMENT[CaseId = $CaseId]/DName">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>			
				</table><br />
				
			</body>	
		</html>
	</xsl:template>
</xsl:stylesheet>

