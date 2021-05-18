<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCourseInfo.aspx.cs" Inherits="Admin_AddCourseInfo" %>

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
          <TD class=manageHead>当前位置：添加课程信息 </TD></TR>
        <TR>
          <TD align="center" style="height: 2px">
              <table id="Table1" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
                  <tr>
                      <td style="width: 117px; height: 29px;">
                          <font face="宋体">学院名称：</font></td>
                      <td align="left" style="width: 245px; height: 29px;">
                          <asp:DropDownList ID="DropDownList1" runat="server" Width="132px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                          </asp:DropDownList></td>
                      <td style="height: 29px; width: 142px;">
                          课程名称：</td>
                      <td align="left" style="height: 29px">
                          <asp:TextBox ID="TextBox2" runat="server" Width="155px"></asp:TextBox></td>
                  </tr>
                  <tr style="color: #000000">
                      <td style="width: 117px">
                          专业：</td>
                      <td align="left" style="width: 245px">
                          <asp:DropDownList ID="DropDownList2" runat="server" Width="166px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                          </asp:DropDownList></td>
                      <td style="width: 142px">
                          授课教师：</td>
                      <td align="left"><asp:DropDownList ID="DropDownList3" runat="server" Width="133px">
                      </asp:DropDownList></td>
                  </tr>
                  <tr style="color: #000000">
                      <td style="width: 117px">
                          班级：</td>
                      <td align="left" style="width: 245px"><asp:DropDownList ID="DropDownList4" runat="server" Width="166px">
                      </asp:DropDownList></td>
                      <td style="width: 142px">
                          可容纳人数：</td>
                      <td align="left">
                          <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr style="color: #000000">
                      <td style="width: 117px">
                          课时：</td>
                      <td align="left" style="width: 245px">
                          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                      <td style="width: 142px">
                          学分：</td>
                      <td align="left">
                          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td align="center" colspan="4">
                          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /></td>
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
</body>
</html>
