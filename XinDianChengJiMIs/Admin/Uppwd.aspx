<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Uppwd.aspx.cs" Inherits="admin_Uppwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>信电学院成绩信息管理系统</title>
    <LINK href="assets/common.css"type=text/css rel=stylesheet> 
</head>
<body>
    <FORM id=form1   runat=server>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="images/new_019.jpg" border=0></TD>
    <TD width="100%" background=images/new_020.jpg height=20></TD>
    <TD width=15><IMG src="images/new_021.jpg" 
  border=0></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15 background=images/new_022.jpg style="height: 61px"><IMG 
      src="images/new_022.jpg" border=0> </TD>
    <TD vAlign=top width="100%" bgColor=#ffffff style="height: 61px">
      <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
        <TR>
          <TD class=manageHead>当前位置：修改登录密码 </TD></TR>
        <TR>
          <TD height=2 align="left">
              <table id="Table1" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
                  <tr>
                      <td style="width: 71px">
                          <font face="宋体">原密码：</font></td>
                      <td style="width: 245px">
                          <asp:TextBox ID="txtpwd1" runat="server" TextMode="Password"></asp:TextBox></td>
                      <td>
                          <font face="宋体"><font face="宋体">新密码：</font></font></td>
                      <td>
                          <asp:TextBox ID="txtpwd2" runat="server"  onblur="jiance()" TextMode="Password" Width="138px"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td align="center" colspan="4">
                          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" />
                          <asp:Label ID="LabelWarningMessage" runat="server" ForeColor="Red"></asp:Label></td>
                  </tr>
              </table>
          </TD></TR></TABLE>
      </TD>
    <TD width=15 background=images/new_023.jpg style="height: 61px"><IMG 
      src="images/new_023.jpg" border=0> </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="images/new_024.jpg" border=0></TD>
    <TD align=middle width="100%" background=images/new_025.jpg 
    height=15></TD>
    <TD width=15><IMG src="images/new_026.jpg" 
  border=0></TD></TR></TBODY></TABLE>
</FORM>
<script language="javascript" >
    function jiance() {
        var mima = document.getElementById("txtpwd2");
        var n = mima.value;
        if (n.length < 6) {
            mima.focus();
            alert("密码最少6位");
        }
    }
</script>
</body>
</html>
