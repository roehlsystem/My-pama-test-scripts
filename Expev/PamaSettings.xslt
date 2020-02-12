<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:template match="/">
        <html>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <head>
                <title>Pama Settings</title>
            </head>
            <body title="Pama Settings">
                <table align="right" bgcolor="silver" border="0" cellspacing="1" width="90%">
                    <tbody>
                        <tr>
                            <td align="center" height="38">
                                <h1>
                                    <h1>
                                        <span style="font-family:Arial; font-size:large; font-weight:bold; ">Pama Settings</span>
                                    </h1>
                                </h1>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:for-each select="PamaSettings">
                                    <br />
                                    <table border="0" cellpadding="0" cellspacing="0" width="90%">
                                        <tbody>
                                            <tr>
                                                <td width="96">
                                                    <span style="font-family:Arial; font-size:smaller; font-style:normal; ">Pama System: </span>
                                                </td>
                                                <td>
                                                    <xsl:for-each select="@System_Name">
                                                        <span style="font-family:Arial; font-size:smaller; font-style:normal; font-weight:bold; ">
                                                            <xsl:value-of select="." />
                                                        </span>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="96">
                                                    <span style="font-family:Arial; font-size:smaller; font-style:normal; ">Recorded on: </span>
                                                </td>
                                                <td>
                                                    <xsl:for-each select="@Date_Recorded">
                                                        <span style="font-family:Arial; font-size:smaller; font-style:normal; font-weight:bold; "></span>
                                                        <span style="font-family:Arial; font-size:smaller; font-style:normal; font-weight:bold; ">
                                                            <xsl:value-of select="." />
                                                        </span>
                                                        <span style="font-family:Arial; font-size:smaller; font-style:normal; font-weight:bold; "> UTZ</span>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="96">
                                                    <span style="font-family:Arial; font-size:smaller; font-style:normal; ">Pama Version:</span>
                                                </td>
                                                <td>
                                                    <xsl:for-each select="@Version">
                                                        <span style="font-family:Arial; font-size:smaller; font-style:normal; ">&#160;</span>
                                                        <span style="font-family:Arial; font-size:smaller; font-style:normal; font-weight:bold; ">
                                                            <xsl:value-of select="." />
                                                        </span>
                                                    </xsl:for-each>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </xsl:for-each>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#5E9E9E">
                                <span style="color:white; font-family:Arial; font-size:medium; font-weight:bold; ">Channel Properties:</span>
                                <br />
                                <xsl:for-each select="PamaSettings">
                                    <xsl:for-each select="Channel_Properties">
                                        <xsl:for-each select="Channel">
                                            <br />
                                            <table bgcolor="#5E9E9E" border="1" cellpadding="0" cellspacing="0" width="90%">
                                                <tbody>
                                                    <tr>
                                                        <td align="center" bgcolor="#72B2B2" colspan="2">
                                                            <span style="font-family:Arial; font-size:small; font-weight:bold; ">Name: </span>
                                                            <xsl:for-each select="@Name">
                                                                <span style="font-family:Arial; font-size:small; font-weight:bold; ">
                                                                    <xsl:value-of select="." />
                                                                </span>
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <xsl:for-each select="Setting">
                                                                <xsl:if test="@Visible  != &apos;false&apos; or not(  @Visible  )">
                                                                    <table border="0" cellpadding="0" cellspacing="1" width="100%">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td align="right" bgcolor="#72B2B2">
                                                                                    <xsl:for-each select="@Name">
                                                                                        <span style="font-family:Arial; font-size:smaller; text-transform:lowercase; ">
                                                                                            <xsl:value-of select="." />
                                                                                        </span>
                                                                                    </xsl:for-each>&#160;</td>
                                                                                <td bgcolor="#86C6C6" width="75%"> = <span style="font-family:Arial; font-size:smaller; ">
                                                                                        <xsl:apply-templates />
                                                                                    </span>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </xsl:if>
                                                            </xsl:for-each>
                                                            <br />
                                                            <xsl:for-each select="Group">
                                                                <table bgcolor="#72B2B2" border="0" cellpadding="0" cellspacing="1" width="100%">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td align="right">
                                                                                <xsl:for-each select="@Type">
                                                                                    <span style="font-family:Arial; font-size:small; font-weight:bold; ">
                                                                                        <xsl:value-of select="." />
                                                                                    </span>
                                                                                </xsl:for-each>&#160;</td>
                                                                            <td bgcolor="#86C6C6" width="75%">
                                                                                <xsl:if test="Identifier/@Visible  != &apos;false&apos; or not(  Identifier/@Visible  )">
                                                                                    <span style="font-family:Arial; font-size:smaller; font-weight:normal; ">Name: </span>
                                                                                    <xsl:for-each select="Identifier">
                                                                                        <span style="font-family:Arial; font-weight:bold; ">
                                                                                            <span style="font-family:Arial; font-size:smaller; font-style:normal; font-variant:normal; font-weight:bold; ">
                                                                                                <xsl:apply-templates />
                                                                                            </span>
                                                                                        </span>
                                                                                    </xsl:for-each>
                                                                                </xsl:if>
                                                                                <br />
                                                                                <br />
                                                                                <xsl:if test="Setting">
                                                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td />
                                                                                                <td width="30%">
                                                                                                    <span style="font-family:Arial; font-size:smaller; text-decoration:underline; ">Setting Name</span>
                                                                                                </td>
                                                                                                <td width="65%">
                                                                                                    <span style="font-family:Arial; font-size:smaller; text-decoration:underline; ">Value</span>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="3">
                                                                                                    <xsl:for-each select="Setting">
                                                                                                        <xsl:if test="@Visible  != &apos;false&apos; or not(  @Visible  )">
                                                                                                            <table border="0" cellpadding="0" cellspacing="1" width="100%">
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td width="5%" />
                                                                                                                        <td width="25%">
                                                                                                                            <xsl:for-each select="@Name">
                                                                                                                                <span style="font-family:Arial; font-size:xx-small; ">
                                                                                                                                    <xsl:value-of select="." />
                                                                                                                                </span>
                                                                                                                            </xsl:for-each>
                                                                                                                        </td>
                                                                                                                        <td bgcolor="#86C6C6" width="5%"> = <span style="font-family:Arial; font-size:smaller; font-style:normal; font-weight:bold; "></span>
                                                                                                                        </td>
                                                                                                                        <td bgcolor="#86C6C6" width="65%">
                                                                                                                            <span style="font-family:Arial; font-size:smaller; font-style:normal; font-weight:bold; ">
                                                                                                                                <xsl:apply-templates />
                                                                                                                            </span>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </xsl:if>
                                                                                                    </xsl:for-each>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </xsl:if>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </xsl:for-each>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#97B5D6">
                                <span style="color:white; font-family:Arial; font-size:medium; font-weight:bold; ">I/O Setup:</span>
                                <br />
                                <xsl:for-each select="PamaSettings">
                                    <xsl:for-each select="IO_Setup">
                                        <xsl:for-each select="Point">
                                            <br />
                                            <table bgcolor="#A8C6E8" border="1" cellpadding="0" cellspacing="0" width="90%">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <center>
                                                                <span style="font-family:Arial; font-size:smaller; ">Name:</span>
                                                                <br />
                                                                <xsl:for-each select="@Name">
                                                                    <span style="font-family:Arial Narrow; font-size:x-small; font-weight:bold; ">
                                                                        <xsl:value-of select="." />
                                                                    </span>
                                                                </xsl:for-each>
                                                            </center>
                                                        </td>
                                                        <td bgcolor="#B9D7FA" width="75%">
                                                            <xsl:if test="Setting">
                                                                <xsl:for-each select="Setting">
                                                                    <xsl:if test="@Visible  != &apos;false&apos; or not(  @Visible  )">
                                                                        <table border="0" cellpadding="0" cellspacing="1" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="left" width="5%">&#160;</td>
                                                                                    <td align="left">
                                                                                        <xsl:for-each select="@Name">
                                                                                            <span style="font-family:Arial; font-size:smaller; text-transform:lowercase; ">
                                                                                                <xsl:value-of select="." />
                                                                                            </span>
                                                                                        </xsl:for-each>
                                                                                    </td>
                                                                                    <td width="75%"> = <span style="font-family:Arial; font-size:smaller; ">
                                                                                            <xsl:apply-templates />
                                                                                        </span>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                </xsl:for-each>
                                                            </xsl:if>
                                                            <br />
                                                            <xsl:if test="Group">
                                                                <xsl:for-each select="Group">
                                                                    <xsl:if test="Setting">
                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="center" />
                                                                                    <td align="left" colspan="2">
                                                                                        <xsl:if test="Identifier/@Visible   != &apos;false&apos; or not(  Identifier/@Visible   )">
                                                                                            <span style="font-family:Arial; font-size:smaller; font-weight:normal; ">I/O Type: </span>
                                                                                            <xsl:for-each select="Identifier">
                                                                                                <span style="font-weight:bold; ">
                                                                                                    <xsl:apply-templates />
                                                                                                </span>
                                                                                            </xsl:for-each>
                                                                                        </xsl:if>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td />
                                                                                    <td width="30%">
                                                                                        <span style="font-family:Arial; font-size:smaller; text-decoration:underline; ">Setting Name</span>
                                                                                    </td>
                                                                                    <td width="65%">
                                                                                        <span style="font-family:Arial; font-size:smaller; text-decoration:underline; ">Value</span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="3">
                                                                                        <xsl:if test="Setting">
                                                                                            <xsl:for-each select="Setting">
                                                                                                <xsl:if test="@Visible  != &apos;false&apos; or not(  @Visible  )">
                                                                                                    <table border="0" cellpadding="0" cellspacing="1" width="100%">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td width="5%" />
                                                                                                                <td width="25%">
                                                                                                                    <xsl:for-each select="@Name">
                                                                                                                        <span style="font-family:Arial; font-size:xx-small; ">
                                                                                                                            <xsl:value-of select="." />
                                                                                                                        </span>
                                                                                                                    </xsl:for-each>
                                                                                                                </td>
                                                                                                                <td width="5%"> = <span style="font-family:Arial; font-size:smaller; font-style:normal; font-weight:bold; "></span>
                                                                                                                </td>
                                                                                                                <td width="65%">
                                                                                                                    <span style="font-family:Arial; font-size:smaller; font-style:normal; font-weight:bold; ">
                                                                                                                        <xsl:apply-templates />
                                                                                                                    </span>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </xsl:if>
                                                                                            </xsl:for-each>
                                                                                        </xsl:if>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                </xsl:for-each>
                                                            </xsl:if>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </xsl:for-each>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#5E9E9E">
                                <span style="color:white; font-family:Arial; font-size:medium; font-weight:bold; ">Registry Settings:</span>
                                <br />
                                <xsl:for-each select="PamaSettings">
                                    <xsl:for-each select="Registry">
                                        <xsl:if test="Group">
                                            <xsl:for-each select="Group">
                                                <xsl:if test="@Type">
                                                    <br />
                                                    <table bgcolor="#72B2B2" border="1" cellpadding="0" cellspacing="0" width="90%">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <xsl:if test="Setting">
                                                                        <table bgcolor="#72B2B2" border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="center" />
                                                                                    <td align="left" colspan="2">
                                                                                        <span style="font-family:Arial; font-size:smaller; font-weight:normal; ">Registry Group: </span>
                                                                                        <xsl:for-each select="@Type">
                                                                                            <span style="font-family:Arial; font-weight:bold; ">
                                                                                                <xsl:value-of select="." />
                                                                                            </span>
                                                                                        </xsl:for-each>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td />
                                                                                    <td width="30%">
                                                                                        <span style="font-family:Arial; font-size:smaller; text-decoration:underline; ">Setting Name</span>
                                                                                    </td>
                                                                                    <td width="65%">
                                                                                        <span style="font-family:Arial; font-size:smaller; text-decoration:underline; ">Value</span>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="3">
                                                                                        <xsl:for-each select="Setting">
                                                                                            <xsl:if test="@Visible  != &apos;false&apos; or not(  @Visible  )">
                                                                                                <table border="0" cellpadding="0" cellspacing="1" width="100%">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td width="5%" />
                                                                                                            <td width="25%">
                                                                                                                <xsl:for-each select="@Name">
                                                                                                                    <span style="font-family:Arial; font-size:xx-small; ">
                                                                                                                        <xsl:value-of select="." />
                                                                                                                    </span>
                                                                                                                </xsl:for-each>
                                                                                                            </td>
                                                                                                            <td width="5%">
                                                                                                                <span style="font-family:Arial; "> = </span>
                                                                                                                <span style="font-family:Arial; font-size:smaller; font-style:normal; font-weight:bold; "></span>
                                                                                                            </td>
                                                                                                            <td bgcolor="#86C6C6" width="65%">
                                                                                                                <span style="font-family:Arial; font-size:smaller; font-style:normal; font-weight:bold; ">
                                                                                                                    <xsl:apply-templates />
                                                                                                                </span>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </xsl:if>
                                                                                        </xsl:for-each>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </xsl:if>
                                    </xsl:for-each>
                                </xsl:for-each>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#97B5D6">
                                <span style="color:white; font-family:Arial; font-size:medium; font-weight:bold; ">Registered Users:</span>
                                <br />
                                <br />
                                <table border="1" cellpadding="0" cellspacing="0" width="90%">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <xsl:for-each select="PamaSettings">
                                                    <xsl:for-each select="Users">
                                                        <xsl:if test="Pama_User">
                                                            <xsl:for-each select="Pama_User">
                                                                <xsl:if test="@Name">
                                                                    <br />
                                                                    <table bgcolor="#A8C6E8" border="0" cellpadding="0" cellspacing="1" width="90%">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                    <center>
                                                                                        <span style="font-family:Arial; font-size:smaller; ">Name:</span>
                                                                                        <br />
                                                                                        <xsl:for-each select="@Name">
                                                                                            <span style="font-family:Arial; font-size:smaller; font-weight:bold; ">
                                                                                                <xsl:value-of select="." />
                                                                                            </span>
                                                                                        </xsl:for-each>
                                                                                    </center>
                                                                                </td>
                                                                                <td bgcolor="#B9D7FA" width="75%">
                                                                                    <xsl:if test="Setting">
                                                                                        <xsl:for-each select="Setting">
                                                                                            <xsl:if test="@Visible  != &apos;false&apos; or not(  @Visible  )">
                                                                                                <table border="0" cellpadding="0" cellspacing="1" width="100%">
                                                                                                    <tbody>
                                                                                                        <tr>
                                                                                                            <td align="right" colspan="2" width="20%">
                                                                                                                <span style="font-family:Arial; ">&#160;</span>
                                                                                                                <xsl:for-each select="@Name">
                                                                                                                    <span style="font-family:Arial; font-size:smaller; text-transform:lowercase; ">
                                                                                                                        <xsl:value-of select="." />
                                                                                                                    </span>
                                                                                                                </xsl:for-each>
                                                                                                            </td>
                                                                                                            <td width="80%">
                                                                                                                <span style="font-family:Arial; "> = </span>
                                                                                                                <span style="font-family:Arial; font-size:smaller; ">
                                                                                                                    <xsl:apply-templates />
                                                                                                                </span>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </xsl:if>
                                                                                        </xsl:for-each>
                                                                                    </xsl:if>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </xsl:if>
                                                            </xsl:for-each>
                                                        </xsl:if>
                                                    </xsl:for-each>
                                                </xsl:for-each>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td />
                        </tr>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
