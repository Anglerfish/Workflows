<%@ Page language="C#" MasterPageFile="~masterurl/default.master" title="New Page 1" inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %><asp:content id="content2" runat="server" contentplaceholderid="PlaceHolderMain"><WebPartPages:DataFormWebPart runat="server" IsIncluded="True" FrameType="None" NoDefaultStyle="TRUE" ViewFlag="0" Title="" __markuptype="vsattributemarkup" __WebPartId="{22C24B68-D294-40A7-B819-6655EFB6E906}" id="InitiationForm" pagesize="1">
	<DataSources>
		<SharePoint:SPWorkflowDataSource BaseTemplateID="{18DBFFCB-41C8-4971-B7CB-A69004B4D938}" ListID="{8202749A-817F-44D1-ADC2-DC86ED112154}" runat="server" id="SPWorkflowDataSource2"><SelectParameters><WebPartPages:DataFormParameter Name="AssociatedTemplateID" ParameterKey="AssociatedTemplateID" PropertyName="ParameterValues"/></SelectParameters><InsertParameters><WebPartPages:DataFormParameter Name="ItemID" ParameterKey="ItemID" PropertyName="ParameterValues"/><WebPartPages:DataFormParameter Name="AssociatedTemplateID" ParameterKey="AssociatedTemplateID" PropertyName="ParameterValues"/></InsertParameters></SharePoint:SPWorkflowDataSource>
	</DataSources>
	<ParameterBindings><ParameterBinding Name="dvt_apos" Location="Postback;Connection"/><ParameterBinding Name="UserID" Location="CAMLVariable" DefaultValue="CurrentUserName"/><ParameterBinding Name="Today" Location="CAMLVariable" DefaultValue="CurrentDate"/><ParameterBinding Name="dvt_firstrow" Location="Postback;Connection"/><ParameterBinding Name="dvt_nextpagedata" Location="Postback;Connection"/><ParameterBinding Name="AssociatedTemplateID" Location="QueryString(TemplateID)" DefaultValue=""/><ParameterBinding Name="ItemID" Location="QueryString(ID)" DefaultValue=""/><ParameterBinding Name="Id" Location="QueryString(ID)" DefaultValue="0"/><ParameterBinding Name="ListName" Location="QueryString(List)" DefaultValue=""/></ParameterBindings>
	<datafields>@ID,ID;</datafields>
	<XSL>
<xsl:stylesheet xmlns:x="http://www.w3.org/2001/XMLSchema" xmlns:dsp="http://schemas.microsoft.com/sharepoint/dsp" version="1.0" exclude-result-prefixes="xsl msxsl ddwrt" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:__designer="http://schemas.microsoft.com/WebParts/v2/DataView/designer" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:SharePoint="Microsoft.SharePoint.WebControls">
	<xsl:output method="html" indent="no"/>
	<xsl:decimal-format NaN=""/>
	<xsl:param name="dvt_apos">'</xsl:param>
	<xsl:param name="dvt_firstrow">1</xsl:param>
	<xsl:param name="dvt_nextpagedata" />
	<xsl:param name="AssociatedTemplateID" />
	<xsl:param name="ItemID" />
	<xsl:param name="Id">0</xsl:param>
	<xsl:param name="ListName" />
	<xsl:variable name="dvt_1_automode">0</xsl:variable>
	
	<xsl:template match="/">
		<xsl:call-template name="dvt_1"/>
	</xsl:template>
	<xsl:template name="dvt_1">
		<xsl:variable name="dvt_StyleName">RepForm3</xsl:variable>
		<xsl:variable name="Rows" select="/dsQueryResponse/NewDataSet/Row"/>
		<xsl:variable name="dvt_RowCount" select="count($Rows)" />
		<xsl:variable name="RowLimit" select="1" />
		<xsl:variable name="FirstRow" select="$dvt_firstrow" />
		<xsl:variable name="LastRow">
			<xsl:choose>
				<xsl:when test="($FirstRow + $RowLimit - 1) &gt; $dvt_RowCount"><xsl:value-of select="$dvt_RowCount" /></xsl:when>
				<xsl:otherwise><xsl:value-of select="$FirstRow + $RowLimit - 1" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="IsEmpty" select="$dvt_RowCount = 0" />
		<xsl:call-template name="dvt_1.header">
			<xsl:with-param name="Rows" select="$Rows" />
		</xsl:call-template>
		<table border="0" width="100%">
			<xsl:call-template name="dvt_1.body">
				<xsl:with-param name="Rows" select="$Rows[position() &gt;= $FirstRow and position() &lt;= $LastRow]"/>
				<xsl:with-param name="FirstRow" select="1" />
				<xsl:with-param name="LastRow" select="$dvt_RowCount" />
			</xsl:call-template>
		</table>
		<xsl:call-template name="dvt_1.commandfooter">
			<xsl:with-param name="FirstRow" select="$FirstRow" />
			<xsl:with-param name="LastRow" select="$LastRow" />
			<xsl:with-param name="RowLimit" select="$RowLimit" />
			<xsl:with-param name="dvt_RowCount" select="$dvt_RowCount" />
			<xsl:with-param name="RealLastRow" select="number(ddwrt:NameChanged('',-100))" />
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="dvt_1.body">
		<xsl:param name="Rows"/>
		<xsl:param name="FirstRow" />
		<xsl:param name="LastRow" />
		<xsl:for-each select="$Rows">
			<xsl:variable name="dvt_KeepItemsTogether" select="false()" />
			<xsl:variable name="dvt_HideGroupDetail" select="false()" />
			<xsl:if test="(position() &gt;= $FirstRow and position() &lt;= $LastRow) or $dvt_KeepItemsTogether">
				<xsl:if test="not($dvt_HideGroupDetail)" ddwrt:cf_ignore="1">
					<xsl:call-template name="dvt_1.rowedit" />
				</xsl:if>
			</xsl:if>
		</xsl:for-each>
		
	</xsl:template>
	<xsl:template name="dvt_1.rowedit">
		<tr>
			<td>
				<table border="0" cellspacing="0" width="100%"><tr><td colspan="2" class="ms-pagetitle">SMT-Top Update</td></tr><tr><td colspan="2" class="ms-formbody">To initiate SMT-Top Update, click Start.</td></tr></table>
			</td>
		</tr>
	</xsl:template>
	<xsl:template name="dvt_1.commandfooter">
		<xsl:param name="FirstRow" />
		<xsl:param name="LastRow" />
		<xsl:param name="RowLimit" />
		<xsl:param name="dvt_RowCount" />
		<xsl:param name="RealLastRow" />
		<table cellspacing="0" cellpadding="4" border="0" width="100%">
			<tr>
				<xsl:call-template name="dvt_1.formactions" />
				<xsl:if test="$FirstRow &gt; 1 or $LastRow &lt; $dvt_RowCount">
					<xsl:call-template name="dvt_1.navigation">
						<xsl:with-param name="FirstRow" select="$FirstRow" />
						<xsl:with-param name="LastRow" select="$LastRow" />
						<xsl:with-param name="RowLimit" select="$RowLimit" />
						<xsl:with-param name="dvt_RowCount" select="$dvt_RowCount" />
						<xsl:with-param name="RealLastRow" select="$RealLastRow" />
					</xsl:call-template>
				</xsl:if>
			</tr>
		</table>
	</xsl:template>
	<xsl:template name="dvt_1.navigation">
		<xsl:param name="FirstRow" />
		<xsl:param name="LastRow" />
		<xsl:param name="RowLimit" />
		<xsl:param name="dvt_RowCount" />
		<xsl:param name="RealLastRow" />
		<xsl:variable name="PrevRow">
			<xsl:choose>
				<xsl:when test="$FirstRow - $RowLimit &lt; 1">1</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$FirstRow - $RowLimit" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="LastRowValue">
			<xsl:choose>
				<xsl:when test="$LastRow &gt; $RealLastRow">
					<xsl:value-of select="$LastRow"></xsl:value-of>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$RealLastRow"></xsl:value-of>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="NextRow">
			<xsl:value-of select="$LastRowValue + 1"></xsl:value-of>
		</xsl:variable>
		<td nowrap="nowrap" class="ms-paging" align="right">
			<xsl:if test="$dvt_firstrow &gt; 1" ddwrt:cf_ignore="1">
				<a>
				<xsl:attribute name="href">javascript: <xsl:value-of select="ddwrt:GenFireServerEvent('dvt_firstrow={1}')" />;</xsl:attribute>
				Start</a>
				<xsl:text disable-output-escaping="yes" ddwrt:nbsp-preserve="yes">&amp;nbsp;</xsl:text>
				<a>
				<xsl:attribute name="href">javascript: <xsl:value-of select="ddwrt:GenFireServerEvent(concat('dvt_firstrow={',$PrevRow,'}'))" />;</xsl:attribute>
				<img src="/_layouts/images/prev.gif" border="0" alt="Previous" />
				</a>
				<xsl:text disable-output-escaping="yes" ddwrt:nbsp-preserve="yes">&amp;nbsp;</xsl:text>
			</xsl:if>
			<xsl:value-of select="$FirstRow" />
			 - <xsl:value-of select="$LastRowValue" />
			<xsl:text disable-output-escaping="yes" ddwrt:nbsp-preserve="yes">&amp;nbsp;</xsl:text>
			<xsl:if test="$LastRowValue &lt; $dvt_RowCount or string-length($dvt_nextpagedata)!=0" ddwrt:cf_ignore="1">
				<a>
				<xsl:attribute name="href">javascript: <xsl:value-of select="ddwrt:GenFireServerEvent(concat('dvt_firstrow={',$NextRow,'}'))" />;</xsl:attribute>
				<img src="/_layouts/images/next.gif" border="0" alt="Next" />
				</a>
			</xsl:if>
		</td>
	</xsl:template>
	<xsl:template name="dvt_1.formactions">
		<td nowrap="nowrap" class="ms-vb">
			<input type="button" value="Start" name="btnSave" onclick="javascript: {ddwrt:GenFireServerEvent(concat('__insert;__commit;__redirectsource;__redirectToList={',ddwrt:EcmaScriptEncode($ListName),'};'))}" />
		</td>
		<td nowrap="nowrap" class="ms-vb" width="99%">
			<input type="button" value="Cancel" name="btnCancel" onclick="javascript: {ddwrt:GenFireServerEvent(concat('__cancel;__redirectsource;__redirectToList={',ddwrt:EcmaScriptEncode($ListName),'};'))}" />
		</td></xsl:template>
	<xsl:template name="dvt_1.header">
		<xsl:param name="Rows" />
		<table cellSpacing="0" cellPadding="4" border="0" width="100%">
			<tr>
				<td class="ms-vb">
					<xsl:text disable-output-escaping="yes" ddwrt:nbsp-preserve="yes">&amp;nbsp;</xsl:text>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>	</XSL>
</WebPartPages:DataFormWebPart></asp:content>
