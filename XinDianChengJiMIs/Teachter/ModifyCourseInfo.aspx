<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyCourseInfo.aspx.cs" Inherits="Admin_ModifyCourseInfo" %>

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
          <TD class=manageHead>
              当前位置：安排上课时间地点</TD></TR>
        <TR>
          <TD height=2 align="center">
              <table id="Table1" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
                  <tr>
                      <td style="width: 71px; height: 29px;">
                          <font face="宋体">上课地点：</font></td>
                      <td align="left" style="width: 245px; height: 29px;">
                          <asp:DropDownList ID="DropDownList3" runat="server" Width="132px">
                          </asp:DropDownList></td>
                      <td style="height: 29px">
                          上课时间：</td>
                      <td align="left" style="height: 29px">
                          第<asp:DropDownList ID="DropDownList1" runat="server">
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem Value="2"></asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem>7</asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem Value="9"></asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                              <asp:ListItem>12</asp:ListItem>
                              <asp:ListItem>13</asp:ListItem>
                              <asp:ListItem>14</asp:ListItem>
                              <asp:ListItem>15</asp:ListItem>
                              <asp:ListItem>16</asp:ListItem>
                              <asp:ListItem>17</asp:ListItem>
                              <asp:ListItem>18</asp:ListItem>
                              <asp:ListItem>19</asp:ListItem>
                              <asp:ListItem>20</asp:ListItem>
                          </asp:DropDownList>周&nbsp; 第<asp:DropDownList ID="DropDownList2" runat="server">
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem Value="2"></asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                          </asp:DropDownList>节</td>
                  </tr>
                  <tr>
                      <td align="center" colspan="4">
                          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
                          <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label></td>
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
        +
</FORM>
</body>
</html>
