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
					<xsl:for-each select="HEALTHDB/S1_CASES/CASE/CaseId">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>	
				
					<tr bgcolor="#F39C12">
						<th>InjuryDate</th>
					</tr>
					<xsl:for-each select="HEALTHDB/S1_CASES/CASE/InjuryDate">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>
				
					<tr bgcolor="#F39C12">
						<th>ClaimDate</th>
					</tr>
					<xsl:for-each select="HEALTHDB/S2_CLAIMS/CLAIM/ClaimDate">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>	
				
					<tr bgcolor="#F39C12">
						<th>HealthPlan</th>
					</tr>
					<xsl:for-each select="HEALTHDB/S1_PATIENTS/PATIENT/HealthPlan">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>
				
					<tr bgcolor="#F39C12">
						<th>Amount</th>
					</tr>
					<xsl:for-each select="HEALTHDB/S2_CLAIMS/CLAIM/Amount">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>
				
					<tr bgcolor="#F39C12">
						<th>DName</th>
					</tr>
					<xsl:for-each select="HEALTHDB/S3_TREATMENTS/TREATMENT/DName">
						<tr bgcolor="#F8C471">						
							<td><xsl:value-of select="." /></td>
						</tr>
					</xsl:for-each>			
				</table><br />
				
			</body>	
		</html>
	</xsl:template>
</xsl:stylesheet>

