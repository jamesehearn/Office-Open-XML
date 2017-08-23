<!--Designates document as a stylesheet-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--Apply the document to entire XML Document(XPath)-->
	<xsl:template match="/">
		<!--Namespace declaration-->
		<w:document xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:cx="http://schemas.microsoft.com/office/drawing/2014/chartex" xmlns:cx1="http://schemas.microsoft.com/office/drawing/2015/9/8/chartex" xmlns:cx2="http://schemas.microsoft.com/office/drawing/2015/10/21/chartex" xmlns:cx3="http://schemas.microsoft.com/office/drawing/2016/5/9/chartex" xmlns:cx4="http://schemas.microsoft.com/office/drawing/2016/5/10/chartex" xmlns:cx5="http://schemas.microsoft.com/office/drawing/2016/5/11/chartex" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:w16se="http://schemas.microsoft.com/office/word/2015/wordml/symex" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape" mc:Ignorable="w14 w15 w16se wp14">
			<w:body>
				<w:p w:rsidR="006621F6" w:rsidRPr="002C1778" w:rsidRDefault="00304643" w:rsidP="002C1778">
					<w:pPr>
						<w:pStyle w:val="Title"/>
					</w:pPr>
					<w:r w:rsidRPr="002C1778">
						<w:t>Example Test Results</w:t>
					</w:r>
				</w:p>
				<w:p w:rsidR="00304643" w:rsidRDefault="00304643" w:rsidP="002C1778">
					<w:pPr>
						<w:pStyle w:val="Heading1"/>
					</w:pPr>
					<w:r>
						<w:t xml:space="preserve">Total Tests: </w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE">
						<w:t>
							<!--Value of the test-run total property (@)-->
							<xsl:value-of select="test-run/@total"/>
						</w:t>
					</w:r>
					<w:r>
						<w:br/>
					</w:r>
					<w:r w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="70AD47" w:themeColor="accent6"/>
						</w:rPr>
						<w:t xml:space="preserve">Passing Tests: </w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE" w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="70AD47" w:themeColor="accent6"/>
						</w:rPr>
						<w:t>
							<!--Value of the test-run passed property (@)-->
							<xsl:value-of select="test-run/@passed"/>
						</w:t>
					</w:r>
					<w:r w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="70AD47" w:themeColor="accent6"/>
						</w:rPr>
						<w:br/>
					</w:r>
					<w:r w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="ED7D31" w:themeColor="accent2"/>
						</w:rPr>
						<w:t xml:space="preserve">Failing Tests: </w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE" w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="ED7D31" w:themeColor="accent2"/>
						</w:rPr>
						<w:t>
							<!--Value of the test-run failed property (@)-->
							<xsl:value-of select="test-run/@failed"/>
						</w:t>
					</w:r>
					<w:r w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="ED7D31" w:themeColor="accent2"/>
						</w:rPr>
						<w:br/>
					</w:r>
					<w:r w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="FFC000" w:themeColor="accent4"/>
						</w:rPr>
						<w:t xml:space="preserve">Inconclusive Tests: </w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE" w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="FFC000" w:themeColor="accent4"/>
						</w:rPr>
						<w:t>							
							<!--Value of the test-run inconclusive property (@)-->
							<xsl:value-of select="test-run/@inconclusive"/>
						</w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE" w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="FFC000" w:themeColor="accent4"/>
						</w:rPr>
						<w:t xml:space="preserve"> </w:t>
					</w:r>
					<w:r w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="FFC000" w:themeColor="accent4"/>
						</w:rPr>
						<w:br/>
					</w:r>
					<w:r w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="44546A" w:themeColor="text2"/>
						</w:rPr>
						<w:t xml:space="preserve">Skipped Tests: </w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE" w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="44546A" w:themeColor="text2"/>
						</w:rPr>
						<w:t>
							<!--Value of the test-run skipped property (@)-->
							<xsl:value-of select="test-run/@skipped"/>
						</w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE" w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="44546A" w:themeColor="text2"/>
						</w:rPr>
						<w:t xml:space="preserve"> </w:t>
					</w:r>
					<w:r w:rsidRPr="001747BA">
						<w:rPr>
							<w:color w:val="44546A" w:themeColor="text2"/>
						</w:rPr>
						<w:br/>
					</w:r>
				</w:p>
				<w:p w:rsidR="00304643" w:rsidRDefault="00304643" w:rsidP="002C1778">
					<w:pPr>
						<w:pStyle w:val="Heading2"/>
					</w:pPr>
					<w:r>
						<w:t>Start Time:</w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE">
						<w:t xml:space="preserve"> </w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE">
						<w:t>
							<!--Value of the test-run start-time property (@)-->
							<xsl:value-of select="test-run/@start-time"/>
						</w:t>
					</w:r>
				</w:p>
				<w:p w:rsidR="00304643" w:rsidRDefault="00304643" w:rsidP="002C1778">
					<w:pPr>
						<w:pStyle w:val="Heading2"/>
					</w:pPr>
					<w:r>
						<w:t>End Time:</w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE">
						<w:t xml:space="preserve"> </w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE">
						<w:t>
							<!--Value of the test-run end-time property (@)-->
							<xsl:value-of select="test-run/@end-time"/>
						</w:t>
					</w:r>
				</w:p>
`				<w:p w:rsidR="00304643" w:rsidRDefault="00304643" w:rsidP="002C1778">
					<w:pPr>
						<w:pStyle w:val="Heading2"/>
					</w:pPr>
					<w:r>
						<w:t xml:space="preserve">Total Run Time: </w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE">
						<xsl:if test="test-run/@duration &gt; 1000">
							<w:rPr>
								<w:color w:val="FF0000"/>
							</w:rPr>
						</xsl:if>
						<w:t>
							<!--Value of the test-run duration property (@)-->
							<xsl:value-of select="test-run/@duration"/>
						</w:t>
					</w:r>
				</w:p>
				<w:p w:rsidR="00D97CBE" w:rsidRDefault="00D97CBE" w:rsidP="002C1778">
					<w:pPr>
						<w:pStyle w:val="Heading2"/>
					</w:pPr>
				</w:p>
				<w:p w:rsidR="00304643" w:rsidRDefault="00304643" w:rsidP="00D97CBE">
					<w:pPr>
						<w:pStyle w:val="Heading1"/>
					</w:pPr>
					<w:r>
						<w:t>Tests Run:</w:t>
					</w:r>
					<w:r w:rsidR="00D97CBE">
						<w:t xml:space="preserve"> </w:t>
					</w:r>
					<w:bookmarkStart w:id="0" w:name="_GoBack"/>
					<w:bookmarkEnd w:id="0"/>
				</w:p>
				<!--<xsl:template match="test-run/filter/or">-->
				<xsl:for-each select="test-run/filter/or/test">
					<w:p w:rsidR="00304643" w:rsidRDefault="00D97CBE" w:rsidP="00304643">
						<w:r>
							<w:t>
								<!--For Each test in the lisst, add the value of test name-->
								<xsl:value-of select="node()"/>
							</w:t>
						</w:r>
					</w:p>
				</xsl:for-each>
				<!--</xsl:template>-->
				<w:p w:rsidR="002C1778" w:rsidRDefault="002C1778" w:rsidP="002C1778">
					<w:pPr>
						<w:pStyle w:val="Heading1"/>
					</w:pPr>
					<w:r>
						<w:t>Failing Tests</w:t>
					</w:r>
				</w:p>
				<!--For each test-run/test-suite/test-suite/test-case-->
				<xsl:for-each select="test-run/test-suite/test-suite/test-suite/test-suite/test-case">
					<!--if property @result is not Passed, then add section below-->				
					<xsl:if test="@result!='Passed'">
						<w:p w:rsidR="002C1778" w:rsidRDefault="002C1778" w:rsidP="00304643"/>
						<w:p w:rsidR="00304643" w:rsidRDefault="00304643" w:rsidP="00304643">
							<w:r>
								<w:t xml:space="preserve">Test Case: </w:t>
							</w:r>
							<w:r w:rsidR="002C1778">
								<w:t>
									<xsl:value-of select="@name" />
								</w:t>
							</w:r>
						</w:p>
						<w:p w:rsidR="00304643" w:rsidRDefault="00304643" w:rsidP="00304643">
							<w:r>
								<w:t xml:space="preserve">Duration: </w:t>
							</w:r>
							<w:r w:rsidR="002C1778">
								<w:t>
									<xsl:value-of select="@duration" />
								</w:t>
							</w:r>
						</w:p>
						<w:p w:rsidR="00304643" w:rsidRDefault="00304643" w:rsidP="00304643">
							<w:r>
								<w:t xml:space="preserve">Failure Message: </w:t>
							</w:r>
							<w:r w:rsidR="002C1778">
								<w:t>
									<xsl:value-of select="failure/message" />
								</w:t>
							</w:r>
						</w:p>
						<w:p w:rsidR="00304643" w:rsidRDefault="00304643" w:rsidP="00304643">
							<w:pPr>
								<w:pBdr>
									<w:bottom w:val="dotted" w:sz="24" w:space="1" w:color="auto"/>
								</w:pBdr>
							</w:pPr>
							<w:r>
								<w:t xml:space="preserve">Stack Trace: </w:t>
							</w:r>
							<w:r w:rsidR="002C1778">
								<w:t>
									<xsl:value-of select="failure/stack-trace" />
								</w:t>
							</w:r>
						</w:p>
					</xsl:if>
				</xsl:for-each>
				<w:sectPr w:rsidR="002C1778">
					<w:pgSz w:w="12240" w:h="15840"/>
					<w:pgMar w:top="1440" w:right="1440" w:bottom="1440" w:left="1440" w:header="720" w:footer="720" w:gutter="0"/>
					<w:cols w:space="720"/>
					<w:docGrid w:linePitch="360"/>
				</w:sectPr>
			</w:body>
		</w:document>
	</xsl:template>
</xsl:stylesheet>